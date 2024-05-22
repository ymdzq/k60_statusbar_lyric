.class public final synthetic Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

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
    iget v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_3

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    .line 10
    return-void

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    .line 16
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    .line 25
    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    .line 27
    new-instance v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;

    .line 29
    const/4 v3, 0x4

    .line 31
    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startExitAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    .line 35
    :goto_0
    return-void

    .line 38
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    .line 41
    if-nez v0, :cond_1

    .line 43
    goto :goto_1

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    .line 46
    new-instance v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;

    .line 48
    const/4 v3, 0x2

    .line 50
    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V

    .line 51
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    .line 57
    new-instance v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda1;

    .line 59
    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;Landroid/app/TaskInfo;)V

    .line 61
    const v1, 0x7f0a04ef    # @id/letterbox_restart_dialog_checkbox

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/CheckBox;

    .line 71
    new-instance v3, Lcom/android/wm/shell/compatui/RestartDialogLayout$$ExternalSyntheticLambda2;

    .line 73
    invoke-direct {v3, v2, v1}, Lcom/android/wm/shell/compatui/RestartDialogLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda1;Landroid/widget/CheckBox;)V

    .line 75
    const v1, 0x7f0a04f5    # @id/letterbox_restart_dialog_restart_button

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 84
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    .line 88
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->getDialogTitle()Landroid/widget/TextView;

    .line 90
    move-result-object p0

    .line 93
    const/16 v0, 0x8

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 96
    :goto_1
    return-void

    .line 99
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 100
    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    .line 102
    if-nez v0, :cond_2

    .line 104
    goto :goto_2

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    .line 107
    new-instance v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;

    .line 109
    const/4 v3, 0x1

    .line 111
    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V

    .line 112
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startEnterAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    .line 115
    :goto_2
    return-void

    .line 118
    :goto_3
    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 119
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    .line 121
    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mOnDismissCallback:Ljava/util/function/Consumer;

    .line 124
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    .line 126
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 128
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 130
    move-result-object p0

    .line 133
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 134
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 138
.end method
