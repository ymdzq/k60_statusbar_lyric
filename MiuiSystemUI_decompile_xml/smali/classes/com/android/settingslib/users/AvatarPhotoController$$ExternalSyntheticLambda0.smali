.class public final synthetic Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/AvatarPhotoController;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/AvatarPhotoController;Landroid/net/Uri;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 5
    iput-object p2, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    .line 7
    iput-boolean p3, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 2
    iget-object v1, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    .line 4
    iget-boolean p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    iget-object v2, v0, Lcom/android/settingslib/users/AvatarPhotoController;->mContextInjector:Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;

    .line 8
    iget-object v2, v2, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v2

    .line 15
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 16
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object v3, v0, Lcom/android/settingslib/users/AvatarPhotoController;->mPreCropPictureUri:Landroid/net/Uri;

    .line 20
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 22
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    :try_start_2
    invoke-static {v1, v2}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    if-eqz v2, :cond_0

    .line 29
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 31
    :cond_0
    if-eqz v1, :cond_1

    .line 34
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 36
    :cond_1
    new-instance v1, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;

    .line 39
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/AvatarPhotoController;I)V

    .line 42
    if-eqz p0, :cond_3

    .line 45
    sget-object p0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 47
    if-nez p0, :cond_2

    .line 49
    new-instance p0, Landroid/os/Handler;

    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 53
    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    sput-object p0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 60
    :cond_2
    sget-object p0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 62
    const-wide/16 v2, 0x96

    .line 64
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    goto :goto_2

    .line 69
    :cond_3
    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 70
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    if-eqz v2, :cond_4

    .line 75
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    goto :goto_0

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    :cond_4
    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 85
    :catchall_2
    move-exception p0

    .line 86
    if-eqz v1, :cond_5

    .line 87
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 89
    goto :goto_1

    .line 92
    :catchall_3
    move-exception v0

    .line 93
    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    :cond_5
    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    const-string v0, "AvatarPhotoController"

    .line 99
    const-string v1, "Failed to copy photo"

    .line 101
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :goto_2
    return-void
    .line 106
.end method
