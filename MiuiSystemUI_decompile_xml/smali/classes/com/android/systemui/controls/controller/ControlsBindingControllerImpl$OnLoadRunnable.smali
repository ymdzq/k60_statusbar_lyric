.class public final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;
.super Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final callback:Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;

.field public final list:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->$r8$classId:I

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;)V

    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->list:Ljava/lang/Object;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->callback:Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;Ljava/util/List;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;)V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->list:Ljava/lang/Object;

    .line 3
    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->callback:Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;

    return-void
.end method


# virtual methods
.method public final doRun()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->$r8$classId:I

    .line 2
    const-string v1, "ControlsBindingControllerImpl"

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    const-string v0, "LoadSubscription: Complete and loading controls"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->callback:Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->list:Ljava/lang/Object;

    .line 17
    check-cast p0, Ljava/util/List;

    .line 19
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 21
    return-void

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->callback:Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;

    .line 25
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->list:Ljava/lang/Object;

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-interface {v0, v2}, Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;->error(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 34
    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;->list:Ljava/lang/Object;

    .line 38
    check-cast p0, Ljava/lang/String;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "onError receive from \'"

    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "\': "

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
