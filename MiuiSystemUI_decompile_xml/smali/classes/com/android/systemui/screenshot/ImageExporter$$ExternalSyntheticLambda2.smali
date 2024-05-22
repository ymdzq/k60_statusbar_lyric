.class public final synthetic Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ImageExporter;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Landroid/graphics/Bitmap;

.field public final synthetic f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ImageExporter;Ljava/io/File;Landroid/graphics/Bitmap;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ImageExporter;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda2;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ImageExporter;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda2;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 13
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-object v4, v0, Lcom/android/systemui/screenshot/ImageExporter;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 18
    iget v0, v0, Lcom/android/systemui/screenshot/ImageExporter;->mQuality:I

    .line 20
    invoke-virtual {v2, v4, v0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 22
    invoke-virtual {p0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    goto :goto_0

    .line 36
    :catchall_1
    move-exception v2

    .line 37
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 38
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 43
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    .line 52
    :goto_1
    return-void
    .line 55
.end method
