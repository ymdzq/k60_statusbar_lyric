.class public final synthetic Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScrollCaptureClient;

.field public final synthetic f$1:Landroid/view/IScrollCaptureConnection;

.field public final synthetic f$2:Landroid/view/ScrollCaptureResponse;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScrollCaptureClient;Landroid/view/IScrollCaptureConnection;Landroid/view/ScrollCaptureResponse;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/ScrollCaptureClient;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;->f$1:Landroid/view/IScrollCaptureConnection;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;->f$2:Landroid/view/ScrollCaptureResponse;

    .line 9
    iput p4, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;->f$3:F

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v4, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;->f$3:F

    .line 2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/ScrollCaptureClient;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;->f$1:Landroid/view/IScrollCaptureConnection;

    .line 9
    if-eqz v1, :cond_2

    .line 11
    invoke-interface {v1}, Landroid/view/IScrollCaptureConnection;->asBinder()Landroid/os/IBinder;

    .line 13
    move-result-object v2

    .line 16
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 17
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    goto :goto_1

    .line 23
    :cond_0
    new-instance v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;->f$2:Landroid/view/ScrollCaptureResponse;

    .line 26
    invoke-virtual {p0}, Landroid/view/ScrollCaptureResponse;->getWindowBounds()Landroid/graphics/Rect;

    .line 28
    move-result-object v2

    .line 31
    invoke-virtual {p0}, Landroid/view/ScrollCaptureResponse;->getBoundsInWindow()Landroid/graphics/Rect;

    .line 32
    move-result-object v3

    .line 35
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScrollCaptureClient;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 36
    move-object v0, v6

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;-><init>(Landroid/view/IScrollCaptureConnection;Landroid/graphics/Rect;Landroid/graphics/Rect;FLjava/util/concurrent/Executor;)V

    .line 39
    iget v7, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mTileWidth:I

    .line 42
    iget v8, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mTileHeight:I

    .line 44
    const/4 v9, 0x1

    .line 46
    const/16 v10, 0x1e

    .line 47
    const-wide/16 v11, 0x100

    .line 49
    invoke-static/range {v7 .. v12}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    .line 51
    move-result-object p0

    .line 54
    iput-object p0, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mReader:Landroid/media/ImageReader;

    .line 55
    iput-object p1, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mStartCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 57
    iget-object v0, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 59
    invoke-virtual {p0, v6, v0}, Landroid/media/ImageReader;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 61
    :try_start_0
    iget-object p0, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mConnection:Landroid/view/IScrollCaptureConnection;

    .line 64
    iget-object v0, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mReader:Landroid/media/ImageReader;

    .line 66
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 68
    move-result-object v0

    .line 71
    invoke-interface {p0, v0, v6}, Landroid/view/IScrollCaptureConnection;->startCapture(Landroid/view/Surface;Landroid/view/IScrollCaptureCallbacks;)Landroid/os/ICancellationSignal;

    .line 72
    move-result-object p0

    .line 75
    iput-object p0, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mCancellationSignal:Landroid/os/ICancellationSignal;

    .line 76
    new-instance p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper$$ExternalSyntheticLambda1;

    .line 78
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v6, v0}, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;I)V

    .line 81
    new-instance v1, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper$$ExternalSyntheticLambda2;

    .line 84
    invoke-direct {v1, v0}, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 86
    iget-object v0, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 89
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0, p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 93
    :cond_1
    const/4 p0, 0x1

    .line 96
    iput-boolean p0, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    iget-object v0, v6, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mReader:Landroid/media/ImageReader;

    .line 101
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 103
    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    .line 106
    :goto_0
    const-string p0, "IScrollCaptureCallbacks#onCaptureStarted"

    .line 109
    goto :goto_2

    .line 111
    :cond_2
    :goto_1
    new-instance p0, Landroid/os/DeadObjectException;

    .line 112
    const-string v0, "No active connection!"

    .line 114
    invoke-direct {p0, v0}, Landroid/os/DeadObjectException;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    .line 119
    const-string p0, ""

    .line 122
    :goto_2
    return-object p0
    .line 124
.end method
