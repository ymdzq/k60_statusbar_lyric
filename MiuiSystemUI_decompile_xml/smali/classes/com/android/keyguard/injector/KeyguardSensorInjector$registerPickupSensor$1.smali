.class public final Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "KeyguardSensorInjector"

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_2

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string/jumbo v0, "unregister large area touch sensor"

    .line 18
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 24
    iput-object v2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mLargeAreaTouchSensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 30
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 32
    return-void

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 36
    iget-object v2, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    .line 38
    if-nez v2, :cond_0

    .line 40
    iget-object v2, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    iget v4, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->LARGE_AREA_TOUCH_SENSOR:I

    .line 44
    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 46
    move-result-object v2

    .line 49
    iput-object v2, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 52
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    .line 54
    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "register large area touch sensor"

    .line 58
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 66
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mLargeAreaTouchSensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    .line 70
    invoke-virtual {v0, v2, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 72
    :cond_0
    return-void

    .line 75
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 76
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardSensorInjector;->unregisterProximitySensor()V

    .line 78
    return-void

    .line 81
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 82
    iget-object v4, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 84
    if-nez v4, :cond_4

    .line 86
    iget-object v4, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 88
    iget v5, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->WAKEUP_AND_SLEEP_SENSOR_XIAOMI:I

    .line 90
    const/4 v6, 0x1

    .line 92
    invoke-virtual {v4, v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 93
    move-result-object v4

    .line 96
    iput-object v4, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 99
    iget-object v4, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 101
    if-eqz v4, :cond_1

    .line 103
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->WAKEUP_AND_SLEEP_SENSOR_NAME1:Ljava/lang/String;

    .line 105
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 110
    invoke-static {v0, v4}, Lkotlin/text/StringsKt__StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    move-result v0

    .line 114
    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 117
    iget-object v4, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->WAKEUP_AND_SLEEP_SENSOR_NAME2:Ljava/lang/String;

    .line 119
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 121
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 129
    invoke-static {v4, v0}, Lkotlin/text/StringsKt__StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    move-result v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    goto :goto_0

    .line 136
    :cond_1
    const/4 v6, 0x0

    .line 137
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    const-string/jumbo v0, "register pickup sensor"

    .line 145
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 153
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mPickupSensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

    .line 155
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 157
    invoke-virtual {v0, v2, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 159
    goto :goto_1

    .line 162
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 163
    iput-object v2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 165
    :cond_4
    :goto_1
    return-void

    .line 167
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    const-string/jumbo v0, "unregister pickup sensor"

    .line 173
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 179
    iput-object v2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mPickupSensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 185
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 187
    return-void

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 192
.end method
