.class public Lsrc/com/android/settings/emergency/util/CameraUtils$SaveBitmapAndSendRunnable;
.super Ljava/lang/Object;
.source "CameraUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsrc/com/android/settings/emergency/util/CameraUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveBitmapAndSendRunnable"
.end annotation


# instance fields
.field private bm:Landroid/graphics/Bitmap;

.field private cameraUtilsWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lsrc/com/android/settings/emergency/util/CameraUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsrc/com/android/settings/emergency/util/CameraUtils;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$SaveBitmapAndSendRunnable;->cameraUtilsWeakReference:Ljava/lang/ref/WeakReference;

    .line 316
    iput-object p2, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$SaveBitmapAndSendRunnable;->bm:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 321
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetmObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$SaveBitmapAndSendRunnable;->cameraUtilsWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsrc/com/android/settings/emergency/util/CameraUtils;

    if-nez v1, :cond_0

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 328
    :try_start_1
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save bitmap, cameraUtils.mCameraId \uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCameraId(Lsrc/com/android/settings/emergency/util/CameraUtils;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmCameraId(Lsrc/com/android/settings/emergency/util/CameraUtils;)I

    move-result v3

    if-nez v3, :cond_1

    .line 330
    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmBitmapPathBehind(Lsrc/com/android/settings/emergency/util/CameraUtils;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmBitmapPathFront(Lsrc/com/android/settings/emergency/util/CameraUtils;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fputmBitmapName(Lsrc/com/android/settings/emergency/util/CameraUtils;Ljava/lang/String;)V

    .line 331
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmBitmapName(Lsrc/com/android/settings/emergency/util/CameraUtils;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 335
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    :try_start_2
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$SaveBitmapAndSendRunnable;->bm:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 337
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 338
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v2, "save bitmap finish"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmSosSnapListener(Lsrc/com/android/settings/emergency/util/CameraUtils;)Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;

    move-result-object p0

    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$fgetmBitmapName(Lsrc/com/android/settings/emergency/util/CameraUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;->executeSendSnap(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception p0

    .line 349
    :try_start_4
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 341
    :goto_2
    :try_start_5
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "save bitmap error"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    .line 346
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catch_3
    move-exception p0

    .line 349
    :try_start_7
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 352
    :cond_3
    :goto_3
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    :goto_4
    if-eqz v2, :cond_4

    .line 346
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catch_4
    move-exception v1

    .line 349
    :try_start_9
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_4
    :goto_5
    throw p0

    :catchall_2
    move-exception p0

    .line 352
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0
.end method
