.class public Lcom/android/wm/shell/sosc/SoscInputConsumerController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoscInputConsumerController"


# instance fields
.field private mInputEventReceiver:Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;

.field private final mName:Ljava/lang/String;

.field private mOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final mToken:Landroid/os/IBinder;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOnGestureListener(Lcom/android/wm/shell/sosc/SoscInputConsumerController;)Landroid/view/GestureDetector$SimpleOnGestureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public constructor <init>(Landroid/view/IWindowManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    .line 5
    new-instance p1, Landroid/os/Binder;

    .line 7
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mToken:Landroid/os/IBinder;

    .line 12
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mName:Ljava/lang/String;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "  "

    .line 2
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object p2

    .line 11
    sget-object v1, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->TAG:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, "registered="

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mInputEventReceiver:Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;

    .line 37
    if-eqz p0, :cond_0

    .line 39
    const/4 p0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 44
    return-void
    .line 47
.end method

.method public isRegistered()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mInputEventReceiver:Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public registerInputConsumer()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mInputEventReceiver:Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/view/InputChannel;

    .line 6
    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mName:Ljava/lang/String;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mToken:Landroid/os/IBinder;

    .line 21
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mName:Ljava/lang/String;

    .line 23
    invoke-interface {v1, v2, v4, v3, v0}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    sget-object v2, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->TAG:Ljava/lang/String;

    .line 30
    const-string v3, "Failed to create input consumer"

    .line 32
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :goto_0
    new-instance v1, Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;

    .line 37
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 39
    move-result-object v2

    .line 42
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 43
    move-result-object v3

    .line 46
    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;-><init>(Lcom/android/wm/shell/sosc/SoscInputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 47
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mInputEventReceiver:Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;

    .line 50
    :cond_0
    return-void
    .line 52
.end method

.method public setOnGestureListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 2
    return-void
    .line 4
.end method

.method public unregisterInputConsumer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mInputEventReceiver:Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mName:Ljava/lang/String;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->TAG:Ljava/lang/String;

    .line 16
    const-string v2, "Failed to destroy input consumer"

    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mInputEventReceiver:Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;

    .line 23
    invoke-virtual {v0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    .line 25
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->mInputEventReceiver:Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;

    .line 29
    :cond_0
    return-void
    .line 31
.end method
