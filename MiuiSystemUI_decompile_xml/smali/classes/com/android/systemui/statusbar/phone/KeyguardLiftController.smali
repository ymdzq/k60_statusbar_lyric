.class public final Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final asyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public bouncerVisible:Z

.field public final context:Landroid/content/Context;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public isListening:Z

.field public final keyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/phone/KeyguardLiftController$keyguardUpdateMonitorCallback$1;

.field public final listener:Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;

.field public final pickupSensor:Landroid/hardware/Sensor;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final statusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardLiftController$statusBarStateListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 15
    const/16 p1, 0x19

    .line 17
    invoke-virtual {p3, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 19
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    .line 23
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;

    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->listener:Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;

    .line 30
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$keyguardUpdateMonitorCallback$1;

    .line 32
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/phone/KeyguardLiftController$keyguardUpdateMonitorCallback$1;

    .line 37
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$statusBarStateListener$1;

    .line 39
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$statusBarStateListener$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardLiftController$statusBarStateListener$1;

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "KeyguardLiftController:"

    .line 2
    const-string v0, "  pickupSensor: "

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->isListening:Z

    .line 22
    const-string v0, "  isListening: "

    .line 24
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->bouncerVisible:Z

    .line 29
    const-string p2, "  bouncerVisible: "

    .line 31
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 33
    return-void
    .line 36
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.biometrics.face"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    const-class v0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 22
    invoke-static {v1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardLiftController$statusBarStateListener$1;

    .line 29
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/phone/KeyguardLiftController$keyguardUpdateMonitorCallback$1;

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    .line 41
    :cond_0
    return-void
    .line 44
.end method

.method public final updateListeningState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 9
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 17
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 19
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v2, v4

    .line 27
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 28
    move-result v5

    .line 31
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthEnabledForUser(I)Z

    .line 32
    move-result v1

    .line 35
    if-nez v2, :cond_2

    .line 36
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->bouncerVisible:Z

    .line 38
    if-eqz v2, :cond_3

    .line 40
    :cond_2
    if-eqz v1, :cond_3

    .line 42
    goto :goto_1

    .line 44
    :cond_3
    move v3, v4

    .line 45
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->isListening:Z

    .line 46
    if-eq v3, v1, :cond_5

    .line 48
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->isListening:Z

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->listener:Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 54
    if-eqz v3, :cond_4

    .line 56
    invoke-virtual {p0, v1, v0}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 58
    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {p0, v1, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 62
    :cond_5
    :goto_2
    return-void
    .line 65
.end method
