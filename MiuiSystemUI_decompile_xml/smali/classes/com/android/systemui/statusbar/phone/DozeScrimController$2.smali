.class public final Lcom/android/systemui/statusbar/phone/DozeScrimController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->run()V

    .line 21
    return-void

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 25
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 27
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 34
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 36
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 38
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 43
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 45
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 47
    iget v0, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 49
    const-string v3, "out"

    .line 51
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/doze/DozeLog;->tracePulseEvent(ZILjava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 58
    if-nez v0, :cond_0

    .line 60
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    .line 63
    :goto_1
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
