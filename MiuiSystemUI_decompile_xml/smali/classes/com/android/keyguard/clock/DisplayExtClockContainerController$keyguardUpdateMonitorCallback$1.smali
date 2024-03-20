.class public final Lcom/android/keyguard/clock/DisplayExtClockContainerController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/DisplayExtClockContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/DisplayExtClockContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/clock/DisplayExtClockContainerController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTimeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/clock/DisplayExtClockContainerController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast p0, Lcom/android/keyguard/clock/DisplayExtClockContainer;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainer;->mClockView:Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateTime()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final onUserSwitchComplete(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/clock/DisplayExtClockContainerController;

    .line 2
    iget v0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->userId:I

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iput p1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->userId:I

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->residentTimezoneObserver:Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;->onChange(Z)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
