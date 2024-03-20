.class public final Lcom/miui/charge/MiuiChargeManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/util/Dumpable;
.implements Lcom/miui/interfaces/ILateInitializer;


# instance fields
.field public final mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

.field public mChargeType:I

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsChargeLevelAnimationRunning:Z

.field public final mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$2;

.field public mNotUpdateLevelWhenBatteryChange:Z

.field public mRealLevel:I

.field public final mUpdateChargingFromPowerCenterRunnable:Lcom/miui/charge/MiuiChargeManager$2;


# direct methods
.method public static -$$Nest$monChargeDeviceTypeChanged(Lcom/miui/charge/MiuiChargeManager;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    if-gez p1, :cond_0

    .line 6
    goto :goto_2

    .line 8
    :cond_0
    iget v0, v0, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 9
    invoke-static {v0, p1}, Lcom/miui/charge/ChargeUtils;->getChargeSpeed(II)I

    .line 11
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 15
    iput v0, v1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 17
    iget v0, v1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 19
    const/16 v2, 0xa

    .line 21
    if-eq v0, v2, :cond_2

    .line 23
    const/16 v2, 0xb

    .line 25
    if-ne v0, v2, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, -0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    iget v0, p0, Lcom/miui/charge/MiuiChargeManager;->mChargeType:I

    .line 32
    :goto_1
    iget v2, v1, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 34
    if-eq v0, v2, :cond_3

    .line 36
    iput p1, v1, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 38
    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeManager;->notifyBatteryStatusChanged()V

    .line 40
    :cond_3
    :goto_2
    return-void
    .line 43
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/miui/charge/MiuiChargeManager$2;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/miui/charge/MiuiChargeManager$2;-><init>(Lcom/miui/charge/MiuiChargeManager;I)V

    .line 15
    iput-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$2;

    .line 18
    new-instance v0, Lcom/miui/charge/MiuiChargeManager$2;

    .line 20
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/miui/charge/MiuiChargeManager$2;-><init>(Lcom/miui/charge/MiuiChargeManager;I)V

    .line 23
    iput-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mUpdateChargingFromPowerCenterRunnable:Lcom/miui/charge/MiuiChargeManager$2;

    .line 26
    const-class v0, Lmiui/stub/MiuiStub$1;

    .line 28
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lmiui/stub/MiuiStub$1;

    .line 34
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$1;->getSystemUIContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/miui/charge/MiuiBatteryStatus;

    .line 42
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, -0x1

    .line 49
    const/4 v8, 0x1

    .line 50
    const/4 v9, -0x1

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    move-object v1, v0

    .line 54
    invoke-direct/range {v1 .. v11}, Lcom/miui/charge/MiuiBatteryStatus;-><init>(IIIIIIIIIZ)V

    .line 55
    iput-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 58
    return-void
    .line 60
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "MiuiChargeManager state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  isChargeAnimationDisabled ="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    sget-boolean p2, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 14
    iget-object p2, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 17
    if-nez p2, :cond_0

    .line 19
    return-void

    .line 21
    :cond_0
    const-string p2, "  mLevel ="

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 27
    iget p2, p2, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 31
    const-string p2, "  mWireState ="

    .line 34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 39
    iget p2, p2, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 43
    const-string p2, "  mChargeSpeed ="

    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 51
    iget p0, p0, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 53
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 55
    return-void
    .line 58
.end method

.method public final notifyBatteryStatusChanged()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "notifyBatteryStatusChanged:  status: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 14
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " isPlugged: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 26
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, " level: "

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 38
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, " wireState: "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 50
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, " chargeSpeed: "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 62
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " mChargeType: "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/miui/charge/MiuiChargeManager;->mChargeType:I

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, " chargeDeviceType: "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 84
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, " maxChargingWattage: "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 96
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, " isCarCharge: "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 108
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->carChargeMode:I

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, " SUPPORT_BROADCAST_QUICK_CHARGE: true"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 123
    const-string v1, "MiuiChargeManager"

    .line 124
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/miui/charge/MiuiBatteryStatus;

    .line 129
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 131
    iget v3, p0, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 133
    iget v4, p0, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 135
    iget v1, p0, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 137
    if-gez v1, :cond_1

    .line 139
    const/4 v1, 0x0

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    const/16 v2, 0x64

    .line 143
    if-le v1, v2, :cond_2

    .line 145
    move v5, v2

    .line 147
    goto :goto_1

    .line 148
    :cond_2
    :goto_0
    move v5, v1

    .line 149
    :goto_1
    iget v6, p0, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 150
    iget v7, p0, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 152
    iget v8, p0, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 154
    iget v9, p0, Lcom/miui/charge/MiuiBatteryStatus;->chargingStatus:I

    .line 156
    iget v10, p0, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 158
    iget v11, p0, Lcom/miui/charge/MiuiBatteryStatus;->carChargeMode:I

    .line 160
    iget-boolean v12, p0, Lcom/miui/charge/MiuiBatteryStatus;->present:Z

    .line 162
    move-object v2, v0

    .line 164
    invoke-direct/range {v2 .. v12}, Lcom/miui/charge/MiuiBatteryStatus;-><init>(IIIIIIIIIZ)V

    .line 165
    const-class p0, Lmiui/stub/MiuiStub$3;

    .line 168
    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    move-result-object p0

    .line 173
    check-cast p0, Lmiui/stub/MiuiStub$3;

    .line 174
    iget-object p0, p0, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 176
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 178
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 180
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 182
    move-result-object p0

    .line 185
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 186
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 188
    const/16 v2, 0x12e

    .line 190
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 192
    move-result-object v0

    .line 195
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 196
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
    .line 201
.end method

.method public final setIsChargeLevelAnimationRunning(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeManager;->mIsChargeLevelAnimationRunning:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mHandler:Landroid/os/Handler;

    .line 8
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$2;

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeManager;->mIsChargeLevelAnimationRunning:Z

    .line 15
    if-eqz v0, :cond_1

    .line 17
    if-nez p1, :cond_1

    .line 19
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelWhenBatteryChange:Z

    .line 22
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mHandler:Landroid/os/Handler;

    .line 24
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$2;

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mHandler:Landroid/os/Handler;

    .line 31
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$2;

    .line 33
    const-wide/16 v2, 0xbb8

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :cond_1
    iput-boolean p1, p0, Lcom/miui/charge/MiuiChargeManager;->mIsChargeLevelAnimationRunning:Z

    .line 40
    return-void
    .line 42
.end method

.method public final start()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    const-string v1, "miui.intent.action.ACTION_QUICK_CHARGE_TYPE"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    const/16 v1, 0x3e9

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 19
    const-class v1, Lcom/miui/charge/MiuiChargeController;

    .line 22
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mContext:Landroid/content/Context;

    .line 27
    new-instance v2, Lcom/miui/charge/MiuiChargeManager$1;

    .line 29
    invoke-direct {v2, p0}, Lcom/miui/charge/MiuiChargeManager$1;-><init>(Lcom/miui/charge/MiuiChargeManager;)V

    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    return-void
    .line 37
.end method
