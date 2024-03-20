.class public final Lcom/android/systemui/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field public static sWakeDisplaySensorState:Z = true


# instance fields
.field public final mAllowPulseTriggers:Z

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mContext:Landroid/content/Context;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

.field public final mHostCallback:Lcom/android/systemui/doze/DozeTriggers$2;

.field public mInAod:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mMachine:Lcom/android/systemui/doze/DozeMachine;

.field public mNotificationPulseTime:J

.field public final mProxCheck:Lcom/android/systemui/util/sensors/ProximityCheck;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field public mWantSensors:Z

.field public mWantTouchScreenSensors:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximityCheck;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/settings/UserTracker;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .line 7
    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 9
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .line 12
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$1;

    .line 14
    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeTriggers$1;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 16
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 19
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$2;

    .line 21
    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeTriggers$2;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 23
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeTriggers$2;

    .line 26
    move-object/from16 v1, p1

    .line 28
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    .line 30
    move-object/from16 v2, p2

    .line 32
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 34
    move-object/from16 v5, p3

    .line 36
    iput-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 38
    move-object/from16 v4, p4

    .line 40
    iput-object v4, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 42
    move-object/from16 v6, p6

    .line 44
    iput-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 46
    const/4 v2, 0x1

    .line 48
    iput-boolean v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    .line 49
    move-object/from16 v2, p15

    .line 51
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 53
    new-instance v15, Lcom/android/systemui/doze/DozeSensors;

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v2

    .line 60
    new-instance v7, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

    .line 61
    invoke-direct {v7, v0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 63
    new-instance v8, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;

    .line 66
    const/4 v1, 0x0

    .line 68
    invoke-direct {v8, v0, v1}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    .line 69
    move-object v1, v15

    .line 72
    move-object/from16 v3, p5

    .line 73
    move-object/from16 v9, p10

    .line 75
    move-object/from16 v10, p8

    .line 77
    move-object/from16 v11, p12

    .line 79
    move-object/from16 v12, p13

    .line 81
    move-object/from16 v13, p17

    .line 83
    move-object/from16 v14, p18

    .line 85
    invoke-direct/range {v1 .. v14}, Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/settings/UserTracker;)V

    .line 87
    iput-object v15, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    .line 90
    move-object/from16 v1, p7

    .line 92
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 94
    move-object/from16 v1, p9

    .line 96
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mProxCheck:Lcom/android/systemui/util/sensors/ProximityCheck;

    .line 98
    move-object/from16 v1, p10

    .line 100
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 102
    move-object/from16 v1, p11

    .line 104
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 106
    move-object/from16 v1, p14

    .line 108
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 110
    move-object/from16 v1, p16

    .line 112
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 114
    move-object/from16 v1, p18

    .line 116
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 118
    return-void
    .line 120
.end method

.method public static canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 8
    if-ne p0, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v2

    .line 15
    :goto_1
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 16
    if-eq p0, v3, :cond_2

    .line 18
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 20
    if-eq p0, v3, :cond_2

    .line 22
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 24
    if-eq p0, v3, :cond_2

    .line 26
    if-eqz v0, :cond_3

    .line 28
    if-eqz p1, :cond_3

    .line 30
    :cond_2
    move v1, v2

    .line 32
    :cond_3
    return v1
    .line 33
.end method

.method public static runIfNotNull(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    :cond_0
    return-void
    .line 7
.end method


# virtual methods
.method public final gentleWakeUp(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 6
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;

    .line 10
    const/4 v2, 0x3

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 29
    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 31
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 38
    invoke-interface {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->requestWakeUp(I)V

    .line 40
    return-void
    .line 43
.end method

.method public onSensor(IFF[F)V
    .locals 16

    .line 1
    move-object/from16 v10, p0

    .line 2
    move/from16 v11, p1

    .line 4
    move-object/from16 v9, p4

    .line 6
    const/4 v0, 0x4

    .line 8
    const/4 v12, 0x0

    .line 9
    const/4 v13, 0x1

    .line 10
    if-ne v11, v0, :cond_0

    .line 11
    move v3, v13

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v12

    .line 15
    :goto_0
    const/16 v0, 0x9

    .line 16
    if-ne v11, v0, :cond_1

    .line 18
    move v4, v13

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v4, v12

    .line 22
    :goto_1
    const/4 v0, 0x3

    .line 23
    if-ne v11, v0, :cond_2

    .line 24
    move v14, v13

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v14, v12

    .line 28
    :goto_2
    const/4 v0, 0x5

    .line 29
    if-ne v11, v0, :cond_3

    .line 30
    move v0, v13

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move v0, v12

    .line 34
    :goto_3
    const/4 v1, 0x7

    .line 35
    if-ne v11, v1, :cond_4

    .line 36
    move v1, v13

    .line 38
    goto :goto_4

    .line 39
    :cond_4
    move v1, v12

    .line 40
    :goto_4
    const/16 v2, 0x8

    .line 41
    if-ne v11, v2, :cond_5

    .line 43
    move v2, v13

    .line 45
    goto :goto_5

    .line 46
    :cond_5
    move v2, v12

    .line 47
    :goto_5
    const/16 v5, 0xa

    .line 48
    if-ne v11, v5, :cond_6

    .line 50
    move v8, v13

    .line 52
    goto :goto_6

    .line 53
    :cond_6
    move v8, v12

    .line 54
    :goto_6
    const/16 v5, 0xb

    .line 55
    if-ne v11, v5, :cond_7

    .line 57
    move v5, v13

    .line 59
    goto :goto_7

    .line 60
    :cond_7
    move v5, v12

    .line 61
    :goto_7
    if-nez v5, :cond_a

    .line 62
    if-nez v1, :cond_8

    .line 64
    if-eqz v2, :cond_9

    .line 66
    :cond_8
    if-eqz v9, :cond_9

    .line 68
    array-length v6, v9

    .line 70
    if-lez v6, :cond_9

    .line 71
    aget v6, v9, v12

    .line 73
    const/4 v7, 0x0

    .line 75
    cmpl-float v6, v6, v7

    .line 76
    if-eqz v6, :cond_9

    .line 78
    goto :goto_8

    .line 80
    :cond_9
    move v6, v12

    .line 81
    goto :goto_9

    .line 82
    :cond_a
    :goto_8
    move v6, v13

    .line 83
    :goto_9
    const/4 v15, 0x0

    .line 84
    if-eqz v1, :cond_c

    .line 85
    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 87
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    .line 89
    move-result v0

    .line 92
    if-eqz v0, :cond_b

    .line 93
    move-object v0, v15

    .line 95
    goto :goto_a

    .line 96
    :cond_b
    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 97
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    .line 99
    move-result-object v0

    .line 102
    :goto_a
    invoke-virtual {v10, v6, v0, v11}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;I)V

    .line 103
    goto :goto_c

    .line 106
    :cond_c
    if-eqz v0, :cond_d

    .line 107
    invoke-virtual {v10, v11, v13, v15}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;)V

    .line 109
    goto :goto_c

    .line 112
    :cond_d
    if-nez v2, :cond_f

    .line 113
    if-eqz v5, :cond_e

    .line 115
    goto :goto_b

    .line 117
    :cond_e
    new-instance v7, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;

    .line 118
    move-object v0, v7

    .line 120
    move-object/from16 v1, p0

    .line 121
    move/from16 v2, p1

    .line 123
    move/from16 v5, p2

    .line 125
    move/from16 v6, p3

    .line 127
    move-object v12, v7

    .line 129
    move v7, v14

    .line 130
    move-object/from16 v9, p4

    .line 131
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeTriggers;IZZFFZZ[F)V

    .line 133
    invoke-virtual {v10, v12, v13, v11}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    .line 136
    goto :goto_c

    .line 139
    :cond_f
    :goto_b
    if-eqz v6, :cond_10

    .line 140
    invoke-virtual {v10, v11, v13, v15}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;)V

    .line 142
    :cond_10
    :goto_c
    if-eqz v14, :cond_13

    .line 145
    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 147
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 149
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 151
    if-nez v0, :cond_13

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 155
    move-result-wide v0

    .line 158
    iget-wide v2, v10, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    .line 159
    sub-long/2addr v0, v2

    .line 161
    const-string v2, "doze.pickup.vibration.threshold"

    .line 162
    const v3, 0x7f0b0059    # @integer/doze_pickup_vibration_threshold '2000'

    .line 164
    iget-object v4, v10, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 167
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 169
    move-result v2

    .line 172
    int-to-long v2, v2

    .line 173
    cmp-long v0, v0, v2

    .line 174
    if-gez v0, :cond_11

    .line 176
    move v12, v13

    .line 178
    goto :goto_d

    .line 179
    :cond_11
    const/4 v12, 0x0

    .line 180
    :goto_d
    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 181
    iget-object v1, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 188
    sget-object v3, Lcom/android/systemui/doze/DozeLogger$logPickupWakeup$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPickupWakeup$2;

    .line 190
    const-string v4, "DozeLog"

    .line 192
    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 194
    invoke-virtual {v1, v4, v2, v3, v15}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 196
    move-result-object v2

    .line 199
    invoke-interface {v2, v12}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 200
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 203
    if-eqz v12, :cond_12

    .line 206
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 208
    goto :goto_e

    .line 210
    :cond_12
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 211
    :goto_e
    iget v1, v0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 213
    add-int/2addr v1, v13

    .line 215
    iput v1, v0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 216
    :cond_13
    return-void
    .line 218
.end method

.method public final onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logWakeDisplay$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logWakeDisplay$2;

    .line 11
    const/4 v3, 0x0

    .line 13
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    const-string v4, "DozeLog"

    .line 16
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v1

    .line 21
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 22
    invoke-interface {v1, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    sput-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    .line 31
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    new-instance p1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;

    .line 36
    invoke-direct {p1, p0, p2, p3}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;I)V

    .line 38
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    .line 41
    goto :goto_1

    .line 44
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 45
    const/4 p3, 0x1

    .line 47
    if-ne p2, p1, :cond_1

    .line 48
    move p1, p3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move p1, v0

    .line 52
    :goto_0
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 53
    if-ne p2, v1, :cond_2

    .line 55
    move v0, p3

    .line 57
    :cond_2
    if-nez v0, :cond_3

    .line 58
    if-nez p1, :cond_3

    .line 60
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 62
    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 64
    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 66
    sget-object p1, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_WAKE_TIMEOUT:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 69
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 71
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 73
    :cond_3
    :goto_1
    return-void
    .line 76
.end method

.method public final proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 4
    check-cast v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->isNear()Ljava/lang/Boolean;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    goto :goto_1

    .line 18
    :cond_0
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 21
    goto :goto_1

    .line 24
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v4

    .line 28
    new-instance p2, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;

    .line 29
    move-object v2, p2

    .line 31
    move-object v3, p0

    .line 32
    move v6, p3

    .line 33
    move-object v7, p1

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/Consumer;)V

    .line 35
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mProxCheck:Lcom/android/systemui/util/sensors/ProximityCheck;

    .line 38
    iget-object p3, p1, Lcom/android/systemui/util/sensors/ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 40
    check-cast p3, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 42
    invoke-virtual {p3}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->isLoaded()Z

    .line 44
    move-result p3

    .line 47
    if-nez p3, :cond_2

    .line 48
    invoke-virtual {p2, v1}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->accept(Ljava/lang/Object;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_2
    iget-object p3, p1, Lcom/android/systemui/util/sensors/ProximityCheck;->mCallbacks:Ljava/util/List;

    .line 54
    check-cast p3, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, p1, Lcom/android/systemui/util/sensors/ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    const/4 p3, 0x1

    .line 63
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 64
    move-result p2

    .line 67
    if-nez p2, :cond_3

    .line 68
    iget-object p2, p1, Lcom/android/systemui/util/sensors/ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 70
    iget-object p3, p1, Lcom/android/systemui/util/sensors/ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;

    .line 72
    invoke-interface {p2, p3}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 74
    iget-object p2, p1, Lcom/android/systemui/util/sensors/ProximityCheck;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 77
    const-wide/16 v0, 0x1f4

    .line 79
    invoke-interface {p2, p1, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 81
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 84
    const-string p1, "DozeTriggers"

    .line 86
    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    .line 88
    :goto_1
    return-void
    .line 91
.end method

.method public final registerCallbacks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 9
    const-string v2, "com.android.systemui.doze.pulse"

    .line 11
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 16
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 18
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 36
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 39
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeTriggers$2;

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 50
    move-result-object v1

    .line 53
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 54
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 58
    return-void
    .line 61
.end method

.method public final requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->extendPulse(I)V

    .line 9
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    const/4 v1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 22
    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    .line 24
    move-result-object v1

    .line 27
    :goto_0
    move-object v5, v1

    .line 28
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 29
    if-ne v5, v1, :cond_1

    .line 31
    const/16 v1, 0x8

    .line 33
    if-ne p1, v1, :cond_1

    .line 35
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 37
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 41
    return-void

    .line 44
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    .line 45
    if-eqz v1, :cond_5

    .line 47
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    .line 49
    if-nez v2, :cond_5

    .line 51
    invoke-static {v5, p2}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    .line 53
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    goto :goto_3

    .line 59
    :cond_2
    const/4 v1, 0x1

    .line 60
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    .line 61
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;

    .line 63
    move-object v2, v0

    .line 65
    move-object v3, p0

    .line 66
    move-object v4, p3

    .line 67
    move v6, p2

    .line 68
    move v7, p1

    .line 69
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;Lcom/android/systemui/doze/DozeMachine$State;ZI)V

    .line 70
    iget-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 73
    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 75
    const v2, 0x7f050075    # @bool/doze_proximity_check_before_pulse 'true'

    .line 77
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 80
    move-result p3

    .line 83
    const-string v2, "doze.pulse.proxcheck"

    .line 84
    invoke-static {v2, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 86
    move-result p3

    .line 89
    if-eqz p3, :cond_4

    .line 90
    if-eqz p2, :cond_3

    .line 92
    goto :goto_1

    .line 94
    :cond_3
    const/4 p2, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    :goto_1
    move p2, v1

    .line 97
    :goto_2
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    .line 98
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 101
    move-result-object p1

    .line 104
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 105
    move-result-object p1

    .line 108
    new-instance p2, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;

    .line 109
    invoke-direct {p2, p0, v1}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    .line 111
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 114
    return-void

    .line 117
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 118
    if-nez v1, :cond_6

    .line 120
    const-string/jumbo p1, "requestPulse - !mAllowPulseTriggers"

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 125
    goto :goto_4

    .line 128
    :cond_6
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    .line 129
    if-eqz p1, :cond_7

    .line 131
    const-string/jumbo p1, "requestPulse - pulsePending"

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 136
    goto :goto_4

    .line 139
    :cond_7
    invoke-static {v5, p2}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    .line 140
    move-result p1

    .line 143
    if-nez p1, :cond_8

    .line 144
    const-string/jumbo p1, "requestPulse - dozeState cannot pulse"

    .line 146
    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/String;)V

    .line 149
    :cond_8
    :goto_4
    invoke-static {p3}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 152
    return-void
    .line 155
.end method

.method public final setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 2
    return-void
    .line 4
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 6
    if-eq p2, p1, :cond_0

    .line 8
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 10
    if-eq p2, p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeTriggers;->registerCallbacks()V

    .line 14
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    .line 21
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    packed-switch p1, :pswitch_data_0

    .line 25
    :pswitch_0
    goto/16 :goto_1

    .line 28
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    .line 30
    goto/16 :goto_1

    .line 32
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 37
    move-result-wide p1

    .line 40
    iput-wide p1, v0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    .line 41
    goto :goto_1

    .line 43
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    .line 44
    goto :goto_1

    .line 46
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mInAod:Z

    .line 51
    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    .line 53
    if-nez p1, :cond_2

    .line 55
    const/4 p1, 0x7

    .line 57
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;I)V

    .line 58
    goto :goto_1

    .line 61
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .line 62
    iget-boolean p2, p1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    .line 64
    if-nez p2, :cond_1

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 69
    invoke-virtual {p2, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    iput-boolean v1, p1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 76
    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 83
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 86
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeTriggers$2;

    .line 88
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 98
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 100
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 102
    invoke-virtual {p2, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 104
    invoke-virtual {v0, v1, v1, v1}, Lcom/android/systemui/doze/DozeSensors;->setListening(ZZZ)V

    .line 107
    iget-object p1, v0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    check-cast p1, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 115
    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->pause()V

    .line 117
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mInAod:Z

    .line 124
    goto :goto_1

    .line 126
    :pswitch_6
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mInAod:Z

    .line 131
    goto :goto_1

    .line 133
    :pswitch_7
    sput-boolean v2, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeTriggers;->registerCallbacks()V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 142
    move-result-wide p1

    .line 145
    iput-wide p1, v0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    .line 146
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    .line 148
    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    .line 150
    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mInAod:Z

    .line 152
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/doze/DozeSensors;->setListening(ZZZ)V

    .line 154
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 158
.end method
