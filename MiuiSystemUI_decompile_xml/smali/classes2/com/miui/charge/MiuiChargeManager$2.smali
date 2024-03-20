.class public final Lcom/miui/charge/MiuiChargeManager$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/charge/MiuiChargeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/MiuiChargeManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/charge/MiuiChargeManager$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeManager$2;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/charge/MiuiChargeManager$2;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager$2;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 9
    iput-boolean v1, v0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelWhenBatteryChange:Z

    .line 11
    iget v1, v0, Lcom/miui/charge/MiuiChargeManager;->mRealLevel:I

    .line 13
    iget-object v0, v0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 15
    iget v2, v0, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 17
    if-ge v1, v2, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/miui/charge/MiuiBatteryStatus;->isCharging()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager$2;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 27
    iget v1, v0, Lcom/miui/charge/MiuiChargeManager;->mRealLevel:I

    .line 29
    iget-object v0, v0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 31
    iget v0, v0, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 33
    if-le v1, v0, :cond_2

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager$2;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 37
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 39
    iget v1, p0, Lcom/miui/charge/MiuiChargeManager;->mRealLevel:I

    .line 41
    iput v1, v0, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 43
    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeManager;->notifyBatteryStatusChanged()V

    .line 45
    :cond_2
    return-void

    .line 48
    :goto_0
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager$2;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance v0, Lcom/miui/charge/MiuiChargeManager$4;

    .line 54
    invoke-direct {v0, p0}, Lcom/miui/charge/MiuiChargeManager$4;-><init>(Lcom/miui/charge/MiuiChargeManager;)V

    .line 56
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 59
    new-array v1, v1, [Ljava/lang/Void;

    .line 61
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
