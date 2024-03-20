.class public Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;
.super Ljava/lang/Object;
.source "MiuiHeadsetAnimation.java"


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field private mHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public mInited:Z

.field public mRemoteVersion:Ljava/lang/String;

.field private mRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;",
            ">;"
        }
    .end annotation
.end field

.field private mSuffix:Ljava/lang/String;

.field private mWorkHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfetchOnlineResource(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->fetchOnlineResource()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetDrawableFromFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->getDrawableFromFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/os/Handler;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mRootView:Ljava/lang/ref/WeakReference;

    .line 85
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    .line 86
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    .line 87
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mService:Ljava/lang/ref/WeakReference;

    .line 88
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mWorkHandler:Ljava/lang/ref/WeakReference;

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mSuffix:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mRemoteVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mInited:Z

    .line 95
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    .line 96
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    .line 97
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mRootView:Ljava/lang/ref/WeakReference;

    .line 98
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    .line 99
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mService:Ljava/lang/ref/WeakReference;

    .line 100
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mWorkHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static checkLocalCached(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    const-string v0, "MiuiHeadsetAnimation"

    :try_start_0
    const-string v1, "check local cached"

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fc_resources"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 487
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "local cached"

    .line 490
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 495
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkRemoteUpdate(Ljava/lang/String;)Z
    .locals 6

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRemoteUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 541
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    .line 542
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    invoke-interface {v3, p1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 547
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " file remote version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-string v1, "\\:"

    .line 554
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 555
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget-object v3, v1, v2

    .line 556
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 559
    :cond_1
    aget-object v3, v1, v0

    iput-object v3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mSuffix:Ljava/lang/String;

    .line 560
    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mRemoteVersion:Ljava/lang/String;

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "bluetooth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "fc_resources"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 565
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    aget-object p0, v1, v2

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->needCopy(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return p0

    :cond_2
    :goto_1
    return v0

    :catch_1
    move-exception p0

    .line 569
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return v0
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 607
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private delete(Ljava/lang/String;)V
    .locals 3

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MiuiHeadsetAnimation"

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fc_resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 508
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 510
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 514
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private fetchOnlineResource()V
    .locals 2

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mWorkHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mWorkHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mWorkHandler:Ljava/lang/ref/WeakReference;

    .line 467
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    const/16 v1, 0xc9

    .line 468
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 467
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 471
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static getDrawableFromFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    const-string v0, "fc_resources"

    const-string v1, "bluetooth"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "MiuiHeadsetAnimation"

    const-string p1, "getDrawableFromFile"

    .line 182
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 185
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    .line 191
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    .line 195
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "."

    if-eqz p0, :cond_3

    .line 197
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 198
    array-length v1, p0

    if-eqz v1, :cond_3

    .line 199
    array-length v1, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v6, p0, v5

    if-eqz v6, :cond_2

    .line 202
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 205
    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v6, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 213
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v2

    .line 219
    :cond_4
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public static getFindDeviceDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    const-string v0, "1"

    .line 113
    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->getDrawableFromFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getFitnessDeviceDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    const-string v0, "2"

    .line 118
    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->getDrawableFromFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method private mkdir(Ljava/lang/String;)V
    .locals 2

    .line 520
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fc_resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiHeadsetAnimation"

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mkdir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 530
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 534
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static needCopy(Ljava/lang/String;Ljava/io/File;)Z
    .locals 8

    const-string v0, "error "

    .line 615
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    const-string v1, "-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x1

    const-string v3, "MiuiHeadsetAnimation"

    if-eqz p1, :cond_5

    .line 618
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v4, 0x0

    .line 625
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x64

    :try_start_1
    new-array p1, p1, [B

    .line 627
    invoke-virtual {v5, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 629
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v2, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 631
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge p1, p0, :cond_2

    .line 640
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    .line 640
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v4, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    .line 636
    :goto_2
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_3

    .line 640
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_3
    return v2

    :goto_4
    if-eqz v4, :cond_4

    .line 640
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_4
    :goto_5
    throw p0

    :cond_5
    :goto_6
    const-string/jumbo p0, "need copy"

    .line 619
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    :goto_7
    return v2
.end method

.method private writeLocalVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fc_resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 580
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 584
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 588
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 589
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 591
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_2

    .line 595
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 597
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_1

    .line 595
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 597
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 600
    :cond_1
    :goto_2
    throw p1

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public checkAndDoCopy()V
    .locals 9

    const-string v0, "check and do copy"

    const-string v1, "MiuiHeadsetAnimation"

    .line 127
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_5

    .line 132
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->checkLocalCached(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->checkRemoteUpdate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    goto/16 :goto_5

    .line 139
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->delete(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mkdir(Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.bluetooth.ble.app.headset.provider/headset_resource_update/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    move-object v3, v0

    move v4, v2

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_4

    .line 145
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    iget-object v6, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 147
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 148
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v8, "r"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 150
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    const/16 v6, 0x2f

    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    .line 153
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "bluetooth"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "fc_resources"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mSuffix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    .line 160
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 161
    invoke-virtual {v6, v3, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 164
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    move-object v3, v6

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v6

    goto :goto_6

    :catch_0
    move-exception v1

    move-object v3, v6

    goto :goto_4

    .line 167
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mRemoteVersion:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->writeLocalVersion(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_5
    :goto_3
    :try_start_4
    const-string v2, "failed to get DeviceID"

    .line 133
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v3, v0

    .line 170
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->delete(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 173
    :goto_5
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception v1

    .line 173
    :goto_6
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    throw v1
.end method

.method public loadDefault()V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mInited:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->loadDefaultInternal()V

    :cond_0
    return-void
.end method

.method public loadDefaultInternal()V
    .locals 5

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mRootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_16

    .line 236
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_16

    .line 237
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "0201010000"

    .line 240
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x32

    if-nez v0, :cond_15

    const-string v0, "0201010001"

    iget-object v3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01GrayHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$2;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$2;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01BlackHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$3;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$3;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01YellowHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$4;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$4;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$5;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$5;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73WhiteHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$6;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$6;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 298
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73BlackHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 299
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$7;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$7;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 305
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73GreenHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 306
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$8;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$8;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 312
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK76sHeadset(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_9

    .line 313
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$9;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$9;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 328
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$10;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$10;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 334
    :cond_a
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73LBlueHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 335
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$11;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$11;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 341
    :cond_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73AWhiteHeadset(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x14

    if-eqz v0, :cond_c

    .line 342
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$12;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$12;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 355
    :cond_c
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73ABlackHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 356
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$13;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$13;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 369
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73AGreenHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 370
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$14;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$14;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 383
    :cond_e
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75WhiteHeadset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75AWhiteHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1

    .line 397
    :cond_f
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75BlackHeadset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75ABlackHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_0

    .line 411
    :cond_10
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75SHeadset(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x5

    if-eqz v0, :cond_11

    .line 412
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$17;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$17;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 418
    :cond_11
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS02BlackHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 419
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$18;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$18;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 435
    :cond_12
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 437
    sget v0, Lcom/android/settings/R$drawable;->bt_headset_find_detail:I

    .line 441
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 398
    :cond_13
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$16;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$16;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 384
    :cond_14
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$15;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$15;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 241
    :cond_15
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$1;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$1;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_16
    :goto_3
    return-void

    :catch_0
    move-exception p0

    .line 459
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public updateService(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V
    .locals 1

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->mService:Ljava/lang/ref/WeakReference;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->loadDefault()V

    return-void
.end method
