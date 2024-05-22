.class public final Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $batteryState:Landroid/hardware/BatteryState;

.field public final synthetic $deviceId:I

.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method public constructor <init>(Landroid/hardware/BatteryState;Lcom/android/systemui/stylus/StylusUsiPowerUI;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$batteryState:Landroid/hardware/BatteryState;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 4
    iput p3, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$deviceId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$batteryState:Landroid/hardware/BatteryState;

    .line 2
    invoke-virtual {v0}, Landroid/hardware/BatteryState;->getCapacity()F

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 8
    iget v1, v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    .line 10
    cmpg-float v0, v0, v1

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$batteryState:Landroid/hardware/BatteryState;

    .line 21
    invoke-virtual {v0}, Landroid/hardware/BatteryState;->getCapacity()F

    .line 23
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    cmpg-float v0, v0, v1

    .line 28
    if-gtz v0, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 33
    iget v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$deviceId:I

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputDeviceId:Ljava/lang/Integer;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 43
    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$batteryState:Landroid/hardware/BatteryState;

    .line 45
    invoke-virtual {v1}, Landroid/hardware/BatteryState;->getCapacity()F

    .line 47
    move-result v1

    .line 50
    iput v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    .line 51
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 53
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    move-result-object v0

    .line 60
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 61
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    new-instance v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;

    .line 73
    invoke-direct {v0, p0}, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    .line 78
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_2
    :goto_1
    return-void
    .line 83
.end method
