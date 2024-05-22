.class Lcom/android/systemui/doze/DozeSensors$PluginSensor;
.super Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDebounce:J

.field public final mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

.field public final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIJ)V
    .locals 8

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 4
    const/4 v2, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    .line 12
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 15
    iput-wide p6, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mDebounce:J

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final onSensorChanged(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/doze/DozeSensors;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 4
    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    .line 6
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 13
    sget-object v3, Lcom/android/systemui/doze/DozeLogger$logSensorTriggered$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSensorTriggered$2;

    .line 15
    const/4 v4, 0x0

    .line 17
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 18
    const-string v5, "DozeLog"

    .line 20
    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 22
    move-result-object v2

    .line 25
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 26
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 32
    iget-object v1, v0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v2, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;

    .line 36
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeSensors$PluginSensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V

    .line 38
    iget-object p0, v0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 41
    invoke-interface {p0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
    .line 50
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "{mRegistered="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", mRequested="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mDisabled=false, mConfigured="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", mIgnoresSetting="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", mSensor="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo p0, "}"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    return-object p0
    .line 65
.end method

.method public final updateListening()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 11
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->enabledBySetting()Z

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    .line 23
    if-eqz v1, :cond_3

    .line 25
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 27
    if-nez v1, :cond_3

    .line 29
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 31
    iget-object v4, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    .line 33
    check-cast v4, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    const-string v0, "AsyncSensorManager"

    .line 43
    const-string v1, "No plugins registered"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    iget-object v4, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 51
    new-instance v5, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;

    .line 53
    invoke-direct {v5, v0, v1, p0, v2}, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;I)V

    .line 55
    invoke-virtual {v4, v5}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 58
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 61
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 63
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 67
    const-string/jumbo v3, "register plugin sensor"

    .line 69
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 72
    const-string v1, "DozeLog"

    .line 74
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 76
    const/4 v4, 0x0

    .line 78
    const/16 v5, 0x8

    .line 79
    const/4 v6, 0x0

    .line 81
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 82
    goto :goto_1

    .line 85
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 86
    if-eqz v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 90
    iget-object v4, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 92
    new-instance v5, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;

    .line 94
    invoke-direct {v5, v0, v1, p0, v3}, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;I)V

    .line 96
    invoke-virtual {v4, v5}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 99
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 102
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 104
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 106
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 108
    const-string/jumbo v3, "unregister plugin sensor"

    .line 110
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 113
    const-string v1, "DozeLog"

    .line 115
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 117
    const/4 v4, 0x0

    .line 119
    const/16 v5, 0x8

    .line 120
    const/4 v6, 0x0

    .line 122
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 123
    :cond_4
    :goto_1
    return-void
    .line 126
.end method
