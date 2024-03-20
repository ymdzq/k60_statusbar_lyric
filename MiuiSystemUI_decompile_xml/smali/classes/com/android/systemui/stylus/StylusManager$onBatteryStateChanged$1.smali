.class public final Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $batteryState:Landroid/hardware/BatteryState;

.field public final synthetic $deviceId:I

.field public final synthetic $eventTimeMillis:J

.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusManager;Landroid/hardware/BatteryState;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$batteryState:Landroid/hardware/BatteryState;

    .line 4
    iput p3, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$deviceId:I

    .line 6
    iput-wide p4, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$eventTimeMillis:J

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/stylus/StylusManager;->hasStarted:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 9
    const-class v0, Lcom/android/systemui/stylus/StylusManager;

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$batteryState:Landroid/hardware/BatteryState;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {v1}, Landroid/hardware/BatteryState;->isPresent()Z

    .line 27
    move-result v0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v1}, Landroid/hardware/BatteryState;->getCapacity()F

    .line 34
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    cmpl-float v0, v0, v1

    .line 39
    if-lez v0, :cond_1

    .line 41
    move v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    .line 46
    iget-object v3, v1, Lcom/android/systemui/stylus/StylusManager;->inputDeviceBtSessionIdMap:Ljava/util/Map;

    .line 48
    check-cast v3, Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 52
    move-result v3

    .line 55
    xor-int/lit8 v9, v3, 0x1

    .line 56
    if-eqz v0, :cond_2

    .line 58
    iget-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    .line 60
    if-nez v2, :cond_2

    .line 62
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 64
    const-class v2, Lcom/android/systemui/stylus/StylusManager;

    .line 66
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 68
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 72
    iget-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 75
    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 77
    move-result-object v8

    .line 80
    iput-object v8, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    .line 81
    iget-object v4, v1, Lcom/android/systemui/stylus/StylusManager;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 83
    sget-object v5, Lcom/android/systemui/stylus/StylusUiEvent;->USI_STYLUS_BATTERY_PRESENCE_FIRST_DETECTED:Lcom/android/systemui/stylus/StylusUiEvent;

    .line 85
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    invoke-interface/range {v4 .. v9}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    .line 89
    goto :goto_1

    .line 92
    :cond_2
    if-nez v0, :cond_3

    .line 93
    iget-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    .line 95
    if-eqz v2, :cond_3

    .line 97
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 99
    const-class v2, Lcom/android/systemui/stylus/StylusManager;

    .line 101
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 103
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 107
    iget-object v4, v1, Lcom/android/systemui/stylus/StylusManager;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 110
    sget-object v5, Lcom/android/systemui/stylus/StylusUiEvent;->USI_STYLUS_BATTERY_PRESENCE_REMOVED:Lcom/android/systemui/stylus/StylusUiEvent;

    .line 112
    const/4 v6, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    iget-object v8, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    .line 116
    invoke-interface/range {v4 .. v9}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    .line 118
    const/4 v2, 0x0

    .line 121
    iput-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    .line 122
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    .line 126
    invoke-virtual {v0}, Lcom/android/systemui/stylus/StylusManager;->onStylusUsed()V

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    .line 131
    new-instance v1, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;

    .line 133
    iget v2, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$deviceId:I

    .line 135
    iget-wide v3, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$eventTimeMillis:J

    .line 137
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$batteryState:Landroid/hardware/BatteryState;

    .line 139
    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;-><init>(IJLandroid/hardware/BatteryState;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    .line 144
    return-void
    .line 147
.end method
