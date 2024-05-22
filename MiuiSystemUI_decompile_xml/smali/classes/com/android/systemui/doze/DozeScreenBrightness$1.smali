.class public final Lcom/android/systemui/doze/DozeScreenBrightness$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeScreenBrightness;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeScreenBrightness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->this$0:Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->this$0:Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 2
    iget v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 4
    if-eq v0, p1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    .line 8
    array-length v2, v1

    .line 10
    const/4 v3, 0x2

    .line 11
    if-lt v2, v3, :cond_3

    .line 12
    array-length v2, v1

    .line 14
    if-lt p1, v2, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    aget-object v0, v1, v0

    .line 18
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/hardware/Sensor;

    .line 24
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    .line 26
    aget-object v1, v1, p1

    .line 28
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Landroid/hardware/Sensor;

    .line 34
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 42
    return-void

    .line 44
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 45
    if-eqz v2, :cond_2

    .line 47
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0, v2}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    .line 50
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 53
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    .line 56
    goto :goto_0

    .line 59
    :cond_2
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 62
    iget v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    const-string v4, "DozeScreenBrightness swap {"

    .line 68
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v0, "} => {"

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v0, "}, mRegistered="

    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 91
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    iget-object p1, p1, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 105
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPostureChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPostureChanged$2;

    .line 107
    const/4 v3, 0x0

    .line 109
    iget-object p1, p1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 110
    const-string v4, "DozeLog"

    .line 112
    invoke-virtual {p1, v4, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 114
    move-result-object v0

    .line 117
    invoke-interface {v0, v2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 118
    invoke-interface {v0, p0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 124
    :cond_3
    :goto_1
    return-void
    .line 127
.end method
