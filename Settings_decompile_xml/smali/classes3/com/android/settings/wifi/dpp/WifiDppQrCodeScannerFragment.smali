.class public Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppQrCodeScannerFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;,
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;
    }
.end annotation


# instance fields
.field private mCamera:Lcom/android/settingslib/qrcode/QrCamera;

.field private mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

.field private mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mErrorMessage:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConfiguratorMode:Z

.field private mLatestStatusCode:I

.field private mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

.field private mSsid:Ljava/lang/String;

.field private mTextureView:Landroid/view/TextureView;

.field private mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

.field private mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$5G0UUnzF2se7beq7R96GuVPPBeE(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->lambda$onCreate$0(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e5O8-iXMcIKKUgqN791ACbo5qTI(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->lambda$onCreate$1(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDecorateView(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/qrcode/QrDecorateView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorMessage(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsConfiguratorMode(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestStatusCode(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanWifiDppSuccessListener(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiQrCode(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/WifiQrCode;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEnrolleeWifiConfiguration(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestStatusCode(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misReachableWifiNetwork(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isReachableWifiNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyUserForQrCodeRecognition(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->notifyUserForQrCodeRecognition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartCamera(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->restartCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->startWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEnrolleeSummary(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 368
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    .line 126
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 387
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    .line 126
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    .line 389
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    .line 390
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method private destroyCamera()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method private handleWifiDpp()V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 570
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private handleZxingWifiFormat()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 577
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 579
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez v0, :cond_1

    .line 590
    new-instance v0, Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settingslib/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    .line 592
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/settingslib/qrcode/QrDecorateView;->setFocused(Z)V

    goto :goto_0

    .line 597
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isReachableWifiNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 252
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 255
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 259
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getSecurityTypeFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 264
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 271
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return v3

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private isWifiDppHandshaking()Z
    .locals 1

    .line 776
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 779
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;-><init>(Landroid/app/Application;)V

    .line 781
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback-IA;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onEnrolleeSuccess(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 1

    .line 321
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 326
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Easy connect enrollee callback onFailure "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance p2, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback-IA;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onFailure(I)V

    return-void
.end method

.method private notifyUserForQrCodeRecognition()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/qrcode/QrDecorateView;->setFocused(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V

    return-void
.end method

.method private restartCamera()V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez v0, :cond_0

    const-string p0, "WifiDppQrCodeScanner"

    const-string v0, "mCamera is not available for restarting camera"

    .line 789
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 793
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->isDecodeTaskAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 802
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 799
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SurfaceTexture is not ready for restarting camera"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private showErrorMessage(I)V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 611
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 610
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 612
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 1

    .line 728
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 731
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;-><init>(Landroid/app/Application;)V

    .line 733
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;)V

    return-void
.end method

.method private updateEnrolleeSummary()V
    .locals 2

    .line 806
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_dpp_connecting:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code_join_unknown_network:I

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 813
    :cond_1
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code_join_network:I

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 815
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method canConnectWifi(Ljava/lang/String;)Z
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 282
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wi-Fi is not allowed to connect by your organization. SSID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget p1, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;
    .locals 1

    .line 522
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 351
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x63b

    return p0

    :cond_0
    const/16 p0, 0x63c

    return p0
.end method

.method public getViewSize()Landroid/util/Size;
    .locals 2

    .line 517
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public handleCameraFailure()V
    .locals 0

    .line 584
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->destroyCamera()V

    return-void
.end method

.method public handleSuccessfulResult(Ljava/lang/String;)V
    .locals 1

    .line 554
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "DPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->handleZxingWifiFormat()V

    goto :goto_0

    .line 556
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->handleWifiDpp()V

    :goto_0
    return-void
.end method

.method protected isDecodeTaskAlive()Z
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/qrcode/QrCamera;->isDecodeTaskAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isFooterAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 533
    :try_start_0
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 541
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz v1, :cond_0

    const-string v1, "WIFI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 542
    sget p1, Lcom/android/settings/R$string;->wifi_dpp_qr_code_is_not_valid_format:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessage(I)V

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 535
    :catch_0
    sget p1, Lcom/android/settings/R$string;->wifi_dpp_qr_code_is_not_valid_format:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessage(I)V

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    .line 395
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 397
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiDppQrCodeScanner{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
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

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 400
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 401
    new-instance v7, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$2;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$2;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Ljava/time/ZoneId;)V

    .line 407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 408
    invoke-static {v4}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 409
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v2

    .line 410
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    new-instance v5, Landroid/os/Handler;

    .line 411
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 412
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x2710

    const/4 v12, 0x0

    .line 410
    invoke-interface/range {v2 .. v12}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 419
    iget-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_dpp_add_device_to_network:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 428
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 430
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 295
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_is_configurator_mode"

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const-string v0, "key_latest_error_code"

    .line 299
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    const-string v0, "key_wifi_configuration"

    .line 300
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 303
    :cond_0
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;-><init>(Landroid/app/Application;)V

    .line 308
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getEnrolleeSuccessNetworkId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 318
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getStatusCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/4 v0, 0x1

    .line 489
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 491
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 444
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    .line 437
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wi-Fi connect onFailure reason - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    sget p1, Lcom/android/settings/R$string;->wifi_dpp_check_connection_try_again:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 452
    sget p0, Lcom/android/settings/R$layout;->wifi_dpp_qrcode_scanner_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    .line 337
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 342
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 344
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->restartCamera()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_is_configurator_mode"

    .line 625
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_latest_error_code"

    .line 626
    iget v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_wifi_configuration"

    .line 627
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 629
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess()V
    .locals 6

    .line 738
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_wifi_configuration"

    .line 739
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 741
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 743
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    if-nez v2, :cond_1

    .line 744
    new-instance v2, Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-direct {v2, v1}, Lcom/android/settingslib/wifi/WifiPermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->canAccessWifiState()Z

    move-result v2

    const-string v3, "187176859"

    const v4, 0x534e4554

    const-string v5, "WifiDppQrCodeScanner"

    if-nez v2, :cond_2

    const-string v0, "Calling package does not have ACCESS_WIFI_STATE permission for result."

    .line 748
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    .line 750
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->getLaunchedPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "no ACCESS_WIFI_STATE permission"

    filled-new-array {v3, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 749
    invoke-static {v4, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 751
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 755
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->canAccessFineLocation()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "Calling package does not have ACCESS_FINE_LOCATION permission for result."

    .line 756
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    .line 758
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->getLaunchedPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "no ACCESS_FINE_LOCATION permission"

    filled-new-array {v3, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 757
    invoke-static {v4, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 760
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const/4 p0, -0x1

    .line 764
    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 765
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 496
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 506
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->destroyCamera()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 458
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 459
    sget p2, Lcom/android/settings/R$id;->sud_layout_subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    .line 461
    sget p2, Lcom/android/settings/R$id;->preview_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    .line 462
    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 464
    sget p2, Lcom/android/settings/R$id;->decorate_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/qrcode/QrDecorateView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    .line 466
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 468
    iget-boolean p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 469
    sget p2, Lcom/android/settings/R$string;->wifi_dpp_add_device_to_network:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    .line 471
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;

    .line 472
    invoke-interface {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p2

    .line 473
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_dpp_center_qr_code:I

    .line 477
    invoke-virtual {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 476
    invoke-virtual {p0, v1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 474
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_1
    sget p2, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    .line 481
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    .line 484
    :goto_0
    sget p2, Lcom/android/settings/R$id;->error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method showErrorMessageAndRestartCamera(I)V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 618
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 617
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 619
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 620
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
