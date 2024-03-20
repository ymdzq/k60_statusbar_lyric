.class public final Lcom/android/systemui/controls/ui/DetailDialog;
.super Landroid/app/Dialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityContext:Landroid/content/Context;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public detailTaskId:I

.field public final fillInIntent:Landroid/content/Intent;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final pendingIntent:Landroid/app/PendingIntent;

.field public final stateCallback:Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;

.field public final taskView:Lcom/android/wm/shell/taskview/TaskView;

.field public final taskViewContainer:Landroid/view/View;

.field public final taskWidthPercentWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/wm/shell/taskview/TaskView;Landroid/app/PendingIntent;Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1

    .line 1
    const v0, 0x7f140567    # @style/Theme.SystemUI.Dialog.Control.DetailPanel

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityContext:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 10
    iput-object p3, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 12
    iput-object p4, p0, Lcom/android/systemui/controls/ui/DetailDialog;->pendingIntent:Landroid/app/PendingIntent;

    .line 14
    iput-object p6, p0, Lcom/android/systemui/controls/ui/DetailDialog;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 16
    iput-object p7, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 18
    const/4 p2, -0x1

    .line 20
    iput p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p1

    .line 26
    const p2, 0x7f07024d    # @dimen/controls_task_view_width_percentage '1.0'

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 30
    move-result p1

    .line 33
    iput p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskWidthPercentWidth:F

    .line 34
    new-instance p1, Landroid/content/Intent;

    .line 36
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 38
    const-string p2, "controls.DISPLAY_IN_PANEL"

    .line 41
    const/4 p4, 0x1

    .line 43
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    const/high16 p2, 0x80000

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    const/high16 p2, 0x8000000

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->fillInIntent:Landroid/content/Intent;

    .line 57
    new-instance p1, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;

    .line 59
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    .line 61
    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->stateCallback:Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 66
    move-result-object p2

    .line 69
    const/16 p6, 0x20

    .line 70
    invoke-virtual {p2, p6}, Landroid/view/Window;->addFlags(I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 75
    move-result-object p2

    .line 78
    const/high16 p6, 0x20000000

    .line 79
    invoke-virtual {p2, p6}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 81
    const p2, 0x7f0d0079    # @layout/controls_detail_dialog 'res/layout/controls_detail_dialog.xml'

    .line 84
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 87
    const p2, 0x7f0a023f    # @id/control_task_view_container

    .line 90
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    .line 93
    move-result-object p2

    .line 96
    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskViewContainer:Landroid/view/View;

    .line 97
    const p2, 0x7f0a0241    # @id/controls_activity_view

    .line 99
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    .line 102
    move-result-object p2

    .line 105
    check-cast p2, Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    const/4 p6, 0x0

    .line 111
    invoke-virtual {p2, p6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 112
    const p2, 0x7f0a023c    # @id/control_detail_close

    .line 115
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    .line 118
    move-result-object p2

    .line 121
    check-cast p2, Landroid/widget/ImageView;

    .line 122
    new-instance p6, Lcom/android/systemui/controls/ui/DetailDialog$2$1;

    .line 124
    const/4 p7, 0x0

    .line 126
    invoke-direct {p6, p0, p7}, Lcom/android/systemui/controls/ui/DetailDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;I)V

    .line 127
    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const p2, 0x7f0a023e    # @id/control_detail_root

    .line 133
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    .line 136
    move-result-object p2

    .line 139
    new-instance p6, Lcom/android/systemui/controls/ui/DetailDialog$2$1;

    .line 140
    invoke-direct {p6, p0, p4}, Lcom/android/systemui/controls/ui/DetailDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;I)V

    .line 142
    invoke-virtual {p2, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const p2, 0x7f0a023d    # @id/control_detail_open_in_app

    .line 148
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    .line 151
    move-result-object p2

    .line 154
    check-cast p2, Landroid/widget/ImageView;

    .line 155
    new-instance p4, Lcom/android/systemui/controls/ui/DetailDialog$2$1;

    .line 157
    const/4 p6, 0x2

    .line 159
    invoke-direct {p4, p0, p6}, Lcom/android/systemui/controls/ui/DetailDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;I)V

    .line 160
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 166
    move-result-object p2

    .line 169
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 170
    move-result-object p2

    .line 173
    sget-object p4, Lcom/android/systemui/controls/ui/DetailDialog$5;->INSTANCE:Lcom/android/systemui/controls/ui/DetailDialog$5;

    .line 174
    invoke-virtual {p2, p4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 179
    move-result-object p2

    .line 182
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    move-result-object p2

    .line 186
    invoke-static {p2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    .line 187
    move-result p2

    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 193
    move-result-object p0

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 197
    move-result-object p0

    .line 200
    const p2, 0x7f070225    # @dimen/controls_activity_view_corner_radius '@android:dimen/config_displayWhiteBalanceHighLightAmbientColorTemperature'

    .line 201
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 204
    move-result p0

    .line 207
    int-to-float p0, p0

    .line 208
    invoke-virtual {p3, p0}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    .line 209
    :cond_0
    iget-object p0, p5, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 212
    invoke-virtual {p3, p0, p1}, Lcom/android/wm/shell/taskview/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V

    .line 214
    return-void
    .line 217
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 9
    invoke-virtual {v0}, Lcom/android/wm/shell/taskview/TaskView;->release()V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityContext:Landroid/content/Context;

    .line 14
    instance-of v1, v0, Landroid/app/Activity;

    .line 16
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    check-cast v0, Landroid/app/Activity;

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move-object v0, v2

    .line 24
    :goto_0
    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    goto :goto_1

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 42
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v2

    .line 46
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    return-void

    .line 55
    :cond_5
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 56
    return-void
    .line 59
.end method
