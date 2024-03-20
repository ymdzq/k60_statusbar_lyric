.class public final Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mDeviceState:I

.field public mDeviceStateCallback:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

.field public final mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mRotationPolicyWrapper:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    .line 6
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mRotationPolicyWrapper:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 10
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    .line 14
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    .line 16
    invoke-virtual {p6, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Landroid/util/IndentingPrintWriter;

    .line 2
    invoke-direct {p2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string v0, "DeviceStateRotationLockSettingsManager"

    .line 12
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "mPostureRotationLockDefaults: "

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockDefaults:[Ljava/lang/String;

    .line 27
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "mPostureDefaultRotationLockSettings: "

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureDefaultRotationLockSettings:Landroid/util/SparseIntArray;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "mDeviceStateRotationLockSettings: "

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "mPostureRotationLockFallbackSettings: "

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 96
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "mSettableDeviceStates: "

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object p1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mSettableDeviceStates:Ljava/util/List;

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 115
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 119
    const-string p1, "DeviceStateRotationLockSettingController"

    .line 122
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    const-string v0, "mDeviceState: "

    .line 132
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 145
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 149
    return-void
    .line 152
.end method

.method public final onRotationLockStateChanged(Z)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->getRotationLockSetting(I)I

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    move v2, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    sget-object v5, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 21
    new-instance v6, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logRotationLockStateChanged$2;

    .line 23
    invoke-direct {v6, v4}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logRotationLockStateChanged$2;-><init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;)V

    .line 25
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 28
    const-string v7, "DSRotateLockSettingCon"

    .line 30
    const/4 v8, 0x0

    .line 32
    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 33
    move-result-object v6

    .line 36
    invoke-interface {v6, v0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 37
    invoke-interface {v6, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 40
    invoke-interface {v6, v2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 43
    invoke-virtual {v4, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 46
    const/4 v6, -0x1

    .line 49
    if-ne v0, v6, :cond_1

    .line 50
    return-void

    .line 52
    :cond_1
    if-ne p1, v2, :cond_2

    .line 53
    return-void

    .line 55
    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    .line 56
    sget-object v0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logSaveNewRotationLockSetting$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logSaveNewRotationLockSetting$2;

    .line 58
    invoke-virtual {v4, v7, v5, v0, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 60
    move-result-object v0

    .line 63
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 64
    invoke-interface {v0, p0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 67
    invoke-virtual {v4, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 70
    iget-object v0, v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPosturesHelper:Lcom/android/settingslib/devicestate/PosturesHelper;

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/settingslib/devicestate/PosturesHelper;->deviceStateToPosture(I)I

    .line 75
    move-result p0

    .line 78
    iget-object v0, v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    .line 79
    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 81
    move-result v0

    .line 84
    if-ltz v0, :cond_3

    .line 85
    iget-object v0, v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    .line 87
    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    .line 89
    move-result p0

    .line 92
    :cond_3
    iget-object v0, v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    .line 93
    if-eqz p1, :cond_4

    .line 95
    goto :goto_1

    .line 97
    :cond_4
    const/4 v3, 0x2

    .line 98
    :goto_1
    invoke-virtual {v0, p0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    invoke-virtual {v1}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettings()V

    .line 102
    return-void
    .line 105
.end method

.method public final readPersistedSetting(ILjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->getRotationLockSetting(I)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mRotationPolicyWrapper:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    .line 13
    iget-object v3, v2, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    .line 15
    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    .line 17
    move-result v3

    .line 20
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object v5, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 26
    new-instance v6, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;

    .line 28
    invoke-direct {v6, v4}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;-><init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;)V

    .line 30
    const/4 v7, 0x0

    .line 33
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 34
    const-string v8, "DSRotateLockSettingCon"

    .line 36
    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 38
    move-result-object v5

    .line 41
    invoke-interface {v5, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 42
    invoke-interface {v5, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 45
    invoke-interface {v5, v0}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 48
    invoke-interface {v5, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 51
    invoke-interface {v5, v3}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 54
    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 57
    if-nez v0, :cond_1

    .line 60
    return-void

    .line 62
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    .line 63
    if-eq v1, v3, :cond_2

    .line 65
    invoke-virtual {v2, v1}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->setRotationLock(Z)V

    .line 67
    :cond_2
    return-void
    .line 70
.end method
