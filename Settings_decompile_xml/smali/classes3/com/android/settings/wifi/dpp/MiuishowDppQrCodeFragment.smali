.class public Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;
.super Lcom/android/settings/BaseFragment;
.source "MiuishowDppQrCodeFragment.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDppHandler:Landroid/os/Handler;

.field private mDppQrCode:Ljava/lang/String;

.field private mDppQrCodeSummaryView:Landroid/widget/TextView;

.field private mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

.field protected mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsDppQrShow:Z

.field private mQrCodeView:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDppHandler(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mDppHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDppQrShow(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mIsDppQrShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowDppQrcode(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->showDppQrcode(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    const-string v0, "MiuiShowDppQrCodeFragment"

    .line 47
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mIsDppQrShow:Z

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EasyConnect"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 93
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;-><init>(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    return-void
.end method

.method private initDppHandler()V
    .locals 1

    .line 191
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$2;-><init>(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mDppHandler:Landroid/os/Handler;

    return-void
.end method

.method private setDppQrCode()V
    .locals 3

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->qrcode_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mDppQrCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settingslib/qrcode/QrCodeGenerator;->encodeQrCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mQrCodeView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error generating QR code bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showDppQrcode(ZLjava/lang/String;)V
    .locals 5

    .line 155
    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mIsDppQrShow:Z

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->qrcode_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->dpp_qrcode_generator:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 159
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mQrCodeView:Landroid/widget/ImageView;

    .line 160
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mDppQrCodeSummaryView:Landroid/widget/TextView;

    .line 161
    sget v0, Lcom/android/settings/R$string;->dpp_qr_code_summary:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mDppQrCode:Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->setDppQrCode()V

    :cond_2
    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 71
    sget p3, Lcom/android/settings/R$layout;->miui_show_dpp_qrcode_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 80
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isEasyConnectEnrolleeResponderModeSupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->TAG:Ljava/lang/String;

    const-string p1, "not supported Easy Connect Enrollee responder mode"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance p1, Landroid/os/HandlerExecutor;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mExecutor:Ljava/util/concurrent/Executor;

    const-string/jumbo p1, "ro.product.model"

    const-string/jumbo v0, "xiaomi"

    .line 87
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p0}, Landroid/net/wifi/WifiManager;->startEasyConnectAsEnrolleeResponder(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->initDppHandler()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 169
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    .line 171
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 187
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 178
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wlan_scanner_unresizeble:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
