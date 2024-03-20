.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $container:Ljava/lang/Object;

.field public final synthetic $pendingIntent:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->$pendingIntent:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->$container:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->taskViewFactory:Ljava/util/Optional;

    .line 11
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 19
    iget-object v3, v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 21
    if-nez v3, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v3

    .line 26
    :goto_0
    new-instance v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;

    .line 27
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->$pendingIntent:Ljava/lang/Object;

    .line 29
    check-cast v4, Landroid/app/PendingIntent;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->$container:Ljava/lang/Object;

    .line 33
    check-cast p0, Landroid/widget/FrameLayout;

    .line 35
    invoke-direct {v3, v2, v4, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/app/PendingIntent;Landroid/widget/FrameLayout;)V

    .line 37
    iget-object p0, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;->this$0:Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 42
    new-instance v4, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;

    .line 44
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 46
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/function/Consumer;)V

    .line 48
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 51
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 57
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 59
    if-nez v0, :cond_1

    .line 61
    goto :goto_2

    .line 63
    :cond_1
    move-object v1, v0

    .line 64
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->$pendingIntent:Ljava/lang/Object;

    .line 68
    check-cast v0, Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 72
    move-result v0

    .line 75
    if-lez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->$container:Ljava/lang/Object;

    .line 78
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;->$pendingIntent:Ljava/lang/Object;

    .line 82
    check-cast p0, Ljava/util/List;

    .line 84
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_2
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 90
.end method
