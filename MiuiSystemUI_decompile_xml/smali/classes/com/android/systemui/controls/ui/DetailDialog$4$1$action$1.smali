.class public final Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;
.implements Lcom/android/wm/shell/taskview/TaskView$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onBackPressedOnTaskRoot(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    .line 4
    return-void
    .line 7
.end method

.method public onDismiss()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/broadcast/BroadcastSender;->closeSystemDialogs()V

    .line 6
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 18
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->pendingIntent:Landroid/app/PendingIntent;

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V

    .line 24
    const/4 p0, 0x0

    .line 27
    return p0
    .line 28
.end method

.method public onInitialized()V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskViewContainer:Landroid/view/View;

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    iget v3, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskWidthPercentWidth:F

    .line 18
    mul-float/2addr v2, v3

    .line 20
    float-to-int v2, v2

    .line 21
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityContext:Landroid/content/Context;

    .line 27
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    .line 30
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    .line 39
    iget-object v1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 42
    iget-object v2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->pendingIntent:Landroid/app/PendingIntent;

    .line 44
    iget-object v3, p0, Lcom/android/systemui/controls/ui/DetailDialog;->fillInIntent:Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v4

    .line 51
    const-class v5, Landroid/view/WindowManager;

    .line 52
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 57
    check-cast v4, Landroid/view/WindowManager;

    .line 58
    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 60
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v5

    .line 67
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 68
    move-result-object v4

    .line 71
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 72
    move-result v6

    .line 75
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 76
    move-result v7

    .line 79
    or-int/2addr v6, v7

    .line 80
    invoke-virtual {v4, v6}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 81
    move-result-object v4

    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object p0

    .line 92
    const v6, 0x7f07022c    # @dimen/controls_detail_dialog_header_height '52.0dp'

    .line 93
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 96
    move-result p0

    .line 99
    new-instance v6, Landroid/graphics/Rect;

    .line 100
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 102
    iget v8, v4, Landroid/graphics/Insets;->left:I

    .line 104
    sub-int/2addr v7, v8

    .line 106
    iget v8, v5, Landroid/graphics/Rect;->top:I

    .line 107
    iget v9, v4, Landroid/graphics/Insets;->top:I

    .line 109
    add-int/2addr v8, v9

    .line 111
    add-int/2addr v8, p0

    .line 112
    iget p0, v5, Landroid/graphics/Rect;->right:I

    .line 113
    iget v9, v4, Landroid/graphics/Insets;->right:I

    .line 115
    sub-int/2addr p0, v9

    .line 117
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 118
    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    .line 120
    sub-int/2addr v5, v4

    .line 122
    invoke-direct {v6, v7, v8, p0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    invoke-virtual {v1, v2, v3, v0, v6}, Lcom/android/wm/shell/taskview/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    .line 126
    return-void
    .line 129
.end method

.method public onReleased()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 2
    iget v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 4
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 10
    move-result-object v0

    .line 13
    iget v2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 14
    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->removeTask(I)Z

    .line 16
    iput v1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 19
    :goto_0
    return-void
    .line 21
.end method

.method public onTaskCreated(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 2
    iput p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 4
    const p1, 0x7f0a0241    # @id/controls_activity_view

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/ViewGroup;

    .line 13
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 17
    return-void
    .line 20
.end method

.method public onTaskRemovalStarted()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 3
    iput v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    .line 7
    return-void
    .line 10
.end method
