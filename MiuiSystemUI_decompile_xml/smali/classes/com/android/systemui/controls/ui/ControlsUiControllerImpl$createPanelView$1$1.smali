.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $container:Landroid/widget/FrameLayout;

.field public final synthetic $pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/app/PendingIntent;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;->$container:Landroid/widget/FrameLayout;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/android/wm/shell/taskview/TaskView;

    .line 2
    iget-object v6, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 4
    new-instance v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 6
    iget-object v0, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    move-object v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    :goto_0
    iget-object v8, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 16
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    .line 18
    new-instance v5, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1$1;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 24
    if-nez v0, :cond_1

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    move-object v1, v0

    .line 29
    :goto_1
    invoke-direct {v5, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1$1;-><init>(Ljava/lang/Object;)V

    .line 30
    move-object v0, v7

    .line 33
    move-object v1, v2

    .line 34
    move-object v2, v8

    .line 35
    move-object v4, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/ui/PanelTaskViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/app/PendingIntent;Lcom/android/wm/shell/taskview/TaskView;Lkotlin/jvm/functions/Function0;)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1$1;->$container:Landroid/widget/FrameLayout;

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    iget-object p0, v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;->stateCallback:Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;

    .line 45
    invoke-virtual {p1, v8, p0}, Lcom/android/wm/shell/taskview/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V

    .line 47
    iput-object v7, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 50
    return-void
    .line 52
.end method
