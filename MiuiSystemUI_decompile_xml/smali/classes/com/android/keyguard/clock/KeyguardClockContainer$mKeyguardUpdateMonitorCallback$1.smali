.class public final Lcom/android/keyguard/clock/KeyguardClockContainer$mKeyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/KeyguardClockContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStartedWakingUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Lcom/miui/clock/MiuiClockController$IClockView;->onScreenOn()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method
