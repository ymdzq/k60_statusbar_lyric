.class Lsrc/com/android/settings/emergency/util/CameraUtils$2;
.super Ljava/lang/Object;
.source "CameraUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsrc/com/android/settings/emergency/util/CameraUtils;->prepareCameraAndTakePhoto()V
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

    .line 96
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$2;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$2;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCameraId(Lsrc/com/android/settings/emergency/util/CameraUtils;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :try_start_0
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareCamera: mCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$2;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v3}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCameraId(Lsrc/com/android/settings/emergency/util/CameraUtils;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$2;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCameraManager(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$2;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v2}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCameraStateCallback(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v2

    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$2;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {p0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmMainHandler(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
