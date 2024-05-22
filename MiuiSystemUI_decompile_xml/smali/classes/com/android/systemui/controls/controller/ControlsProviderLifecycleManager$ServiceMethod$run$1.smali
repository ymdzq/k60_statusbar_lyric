.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

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
    iget v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 9
    const-string v0, "binder died"

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindAndCleanup(Ljava/lang/String;)V

    .line 13
    return-void

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->requiresBound:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;I)V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 28
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 32
    :cond_0
    return-void

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 36
    const-string v2, "package updated"

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindAndCleanup(Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 43
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->lastForPanel:Z

    .line 45
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->bindService(ZZ)V

    .line 47
    return-void

    .line 50
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 51
    const-string v0, "couldn\'t call through binder"

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindAndCleanup(Ljava/lang/String;)V

    .line 55
    return-void

    .line 58
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 59
    const-string v0, "null binding"

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindAndCleanup(Ljava/lang/String;)V

    .line 63
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 68
.end method
