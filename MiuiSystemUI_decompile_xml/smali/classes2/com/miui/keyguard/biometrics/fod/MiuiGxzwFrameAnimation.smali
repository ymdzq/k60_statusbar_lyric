.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDecodeBmpExecutor:Ljava/util/concurrent/Executor;

.field public mDrawRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

.field public volatile mFrameInterval:I

.field public final mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mGxzwAnimDecodeBmpExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

.field public volatile mMode:I


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mHandler:Landroid/os/Handler;

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDecodeBmpExecutor:Ljava/util/concurrent/Executor;

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 18
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimDecodeBmpExecutor:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    const/16 v0, 0x20

    .line 31
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mFrameInterval:I

    .line 33
    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMode:I

    .line 36
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMainHandler:Landroid/os/Handler;

    .line 46
    return-void
    .line 48
.end method


# virtual methods
.method public final decodeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 8
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 10
    const/4 v1, 0x0

    .line 12
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mContext:Landroid/content/Context;

    .line 13
    if-eqz p2, :cond_0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 21
    move-result-object p0

    .line 24
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 25
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p0

    .line 33
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 34
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    return-object v1
    .line 43
.end method

.method public final draw(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "draw: res = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ", anim = false, scale = 1.0"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "MiuiGxzwFrameAnimation"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->stopAnimation(Z)V

    .line 27
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDecodeBmpExecutor:Ljava/util/concurrent/Executor;

    .line 30
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda0;

    .line 32
    invoke-direct {v1, p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;I)V

    .line 34
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 37
    return-void
    .line 40
.end method

.method public final setMode(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 9
    const-string/jumbo v0, "wrong mode: "

    .line 11
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    .line 21
    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMode:I

    .line 22
    return-void
    .line 24
.end method

.method public final stopAnimation(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "stopAnimation mDrawing="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 14
    monitor-enter v1

    .line 16
    :try_start_0
    iget-boolean v2, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v1

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ",onlyDecode="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    const-string v1, "MiuiGxzwFrameAnimation"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v1

    .line 45
    iput-wide v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDecode:J

    .line 46
    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 50
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDraw:Z

    .line 53
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 56
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v1

    .line 61
    throw p0

    .line 62
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 64
    return-void
    .line 66
.end method
