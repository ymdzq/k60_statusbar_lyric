.class public final synthetic Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v1, "FlashlightController"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v3, "setFlashlight "

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    const-string v3, " "

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    sget-boolean v3, Lcom/android/systemui/controlcenter/utils/Constants;->SUPPORT_ANDROID_FLASHLIGHT:Z

    .line 27
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 29
    if-eqz v3, :cond_5

    .line 32
    const/4 v1, 0x0

    .line 34
    move v2, v1

    .line 35
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    .line 36
    if-nez v3, :cond_0

    .line 38
    const/4 v4, 0x2

    .line 40
    if-ge v2, v4, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->initCameraFlash()V

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    if-eqz v3, :cond_4

    .line 49
    const-string/jumbo v2, "setNormalFlashlight: enabled: "

    .line 51
    monitor-enter v0

    .line 54
    :try_start_0
    iget-boolean v3, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mTorchAvailable:Z

    .line 55
    if-nez v3, :cond_1

    .line 57
    const-string v1, "FlashlightController"

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    const-string p0, ", torchAvailable: "

    .line 69
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-boolean p0, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mTorchAvailable:Z

    .line 74
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v0

    .line 86
    goto :goto_3

    .line 87
    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z

    .line 88
    const/4 v3, 0x1

    .line 90
    if-eq v2, p0, :cond_2

    .line 91
    iput-boolean p0, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 95
    iget-object v4, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    .line 97
    invoke-virtual {v2, v4, p0}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    .line 103
    :try_start_2
    const-string v4, "FlashlightController"

    .line 104
    const-string v5, "Couldn\'t set torch mode"

    .line 106
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    iput-boolean v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z

    .line 111
    move v2, v3

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    :goto_1
    move v2, v1

    .line 115
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    if-eqz v2, :cond_3

    .line 117
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->dispatchListeners(IZ)V

    .line 119
    goto :goto_3

    .line 122
    :cond_3
    invoke-virtual {v0, p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->dispatchModeChanged(Z)V

    .line 123
    goto :goto_3

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    throw p0

    .line 129
    :cond_4
    const-string v0, "FlashlightController"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v2, "setFlashlight: enabled: "

    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    const-string p0, ", could not initialize cameraId"

    .line 143
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 151
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    goto :goto_3

    .line 155
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->setMiuiFlashlight(Z)V

    .line 156
    :goto_3
    return-void
    .line 159
.end method
