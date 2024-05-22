.class public final Lcom/miui/charge/MiuiChargeController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
