.class public final Lcom/android/app/viewcapture/SimpleViewCapture;
.super Lcom/android/app/viewcapture/ViewCapture;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/app/viewcapture/SimpleViewCapture$1;->INSTANCE:Lcom/android/app/viewcapture/SimpleViewCapture$1;

    .line 2
    sget-object v1, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v2, Ljava/util/concurrent/FutureTask;

    .line 9
    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/app/viewcapture/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/Choreographer;

    .line 21
    new-instance v1, Landroid/os/HandlerThread;

    .line 23
    const/4 v2, -0x2

    .line 25
    const-string v3, "MTViewCapture"

    .line 26
    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 31
    new-instance v2, Lcom/android/app/viewcapture/LooperExecutor;

    .line 34
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 36
    move-result-object v1

    .line 39
    invoke-direct {v2, v1}, Lcom/android/app/viewcapture/LooperExecutor;-><init>(Landroid/os/Looper;)V

    .line 40
    invoke-direct {p0, v0, v2}, Lcom/android/app/viewcapture/ViewCapture;-><init>(Landroid/view/Choreographer;Lcom/android/app/viewcapture/LooperExecutor;)V

    .line 43
    return-void
    .line 46
.end method
