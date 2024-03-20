.class Lsrc/com/android/settings/emergency/util/CameraUtils$3;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsrc/com/android/settings/emergency/util/CameraUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;


# direct methods
.method constructor <init>(Lsrc/com/android/settings/emergency/util/CameraUtils;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 163
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onConfigureFailed: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .line 142
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCameraDevice(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 144
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "onConfigured: CameraDevice was already closed."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 146
    monitor-exit v0

    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v1, p1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fputmCaptureSession(Lsrc/com/android/settings/emergency/util/CameraUtils;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 149
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "startPreview"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    iget-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {p1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCaptureSession(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmPreviewRequestBuilder(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v2}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCaptureCallback(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v3}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCameraHandler(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    :try_start_2
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$3;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {p0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$mtakePicture(Lsrc/com/android/settings/emergency/util/CameraUtils;)V

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
