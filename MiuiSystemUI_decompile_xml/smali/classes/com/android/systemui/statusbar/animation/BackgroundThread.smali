.class public final Lcom/android/systemui/statusbar/animation/BackgroundThread;
.super Landroid/os/HandlerThread;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Launcher.Background"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 5
    return-void
    .line 8
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/animation/BackgroundThread;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/animation/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/android/systemui/statusbar/animation/BackgroundThread;

    .line 9
    invoke-direct {v1}, Lcom/android/systemui/statusbar/animation/BackgroundThread;-><init>()V

    .line 11
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 14
    new-instance v2, Landroid/os/Handler;

    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 19
    move-result-object v1

    .line 22
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    sput-object v2, Lcom/android/systemui/statusbar/animation/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 26
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/animation/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
    .line 37
.end method
