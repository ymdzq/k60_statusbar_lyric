.class public final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->this$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->$componentName:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->this$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->$componentName:Ljava/lang/Object;

    .line 16
    check-cast p0, Landroid/content/ComponentName;

    .line 18
    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    .line 20
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    .line 28
    :cond_0
    return-void

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->this$0:Ljava/lang/Object;

    .line 32
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 34
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 40
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->$componentName:Ljava/lang/Object;

    .line 43
    check-cast p0, Ljava/lang/Runnable;

    .line 45
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 47
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 52
.end method
