.class public Lcom/android/settings/wifi/qrcode/MiuiQrCamera;
.super Landroid/os/Handler;
.source "MiuiQrCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;,
        Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;
    }
.end annotation


# static fields
.field private static FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static HINTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private curScanMode:I

.field mCamera:Landroid/hardware/Camera;

.field private mCameraOrientation:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeTask:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

.field private mIsReleasing:Z

.field mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field private mPreviewSize:Landroid/util/Size;

.field private mReader:Lcom/google/zxing/MultiFormatReader;

.field private mScannerCallback:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurScanMode(Lcom/android/settings/wifi/qrcode/MiuiQrCamera;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->curScanMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSize(Lcom/android/settings/wifi/qrcode/MiuiQrCamera;)Landroid/util/Size;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScannerCallback(Lcom/android/settings/wifi/qrcode/MiuiQrCamera;)Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurScanMode(Lcom/android/settings/wifi/qrcode/MiuiQrCamera;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->curScanMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdecode(Lcom/android/settings/wifi/qrcode/MiuiQrCamera;[BIII)Lcom/google/zxing/Result;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->decode([BIII)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->HINTS:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->FORMATS:Ljava/util/List;

    .line 92
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->HINTS:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    sget-object v2, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->FORMATS:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->curScanMode:I

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mContext:Ljava/lang/ref/WeakReference;

    .line 113
    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;

    .line 114
    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    .line 115
    sget-object p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->HINTS:Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method private decode([BIII)Lcom/google/zxing/Result;
    .locals 10

    mul-int v0, p2, p3

    .line 406
    new-array v2, v0, [B

    const/4 v0, 0x0

    .line 407
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v1, p3, :cond_2

    move v4, v0

    :goto_1
    if-ge v4, p2, :cond_1

    mul-int v5, v1, p2

    add-int/2addr v5, v4

    .line 410
    array-length v6, p1

    if-lt v5, v6, :cond_0

    goto :goto_2

    :cond_0
    mul-int v6, v4, p3

    add-int/2addr v6, p3

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    .line 413
    aget-byte v5, p1, v5

    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    .line 422
    new-instance p1, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move v3, p3

    move v4, p2

    move v7, p3

    move v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 424
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->decodeQrCode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object p2

    if-nez p2, :cond_5

    .line 427
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->decodeQrCode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object p2

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    if-ne p4, v3, :cond_4

    .line 429
    new-instance p4, Lcom/android/settings/wifi/qrcode/MiuiPlanarYUVLuminanceSource;

    const/4 v7, 0x0

    move-object v1, p4

    move v3, p3

    move v4, p2

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/wifi/qrcode/MiuiPlanarYUVLuminanceSource;-><init>([BIIIIZ)V

    .line 431
    invoke-virtual {p4}, Lcom/android/settings/wifi/qrcode/MiuiPlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 432
    invoke-static {}, Lcom/android/settings/wifi/ocr/WifiOcrController;->getInstance()Lcom/android/settings/wifi/ocr/WifiOcrController;

    move-result-object p3

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p3, p2, p0}, Lcom/android/settings/wifi/ocr/WifiOcrController;->detectText(Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 433
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 434
    new-instance p2, Lcom/google/zxing/Result;

    invoke-direct {p2, p0, p1, p1, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    goto :goto_3

    :cond_4
    move-object p2, p1

    :cond_5
    :goto_3
    return-object p2
.end method

.method private decodeQrCode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;
    .locals 3

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    sget-object p1, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->HINTS:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 449
    throw p1

    .line 448
    :catch_0
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getBestPictureSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 11

    .line 542
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 543
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v1, v1

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->getRatio(DD)D

    move-result-wide v1

    .line 544
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 545
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 548
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 549
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->getRatio(DD)D

    move-result-wide v7

    cmpl-double v9, v7, v1

    if-nez v9, :cond_1

    .line 551
    new-instance v7, Landroid/util/Size;

    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sub-double/2addr v7, v1

    .line 552
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    .line 553
    new-instance v7, Landroid/util/Size;

    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 557
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "MiuiQrCamera"

    const-string v1, "No proper picture size, return default picture size"

    .line 558
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 561
    new-instance p1, Landroid/util/Size;

    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 565
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_4

    move-object v3, v4

    .line 572
    :cond_4
    iget p0, v0, Landroid/hardware/Camera$Size;->width:I

    iget p1, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr p0, p1

    .line 573
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 574
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v0, :cond_5

    move-object v1, v2

    move v0, v3

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method private getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 10

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;

    invoke-interface {v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;->getViewSize()Landroid/util/Size;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v3, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->getRatio(DD)D

    move-result-wide v0

    .line 520
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    .line 521
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 522
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v6

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v8

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->getRatio(DD)D

    move-result-wide v6

    sub-double/2addr v6, v0

    .line 530
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    div-double/2addr v8, v0

    cmpg-double v8, v8, v3

    if-gtz v8, :cond_0

    .line 531
    new-instance v2, Landroid/util/Size;

    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    iget v4, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 532
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v5

    invoke-direct {p0, v3, v4, v8, v9}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->getRatio(DD)D

    .line 533
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    div-double/2addr v3, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getRatio(DD)D
    .locals 0

    .line 0
    cmpg-double p0, p1, p3

    if-gez p0, :cond_0

    div-double/2addr p1, p3

    goto :goto_0

    :cond_0
    div-double p1, p3, p1

    :goto_0
    return-wide p1
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)Z
    .locals 7

    .line 346
    iget-boolean v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPaused:Z

    const-string v1, "MiuiQrCamera"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Now is paused, do not open camera!"

    .line 347
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 351
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 352
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v0, :cond_2

    .line 355
    :try_start_0
    invoke-static {v4, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 356
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->releaseCamera()V

    .line 358
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    .line 359
    iget v0, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCameraOrientation:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to open camera: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iput-object v5, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    .line 366
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;

    invoke-interface {p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;->handleCameraFailure()V

    return v2

    .line 371
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 374
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->setCameraParameter()V

    .line 378
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    new-instance v0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$1;-><init>(Lcom/android/settings/wifi/qrcode/MiuiQrCamera;)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 383
    invoke-direct {p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->setTransformationMatrix()V

    .line 384
    invoke-direct {p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->startPreview()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    return p0

    .line 385
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Lost contex"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot find available back camera"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p1

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to startPreview camera: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iput-object v5, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    .line 390
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;

    invoke-interface {p0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;->handleCameraFailure()V

    return v2
.end method

.method private setTransformationMatrix()V
    .locals 7

    .line 466
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPreviewSize:Landroid/util/Size;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    :goto_1
    if-eqz v1, :cond_2

    .line 470
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_2
    int-to-double v2, v0

    int-to-double v4, v1

    .line 471
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->getRatio(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_3

    div-float v0, v3, v2

    goto :goto_3

    :cond_3
    div-float v0, v3, v2

    move v6, v3

    move v3, v0

    move v0, v6

    .line 483
    :goto_3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 484
    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 485
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;

    invoke-interface {p0, v1}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private startPreview()Z
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mContext:Ljava/lang/ref/WeakReference;

    .line 256
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 257
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x10e

    goto :goto_0

    :cond_3
    const/16 v0, 0xb4

    goto :goto_0

    :cond_4
    const/16 v0, 0x5a

    .line 275
    :goto_0
    iget v3, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCameraOrientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 286
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return v2

    :catch_0
    move-exception p0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to start preview: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiQrCamera"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method protected decodeImage(Lcom/google/zxing/BinaryBitmap;)V
    .locals 1

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 596
    throw p1

    .line 595
    :catch_0
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 599
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 498
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 507
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected Message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiQrCamera"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 504
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public isDecodeTaskAlive()Z
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPause(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPaused:Z

    return-void
.end method

.method public releaseCamera()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 456
    iput-boolean v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mIsReleasing:Z

    .line 457
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 460
    iput-boolean v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mIsReleasing:Z

    :cond_0
    return-void
.end method

.method setCameraParameter()V
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 222
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPreviewSize:Landroid/util/Size;

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->getBestPictureSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v0

    .line 224
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "yunluo"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x438

    if-eqz v2, :cond_0

    .line 225
    new-instance v0, Landroid/util/Size;

    const/16 v2, 0x708

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPreviewSize:Landroid/util/Size;

    .line 226
    new-instance v0, Landroid/util/Size;

    const/16 v2, 0xcc0

    const/16 v4, 0x990

    invoke-direct {v0, v2, v4}, Landroid/util/Size;-><init>(II)V

    :cond_0
    const-string v2, "cetus"

    .line 228
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/ScreenUtils;->inLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x5a0

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPreviewSize:Landroid/util/Size;

    .line 230
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xa20

    const/16 v2, 0x794

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "off"

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "auto"

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 247
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public start(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->initCamera(Landroid/view/SurfaceHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

    if-nez p1, :cond_0

    .line 130
    new-instance p1, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;-><init>(Lcom/android/settings/wifi/qrcode/MiuiQrCamera;Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask-IA;)V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

    .line 132
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mIsReleasing:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p0, :cond_1

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to stop preview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiQrCamera"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
