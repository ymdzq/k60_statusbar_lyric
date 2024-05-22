.class public final Lcom/android/keyguard/ClockEventController$batteryCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$batteryCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$batteryCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    iget-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->isKeyguardVisible:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->isCharging:Z

    .line 8
    if-nez p1, :cond_0

    .line 10
    if-eqz p3, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 18
    move-result-object p2

    .line 21
    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/ClockAnimations;

    .line 22
    move-result-object p2

    .line 25
    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockAnimations;->charge()V

    .line 26
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 29
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/ClockAnimations;

    .line 33
    move-result-object p1

    .line 36
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockAnimations;->charge()V

    .line 37
    :cond_0
    iput-boolean p3, p0, Lcom/android/keyguard/ClockEventController;->isCharging:Z

    .line 40
    return-void
    .line 42
.end method
