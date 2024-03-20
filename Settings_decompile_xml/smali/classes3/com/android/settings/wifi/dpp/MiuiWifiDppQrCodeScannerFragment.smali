.class public Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;
.super Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;
.source "MiuiWifiDppQrCodeScannerFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/net/wifi/WifiManager$ActionListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;,
        Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;
    }
.end annotation


# static fields
.field private static final OCR_PWD_PATTERN:Ljava/util/regex/Pattern;

.field private static TRACK_SCAN_OCR_WIFI_FORMAT:Ljava/lang/String;

.field private static TRACK_SCAN_WIFI_DPP:Ljava/lang/String;

.field private static TRACK_SCAN_ZXING_WIFI_FORMAT:Ljava/lang/String;


# instance fields
.field private mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

.field private mDecorateView:Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;

.field private mDppQrCodeItem:Landroid/widget/ImageView;

.field private mDppSummary:Landroid/widget/TextView;

.field private mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mErrorMessage:Landroid/widget/TextView;

.field private mFailureRetryTimes:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasSurface:Z

.field private mIsConfiguratorMode:Z

.field private mIsSlave:Z

.field private mLatestStatusCode:I

.field private mMaxSimilarySsid:Ljava/lang/String;

.field private mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

.field private mOcrPossibleWifiPwd:Ljava/lang/String;

.field private mPaused:Z

.field private mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

.field private mSsid:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

.field mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field private mWifiSettingsActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$TYkqYeSlzMaDuO61qp9hSs8g-2Q(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->lambda$onCreate$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bqvD9wsoqrZXavAv5OgczhcgPYM(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->lambda$onCreate$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kHvIbe7NQOXOcdwcP-ko1vOfZcM(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->lambda$restartCamera$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDecorateView(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorMessage(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsConfiguratorMode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestStatusCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxSimilarySsid(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mMaxSimilarySsid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOcrPossibleWifiPwd(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mOcrPossibleWifiPwd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanWifiDppSuccessListener(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiQrCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/WifiQrCode;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEnrolleeWifiConfiguration(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestStatusCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misReachableWifiNetwork(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->isReachableWifiNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyUserForQrCodeRecognition(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->notifyUserForQrCodeRecognition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartCamera(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->restartCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->startWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEnrolleeSummary(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTRACK_SCAN_OCR_WIFI_FORMAT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->TRACK_SCAN_OCR_WIFI_FORMAT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTRACK_SCAN_WIFI_DPP()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->TRACK_SCAN_WIFI_DPP:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTRACK_SCAN_ZXING_WIFI_FORMAT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->TRACK_SCAN_ZXING_WIFI_FORMAT:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\u4e00-\u9fa5]|[(]|[)]"

    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->OCR_PWD_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "scan_wifi_dpp"

    .line 182
    sput-object v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->TRACK_SCAN_WIFI_DPP:Ljava/lang/String;

    const-string/jumbo v0, "scan_zxing_wifi_format"

    .line 183
    sput-object v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->TRACK_SCAN_ZXING_WIFI_FORMAT:Ljava/lang/String;

    const-string/jumbo v0, "scan_ocr_wifi_format"

    .line 184
    sput-object v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->TRACK_SCAN_OCR_WIFI_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 465
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x3

    .line 146
    iput v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mFailureRetryTimes:I

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    .line 192
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 467
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 484
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x3

    .line 146
    iput v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mFailureRetryTimes:I

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    .line 192
    new-instance v1, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    .line 486
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    .line 487
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    .line 488
    iput-boolean p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsSlave:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method private destroyCamera()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->stop()V

    const/4 v0, 0x0

    .line 845
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    :cond_0
    return-void
.end method

.method private handleOCRWifiFormat(Ljava/lang/String;)V
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 810
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 811
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private handleWifiDpp()V
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 796
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 798
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private handleZxingWifiFormat()V
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 803
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    if-nez v0, :cond_1

    .line 830
    new-instance v0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    .line 832
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 834
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->setFocused(Z)V

    goto :goto_0

    .line 837
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->start(Landroid/view/SurfaceHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isReachableWifiNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 333
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 336
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
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

    .line 340
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 344
    :cond_2
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getSecurityTypeFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 345
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 352
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
    .locals 0

    .line 1013
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/Integer;)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 403
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback-IA;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onEnrolleeSuccess(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/Integer;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Easy connect enrollee callback onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiWifiDppQrCodeScanner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback-IA;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onFailure(I)V

    return-void
.end method

.method private synthetic lambda$restartCamera$2()V
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->start(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private notifyUserForQrCodeRecognition()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->stop()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->setFocused(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V

    return-void
.end method

.method private restartCamera()V
    .locals 5

    .line 1020
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    if-nez v0, :cond_0

    const-string p0, "MiuiWifiDppQrCodeScanner"

    const-string v0, "mCamera is not available for restarting camera"

    .line 1021
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1025
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->isDecodeTaskAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->stop()V

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1029
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-void
.end method

.method private showErrorMessage(I)V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 851
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 850
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 852
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    .line 969
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;)V

    return-void
.end method

.method private updateEnrolleeSummary()V
    .locals 2

    .line 1034
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_dpp_connecting:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    sget v0, Lcom/android/settings/R$string;->dpp_scanner_summary:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1042
    :cond_1
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code_join_network:I

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method canConnectWifi(Ljava/lang/String;)Z
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 362
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

    .line 363
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wi-Fi is not allowed to connect by your organization. SSID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiWifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget p1, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 448
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x63b

    return p0

    :cond_0
    const/16 p0, 0x63c

    return p0
.end method

.method public getViewSize()Landroid/util/Size;
    .locals 2

    .line 623
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public handleCameraFailure()V
    .locals 3

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera open failure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mFailureRetryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiWifiDppQrCodeScanner"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mFailureRetryTimes:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mFailureRetryTimes:I

    if-lez v0, :cond_0

    .line 818
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mPaused:Z

    if-nez v0, :cond_1

    const-string v0, "Try to restart camera!"

    .line 819
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->restartCamera()V

    goto :goto_0

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->destroyCamera()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleOcrSuccessfulResult(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 790
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->handleOCRWifiFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleSuccessfulResult(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo p1, "wifi_qrCode_scaned_success"

    const/4 v0, 0x0

    .line 769
    invoke-static {p1, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 770
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

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

    .line 776
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->handleZxingWifiFormat()V

    goto :goto_0

    .line 772
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->handleWifiDpp()V

    :goto_0
    return-void
.end method

.method protected isDecodeTaskAlive()Z
    .locals 0

    .line 1071
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->isDecodeTaskAlive()Z

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

.method public isValidQrcode(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 639
    :try_start_0
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 652
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-nez v1, :cond_0

    const-string v1, "DPP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 653
    sget p1, Lcom/android/settings/R$string;->wifi_dpp_qr_code_is_not_valid_format:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->showErrorMessage(I)V

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 641
    :catch_0
    sget p1, Lcom/android/settings/R$string;->wifi_dpp_qr_code_is_not_valid_format:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->showErrorMessage(I)V

    return v0
.end method

.method public onAccessPointsChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    .line 493
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 494
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiuiWifiDppQrCodeScanner{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
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

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 497
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 498
    new-instance v7, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$2;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$2;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Ljava/time/ZoneId;)V

    .line 504
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiSettingsActivityRef:Ljava/lang/ref/WeakReference;

    .line 505
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 506
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v2

    .line 507
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiSettingsActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    .line 508
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 509
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x2710

    const/4 v12, 0x0

    .line 507
    invoke-interface/range {v2 .. v12}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 518
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 520
    check-cast p1, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    return-void
.end method

.method public onConnectedChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 376
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wlan_scanner_unresizeble:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "key_is_configurator_mode"

    .line 387
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const-string v0, "key_latest_error_code"

    .line 388
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    const-string v0, "key_wifi_configuration"

    .line 389
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "key_is_slave"

    .line 390
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsSlave:Z

    .line 392
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 394
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 396
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getEnrolleeSuccessNetworkId()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 406
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getStatusCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/4 v0, 0x1

    .line 597
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 599
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1082
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    .line 1083
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->releaseCamera()V

    .line 1086
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p0, :cond_1

    .line 1087
    invoke-virtual {p0}, Landroid/view/SurfaceView;->surfaceDestroyed()V

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    .line 527
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wi-Fi connect onFailure reason - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiWifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    sget p1, Lcom/android/settings/R$string;->wifi_dpp_check_connection_try_again:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 535
    sget p0, Lcom/android/settings/R$layout;->miui_wifi_dpp_qrcode_scanner_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mPaused:Z

    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 423
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    if-eqz v0, :cond_0

    .line 424
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mPaused:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->onPause(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->stop()V

    .line 428
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 433
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    const/4 v0, 0x3

    .line 434
    iput v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mFailureRetryTimes:I

    const/4 v1, 0x0

    .line 435
    iput-boolean v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mPaused:Z

    .line 436
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    if-eqz v2, :cond_0

    .line 437
    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->onPause(Z)V

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 440
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 441
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHasSurface:Z

    if-eqz v0, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->restartCamera()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_is_configurator_mode"

    .line 865
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_latest_error_code"

    .line 866
    iget v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_wifi_configuration"

    .line 867
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "key_is_slave"

    .line 868
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsSlave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 870
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1093
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    .line 1094
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->stop()V

    .line 1096
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->releaseCamera()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 6

    .line 974
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "wifi_configuration"

    .line 975
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 978
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 980
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    if-nez v2, :cond_1

    .line 981
    new-instance v2, Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-direct {v2, v1}, Lcom/android/settingslib/wifi/WifiPermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    .line 984
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->canAccessWifiState()Z

    move-result v2

    const-string v3, "187176859"

    const v4, 0x534e4554

    const-string v5, "MiuiWifiDppQrCodeScanner"

    if-nez v2, :cond_2

    const-string v0, "Calling package does not have ACCESS_WIFI_STATE permission for result."

    .line 985
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    .line 987
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->getLaunchedPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "no ACCESS_WIFI_STATE permission"

    filled-new-array {v3, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 986
    invoke-static {v4, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 988
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 992
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->canAccessFineLocation()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "Calling package does not have ACCESS_FINE_LOCATION permission for result."

    .line 993
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    .line 995
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->getLaunchedPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "no ACCESS_FINE_LOCATION permission"

    filled-new-array {v3, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 994
    invoke-static {v4, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 997
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const/4 p0, -0x1

    .line 1001
    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1002
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 541
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 543
    sget p2, Lcom/android/settings/R$id;->surface_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSurfaceView:Landroid/view/SurfaceView;

    .line 544
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 546
    sget p2, Lcom/android/settings/R$id;->decorate_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;

    .line 548
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 550
    iget-boolean p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p2, :cond_1

    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;

    .line 552
    invoke-interface {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p2

    .line 553
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 559
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->dpp_scanner_summary:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 554
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 561
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    .line 564
    :goto_0
    sget p2, Lcom/android/settings/R$id;->error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    const-string/jumbo p2, "vendor"

    .line 566
    invoke-static {p2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mediatek"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 567
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 568
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isEasyConnectEnrolleeResponderModeSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mIsSlave:Z

    if-nez p2, :cond_2

    .line 569
    sget p2, Lcom/android/settings/R$id;->icon_dpp_qrcode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDppQrCodeItem:Landroid/widget/ImageView;

    .line 570
    sget v0, Lcom/android/settings/R$drawable;->dpp_qr_code:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDppQrCodeItem:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dpp_theme_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 573
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDppQrCodeItem:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$3;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDppQrCodeItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    sget p2, Lcom/android/settings/R$id;->dpp_qrCode_summary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDppSummary:Landroid/widget/TextView;

    .line 590
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 591
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mDppSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 0
    return-void
.end method

.method showErrorMessageAndRestartCamera(I)V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 858
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 857
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 859
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 860
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 609
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHasSurface:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 610
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHasSurface:Z

    .line 611
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 617
    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->mHasSurface:Z

    .line 618
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->destroyCamera()V

    return-void
.end method
