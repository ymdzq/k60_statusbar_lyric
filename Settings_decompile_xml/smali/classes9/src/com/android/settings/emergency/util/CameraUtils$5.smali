.class Lsrc/com/android/settings/emergency/util/CameraUtils$5;
.super Ljava/lang/Object;
.source "CameraUtils.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

    .line 198
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$5;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    .line 204
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 219
    :cond_0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$5;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-virtual {p0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->release()V

    return-void

    .line 208
    :cond_1
    :try_start_1
    invoke-static {p1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onImageAvailable: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$5;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fputmBitmap(Lsrc/com/android/settings/emergency/util/CameraUtils;Landroid/graphics/Bitmap;)V

    .line 213
    new-instance v0, Lsrc/com/android/settings/emergency/util/CameraUtils$SaveBitmapAndSendRunnable;

    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$5;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmBitmap(Lsrc/com/android/settings/emergency/util/CameraUtils;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsrc/com/android/settings/emergency/util/CameraUtils;->changeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsrc/com/android/settings/emergency/util/CameraUtils$SaveBitmapAndSendRunnable;-><init>(Lsrc/com/android/settings/emergency/util/CameraUtils;Landroid/graphics/Bitmap;)V

    .line 214
    invoke-static {v0}, Lsrc/com/android/settings/emergency/util/ThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 204
    :try_start_3
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 217
    :try_start_5
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 219
    :goto_1
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$5;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-virtual {p0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->release()V

    return-void

    :goto_2
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$5;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-virtual {p0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->release()V

    .line 220
    throw p1
.end method
