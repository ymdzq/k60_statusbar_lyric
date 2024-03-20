.class public Lsrc/com/android/settings/emergency/util/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsrc/com/android/settings/emergency/util/CameraUtils$SaveBitmapAndSendRunnable;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "SOS-CameraUtils"

.field private static final mObject:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapName:Ljava/lang/String;

.field private mBitmapPathBehind:Ljava/lang/String;

.field private mBitmapPathFront:Ljava/lang/String;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraId:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMainHandler:Landroid/os/Handler;

.field private final mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPhotoImageReader:Landroid/media/ImageReader;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mSosSnapListener:Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBitmap(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitmapName(Lsrc/com/android/settings/emergency/util/CameraUtils;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mBitmapName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitmapPathBehind(Lsrc/com/android/settings/emergency/util/CameraUtils;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mBitmapPathBehind:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitmapPathFront(Lsrc/com/android/settings/emergency/util/CameraUtils;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mBitmapPathFront:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDevice(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraHandler(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraId(Lsrc/com/android/settings/emergency/util/CameraUtils;)I
    .locals 0

    .line 0
    iget p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraManager(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraStateCallback(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureCallback(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSession(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRequestBuilder(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSosSnapListener(Lsrc/com/android/settings/emergency/util/CameraUtils;)Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSosSnapListener:Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBitmap(Lsrc/com/android/settings/emergency/util/CameraUtils;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBitmapName(Lsrc/com/android/settings/emergency/util/CameraUtils;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mBitmapName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lsrc/com/android/settings/emergency/util/CameraUtils;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureSession(Lsrc/com/android/settings/emergency/util/CameraUtils;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenCamera(Lsrc/com/android/settings/emergency/util/CameraUtils;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->openCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpreparePhotoImageReader(Lsrc/com/android/settings/emergency/util/CameraUtils;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->preparePhotoImageReader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtakePicture(Lsrc/com/android/settings/emergency/util/CameraUtils;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->takePicture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lsrc/com/android/settings/emergency/util/CameraUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmObject()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/emergency/service/LocationService$ISosSnapListener;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;

    invoke-direct {v0, p0}, Lsrc/com/android/settings/emergency/util/CameraUtils$3;-><init>(Lsrc/com/android/settings/emergency/util/CameraUtils;)V

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 167
    new-instance v0, Lsrc/com/android/settings/emergency/util/CameraUtils$4;

    invoke-direct {v0, p0}, Lsrc/com/android/settings/emergency/util/CameraUtils$4;-><init>(Lsrc/com/android/settings/emergency/util/CameraUtils;)V

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 197
    new-instance v0, Lsrc/com/android/settings/emergency/util/CameraUtils$5;

    invoke-direct {v0, p0}, Lsrc/com/android/settings/emergency/util/CameraUtils$5;-><init>(Lsrc/com/android/settings/emergency/util/CameraUtils;)V

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 238
    new-instance v0, Lsrc/com/android/settings/emergency/util/CameraUtils$6;

    invoke-direct {v0, p0}, Lsrc/com/android/settings/emergency/util/CameraUtils$6;-><init>(Lsrc/com/android/settings/emergency/util/CameraUtils;)V

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 72
    invoke-virtual {p0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->release()V

    .line 73
    iput-object p3, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSosSnapListener:Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;

    .line 74
    iput p2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraId:I

    .line 75
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mContext:Landroid/content/Context;

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "SOS0.jpg"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mBitmapPathFront:Ljava/lang/String;

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SOS1.jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mBitmapPathBehind:Ljava/lang/String;

    .line 78
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SnapCameraThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mHandlerThread:Landroid/os/HandlerThread;

    .line 79
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mMainHandler:Landroid/os/Handler;

    .line 81
    new-instance p1, Lsrc/com/android/settings/emergency/util/CameraUtils$1;

    iget-object p2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lsrc/com/android/settings/emergency/util/CameraUtils$1;-><init>(Lsrc/com/android/settings/emergency/util/CameraUtils;Landroid/os/Looper;)V

    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraHandler:Landroid/os/Handler;

    .line 89
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/16 p2, 0x438

    const/16 p3, 0x7a8

    .line 90
    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 91
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPreviewSurface:Landroid/view/Surface;

    .line 92
    iget-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mContext:Landroid/content/Context;

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    .line 234
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 1

    .line 357
    new-instance v0, Lsrc/com/android/settings/emergency/util/CameraUtils$7;

    invoke-direct {v0, p0}, Lsrc/com/android/settings/emergency/util/CameraUtils$7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsrc/com/android/settings/emergency/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getFirstPlane(Landroid/media/Image;)[B
    .locals 1

    .line 299
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    .line 300
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 301
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 302
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 303
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private openCamera()V
    .locals 3

    .line 112
    :try_start_0
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 114
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 115
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSurfaces:Ljava/util/List;

    iget-object v2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    sget-object v0, Lsrc/com/android/settings/emergency/util/CameraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private preparePhotoImageReader()V
    .locals 4

    .line 188
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPhotoImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_0
    const/16 v0, 0x100

    const/4 v1, 0x2

    const/16 v2, 0x438

    const/16 v3, 0x7a8

    .line 191
    invoke-static {v2, v3, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPhotoImageReader:Landroid/media/ImageReader;

    .line 193
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 194
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPreviewSurface:Landroid/view/Surface;

    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSurfaces:Ljava/util/List;

    return-void
.end method

.method private takePicture()V
    .locals 3

    .line 123
    :try_start_0
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x2

    .line 124
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 127
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 128
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 129
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    sget-object v0, Lsrc/com/android/settings/emergency/util/CameraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public changeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 225
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 227
    iget p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraId:I

    if-nez p0, :cond_0

    const/16 p0, 0x5a

    goto :goto_0

    :cond_0
    const/16 p0, -0x5a

    :goto_0
    int-to-float p0, p0

    .line 228
    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public prepareCameraAndTakePhoto()V
    .locals 2

    .line 96
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lsrc/com/android/settings/emergency/util/CameraUtils$2;

    invoke-direct {v1, p0}, Lsrc/com/android/settings/emergency/util/CameraUtils$2;-><init>(Lsrc/com/android/settings/emergency/util/CameraUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 267
    :try_start_0
    sget-object v0, Lsrc/com/android/settings/emergency/util/CameraUtils;->TAG:Ljava/lang/String;

    const-string v1, "release(): E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 270
    :try_start_1
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 272
    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 275
    :try_start_2
    sget-object v2, Lsrc/com/android/settings/emergency/util/CameraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    :goto_0
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    :cond_1
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 285
    :cond_2
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 287
    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 290
    :cond_3
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_4

    .line 291
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 292
    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 294
    :cond_4
    sget-object v0, Lsrc/com/android/settings/emergency/util/CameraUtils;->TAG:Ljava/lang/String;

    const-string v1, "release(): X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
