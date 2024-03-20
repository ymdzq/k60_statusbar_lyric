.class public final Lcom/miui/clock/MiuiClockController$4;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/clock/MiuiClockController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/clock/MiuiClockController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/clock/MiuiClockController$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/clock/MiuiClockController$4;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/miui/clock/MiuiClockController$4;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    const-string p1, "MiuiClockController"

    .line 9
    const-string v1, "onReceive User Switch Broadcast"

    .line 11
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    if-nez p2, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$4;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 31
    const-string v1, "android.intent.extra.user_handle"

    .line 33
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 36
    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Lcom/miui/clock/MiuiClockController;->setCurrentUserId(I)V

    .line 40
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$4;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 43
    invoke-static {p0, v0, v0}, Lcom/miui/clock/MiuiClockController;->access$1800(Lcom/miui/clock/MiuiClockController;ZZ)V

    .line 45
    :cond_1
    :goto_0
    return-void

    .line 48
    :pswitch_1
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$4;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 49
    iget-object p1, p1, Lcom/miui/clock/MiuiClockController;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance p2, Lcom/miui/clock/MiuiClockController$1;

    .line 53
    invoke-direct {p2, v0, p0}, Lcom/miui/clock/MiuiClockController$1;-><init>(ILjava/lang/Object;)V

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void

    .line 61
    :goto_1
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$4;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 62
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mUpdateTimeRunnable:Lcom/miui/clock/MiuiClockController$1;

    .line 66
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 72
.end method
