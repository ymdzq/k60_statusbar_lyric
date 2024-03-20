.class public final Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController;


# static fields
.field public static final DEBUG:Z

.field public static final FLASH_DEVICES:[Ljava/lang/String;


# instance fields
.field public mBgHandler:Landroid/os/Handler;

.field public mCameraId:Ljava/lang/String;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mContext:Landroid/content/Context;

.field public mFlashDevice:Ljava/lang/String;

.field public mFlashlightEnabled:Z

.field public mForceOff:Z

.field public final mForceOffLightState:I

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mReceiver:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;

.field public final mSingleExecutor:Ljava/util/concurrent/Executor;

.field public mStatusDetecting:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$1;

.field public mTorchAvailable:Z

.field public final mTorchCallback:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;

.field public mValueOn:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "FlashlightController"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->DEBUG:Z

    .line 9
    const-string v0, "/sys/class/leds/flashlight/brightness"

    .line 11
    const-string v1, "/sys/class/leds/spotlight/brightness"

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->FLASH_DEVICES:[Ljava/lang/String;

    .line 19
    return-void
    .line 21
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mForceOffLightState:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iput-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mSingleExecutor:Ljava/util/concurrent/Executor;

    .line 19
    new-instance v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;)V

    .line 23
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mReceiver:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;

    .line 26
    new-instance v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;

    .line 28
    invoke-direct {v0, p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;)V

    .line 30
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mTorchCallback:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;

    .line 33
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mContext:Landroid/content/Context;

    .line 35
    const-string v0, "camera"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p1

    .line 50
    const v0, 0x7f0b0063    # @integer/flash_force_off_light_state '4'

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 54
    move-result p1

    .line 57
    iput p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mForceOffLightState:I

    .line 58
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 61
    if-nez p1, :cond_0

    .line 63
    new-instance p1, Landroid/os/HandlerThread;

    .line 65
    const-string v0, "FlashlightController"

    .line 67
    const/16 v1, 0xa

    .line 69
    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    .line 77
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 79
    move-result-object p1

    .line 82
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mBgHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    .line 88
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    .line 89
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 91
    new-instance p2, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$1;

    .line 93
    const/4 v0, 0x0

    .line 95
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$1;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;I)V

    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    invoke-virtual {p3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 102
    return-void

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    monitor-exit p0

    .line 107
    throw p1
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 2
    sget-boolean v0, Lcom/android/systemui/controlcenter/utils/Constants;->SUPPORT_ANDROID_FLASHLIGHT:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    .line 8
    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->initCameraFlash()V

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 18
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 21
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isAvailable()Z

    .line 32
    move-result v0

    .line 35
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z

    .line 39
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V

    .line 41
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
    .line 47
.end method

.method public final cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    if-ne v1, p1, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    return-void
    .line 34
.end method

.method public final dispatchListeners(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v2, v1, :cond_4

    .line 13
    iget-object v4, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 20
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 27
    const/4 v5, 0x1

    .line 29
    if-eqz v4, :cond_2

    .line 30
    if-nez p1, :cond_0

    .line 32
    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightError()V

    .line 34
    goto :goto_1

    .line 37
    :cond_0
    if-ne p1, v5, :cond_1

    .line 38
    invoke-interface {v4, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V

    .line 40
    goto :goto_1

    .line 43
    :cond_1
    const/4 v5, 0x2

    .line 44
    if-ne p1, v5, :cond_3

    .line 45
    invoke-interface {v4, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    .line 47
    goto :goto_1

    .line 50
    :cond_2
    move v3, v5

    .line 51
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_4
    if-eqz v3, :cond_5

    .line 55
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 58
    :cond_5
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
    .line 65
.end method

.method public final dispatchModeChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setTorchState: enabled: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "FlashlightController"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v0

    .line 27
    const-string/jumbo v1, "torch_state"

    .line 28
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 31
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->dispatchListeners(IZ)V

    .line 35
    return-void
    .line 38
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "FlashlightController state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  mCameraId="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    const-string p2, "  mFlashlightEnabled="

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-boolean p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 24
    const-string p2, "  isSupportAndroidFlashlight="

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    sget-boolean p2, Lcom/android/systemui/controlcenter/utils/Constants;->SUPPORT_ANDROID_FLASHLIGHT:Z

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 34
    const-string p2, "  isAvailable="

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isAvailable()Z

    .line 42
    move-result p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 46
    return-void
    .line 49
.end method

.method public final initCameraFlash()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;I)V

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;->run()V

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public final declared-synchronized isAvailable()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/controlcenter/utils/Constants;->SUPPORT_ANDROID_FLASHLIGHT:Z

    .line 3
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mTorchAvailable:Z

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mForceOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez v2, :cond_1

    .line 14
    if-eqz v0, :cond_1

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_1
    monitor-exit p0

    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public final declared-synchronized isEnabled()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
    .line 9
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 7
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
    .line 14
.end method

.method public final setFlashlight(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mForceOff:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string p1, "FlashlightController"

    .line 6
    const-string/jumbo v0, "setFlashlight: force off state"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;

    .line 14
    const/4 v0, 0x2

    .line 16
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;I)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mSingleExecutor:Ljava/util/concurrent/Executor;

    .line 26
    new-instance v1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda0;

    .line 28
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;Z)V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    return-void
    .line 36
.end method

.method public final setMiuiFlashlight(Z)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    const-string v0, "FlashlightController"

    .line 11
    const-string/jumbo v1, "setFlashModeInternal: no flashlight"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashDevice:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    const-string v0, "FlashlightController"

    .line 29
    const-string/jumbo v1, "setFlashModeInternal: no device node"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    monitor-exit p0

    .line 37
    :goto_0
    const/4 v0, 0x0

    .line 38
    goto :goto_5

    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mStatusDetecting:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$1;

    .line 41
    if-nez v1, :cond_2

    .line 43
    new-instance v1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$1;

    .line 45
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$1;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;I)V

    .line 47
    iput-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mStatusDetecting:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$1;

    .line 50
    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 55
    const-string v1, "FlashlightController"

    .line 57
    const-string/jumbo v2, "setFlashModeInternal: post delay StatusDetectingRunnable"

    .line 59
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 65
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mStatusDetecting:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$1;

    .line 67
    const-wide/16 v3, 0x3e8

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    goto :goto_2

    .line 74
    :cond_3
    const-string v1, "FlashlightController"

    .line 75
    const-string/jumbo v2, "setFlashModeInternal: remove StatusDetectingRunnable"

    .line 77
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 83
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mStatusDetecting:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$1;

    .line 85
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 90
    new-instance v2, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;

    .line 92
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;Z)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    goto :goto_4

    .line 100
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :goto_4
    monitor-exit p0

    .line 104
    :goto_5
    if-eqz v0, :cond_4

    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->dispatchModeChanged(Z)V

    .line 109
    :cond_4
    return-void

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    monitor-exit p0

    .line 114
    throw p1
    .line 115
.end method
