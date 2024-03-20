.class final Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $batteryState:Landroid/hardware/BatteryState;

.field final synthetic $deviceId:I

.field final synthetic $eventTimeMillis:J


# direct methods
.method public constructor <init>(IJLandroid/hardware/BatteryState;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$deviceId:I

    .line 2
    iput-wide p2, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$eventTimeMillis:J

    .line 4
    iput-object p4, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$batteryState:Landroid/hardware/BatteryState;

    .line 6
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/stylus/StylusManager$StylusCallback;

    .line 2
    iget v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$deviceId:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$batteryState:Landroid/hardware/BatteryState;

    .line 6
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/stylus/StylusManager$StylusCallback;->onStylusUsiBatteryStateChanged(ILandroid/hardware/BatteryState;)V

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    return-object p0
    .line 13
.end method
