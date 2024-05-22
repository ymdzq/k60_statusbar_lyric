.class public final Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatterySaveModeChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->onChange(Z)V

    .line 13
    return-void

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 17
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->-$$Nest$mfireChargeStateChanged(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;)V

    .line 19
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
