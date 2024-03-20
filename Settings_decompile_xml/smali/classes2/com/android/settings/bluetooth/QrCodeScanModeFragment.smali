.class public Lcom/android/settings/bluetooth/QrCodeScanModeFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "QrCodeScanModeFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;


# static fields
.field private static final VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;


# instance fields
.field private mBroadcastMetadata:Ljava/lang/String;

.field private mCamera:Lcom/android/settingslib/qrcode/QrCamera;

.field private mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private mErrorMessage:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGroupOp:Z

.field private mSink:Landroid/bluetooth/BluetoothDevice;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBroadcastMetadata(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mBroadcastMetadata:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCornerRadius(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCornerRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorMessage(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyUserForQrCodeRecognition(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->notifyUserForQrCodeRecognition()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    .line 70
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 199
    new-instance v0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;-><init>(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mIsGroupOp:Z

    .line 86
    iput-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mSink:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method private destroyCamera()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method private handleBtLeAudioScanner()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 264
    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settingslib/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    .line 125
    invoke-virtual {v0, p1}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method private notifyUserForQrCodeRecognition()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showErrorMessage(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 258
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V
    .locals 3

    .line 247
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-nez p0, :cond_0

    return-void

    .line 251
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    .line 252
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    const/4 v2, -0x1

    .line 251
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method


# virtual methods
.method public getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;
    .locals 1

    .line 177
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

    .line 0
    const/16 p0, 0x786

    return p0
.end method

.method public getViewSize()Landroid/util/Size;
    .locals 2

    .line 172
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public handleCameraFailure()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->destroyCamera()V

    return-void
.end method

.method public handleSuccessfulResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "QrCodeScanModeFragment"

    const-string v1, "handleSuccessfulResult(), get the qr code string."

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mBroadcastMetadata:Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->handleBtLeAudioScanner()V

    return-void
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "BT:"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 190
    :cond_0
    sget p1, Lcom/android/settings/R$string;->bt_le_audio_qr_code_is_not_valid_format:I

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->showErrorMessage(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 101
    sget p0, Lcom/android/settings/R$layout;->qrcode_scanner_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->destroyCamera()V

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
    .locals 1

    .line 107
    sget p2, Lcom/android/settings/R$id;->preview_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    .line 108
    iget-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->qrcode_preview_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCornerRadius:I

    .line 110
    iget-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 111
    iget-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    new-instance v0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$1;-><init>(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 117
    iget-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setClipToOutline(Z)V

    .line 118
    sget p2, Lcom/android/settings/R$id;->error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
