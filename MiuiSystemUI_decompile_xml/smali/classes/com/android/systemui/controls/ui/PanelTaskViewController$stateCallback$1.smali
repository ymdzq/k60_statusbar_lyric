.class public final Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/taskview/TaskView$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/PanelTaskViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBackPressedOnTaskRoot(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->hide:Lkotlin/jvm/functions/Function0;

    .line 4
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    return-void
    .line 9
.end method

.method public final onInitialized()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->activityContext:Landroid/content/Context;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    .line 7
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setTaskAlwaysOnTop(Z)V

    .line 12
    iget-object v1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 15
    new-instance v2, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;

    .line 17
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;-><init>(Lcom/android/systemui/controls/ui/PanelTaskViewController;Landroid/app/ActivityOptions;)V

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
    .line 25
.end method

.method public final onTaskCreated(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 11
    return-void
    .line 14
.end method

.method public final onTaskRemovalStarted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/PanelTaskViewController;->release()V

    .line 7
    return-void
    .line 10
.end method
