.class public final synthetic Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;

    .line 2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v2, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 11
    new-instance v3, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logUpdateDeviceState$2;

    .line 13
    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logUpdateDeviceState$2;-><init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;)V

    .line 15
    const-string v4, "DSRotateLockSettingCon"

    .line 18
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 20
    const/4 v5, 0x0

    .line 22
    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 23
    move-result-object v2

    .line 26
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 27
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 30
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 33
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v1, "updateDeviceState [state="

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "]"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    const-wide/16 v1, 0x1000

    .line 62
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 64
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    .line 67
    if-ne v0, p1, :cond_1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v0, "updateDeviceState"

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->readPersistedSetting(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 78
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 83
    throw p0
    .line 86
.end method
