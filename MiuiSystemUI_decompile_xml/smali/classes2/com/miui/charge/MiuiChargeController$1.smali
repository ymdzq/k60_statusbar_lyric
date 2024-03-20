.class public final Lcom/miui/charge/MiuiChargeController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/MiuiChargeController;


# direct methods
.method public constructor <init>(Lcom/miui/charge/MiuiChargeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeController$1;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onRefreshBatteryInfo(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/miui/charge/MiuiBatteryStatus;

    .line 2
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$1;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 4
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 6
    iget v0, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 8
    iput v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/miui/charge/MiuiChargeController;->checkBatteryStatus(Lcom/miui/charge/MiuiBatteryStatus;Z)V

    .line 13
    return-void
    .line 16
.end method
