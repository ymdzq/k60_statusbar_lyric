.class public final Lcom/miui/charge/MiuiChargeController$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/charge/MiuiChargeController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/MiuiChargeController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/charge/MiuiChargeController$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeController$5;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/charge/MiuiChargeController$5;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController$5;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 8
    iget-boolean v1, v0, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    .line 10
    if-nez v1, :cond_0

    .line 12
    iget-object v0, v0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 14
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isKeyguardShowing()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController$5;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 22
    iget-object v0, v0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 24
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isKeyguardOccluded()Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    const-string v0, "MiuiChargeController"

    .line 32
    const-string v1, "keyguard_screen_off_reason: charge animation"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$5;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 39
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mPowerManager:Landroid/os/PowerManager;

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    move-result-wide v0

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 47
    :cond_0
    return-void

    .line 50
    :goto_0
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$5;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 51
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/miui/charge/MiuiChargeController;->showMissedTip(Z)V

    .line 54
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 58
.end method
