.class public final Lcom/android/wifitrackerlib/BaseWifiTracker$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$5;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$5;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$5;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 8
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$5;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 16
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 24
.end method
