.class public final Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    const-string p1, "FlashlightController"

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "TorchCallback: onTorchModeChanged: enabled: "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->setCameraAvailable(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 35
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 38
    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z

    .line 40
    if-eq v2, p2, :cond_0

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    iput-boolean p2, v1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz p1, :cond_2

    .line 49
    sget-boolean p1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->DEBUG:Z

    .line 51
    if-eqz p1, :cond_1

    .line 53
    const-string p1, "FlashlightController"

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, "setCameraAvailable: dispatchModeChanged("

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ")"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->dispatchModeChanged(Z)V

    .line 82
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0

    .line 88
    :cond_2
    :goto_1
    return-void
    .line 89
.end method

.method public final onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    const-string p1, "FlashlightController"

    .line 12
    const-string v0, "TorchCallback: onTorchModeUnavailable"

    .line 14
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->setCameraAvailable(Z)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final setCameraAvailable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 5
    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mTorchAvailable:Z

    .line 7
    if-eq v2, p1, :cond_0

    .line 9
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mTorchAvailable:Z

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v2, :cond_2

    .line 17
    sget-boolean v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->DEBUG:Z

    .line 19
    if-eqz v0, :cond_1

    .line 21
    const-string v0, "FlashlightController"

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v2, "setCameraAvailable: dispatchAvailabilityChanged("

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, ")"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 48
    const/4 v0, 0x2

    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->dispatchListeners(IZ)V

    .line 51
    :cond_2
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0
    .line 57
.end method
