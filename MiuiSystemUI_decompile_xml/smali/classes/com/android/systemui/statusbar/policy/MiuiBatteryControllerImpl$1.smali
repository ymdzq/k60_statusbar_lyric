.class public final Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onRefreshBatteryInfo(Lcom/miui/charge/MiuiBatteryStatus;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiCharge:Z

    .line 4
    invoke-virtual {p1}, Lcom/miui/charge/MiuiBatteryStatus;->isCharging()Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiQuickCharge:Z

    .line 14
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 16
    if-lt v1, v3, :cond_0

    .line 18
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    if-eq v0, v1, :cond_4

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/miui/charge/MiuiBatteryStatus;->isCharging()Z

    .line 25
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiCharge:Z

    .line 29
    if-eqz v0, :cond_3

    .line 31
    iget p1, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 33
    if-lt p1, v3, :cond_2

    .line 35
    move p1, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move p1, v2

    .line 39
    :goto_1
    if-eqz p1, :cond_3

    .line 40
    move v2, v3

    .line 42
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiQuickCharge:Z

    .line 43
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->-$$Nest$mfireChargeStateChanged(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;)V

    .line 45
    :cond_4
    return-void
    .line 48
.end method
