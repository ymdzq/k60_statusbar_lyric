.class public final synthetic Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

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
    iget v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_3

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 16
    iget v2, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mUserId:I

    .line 18
    iget-object v0, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    move-result-object v0

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 37
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    .line 43
    iget-object v1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 45
    new-instance v2, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;

    .line 47
    const/4 v3, 0x3

    .line 49
    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;I)V

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startExitAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    .line 53
    :goto_0
    return-void

    .line 56
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 57
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 59
    if-nez v0, :cond_1

    .line 61
    goto :goto_1

    .line 63
    :cond_1
    new-instance v1, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;

    .line 64
    const/4 v2, 0x2

    .line 66
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;I)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->mDialogTitle:Landroid/widget/TextView;

    .line 75
    const/16 v0, 0x8

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 79
    :goto_1
    return-void

    .line 82
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 83
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 85
    if-nez v0, :cond_2

    .line 87
    goto :goto_2

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    .line 90
    new-instance v3, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;

    .line 92
    invoke-direct {v3, p0, v1}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;I)V

    .line 94
    invoke-virtual {v2, v0, v3}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startEnterAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    .line 97
    :goto_2
    return-void

    .line 100
    :goto_3
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 101
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    .line 103
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mOnDismissCallback:Ljava/util/function/Consumer;

    .line 106
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    .line 108
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 110
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 112
    move-result-object p0

    .line 115
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 116
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 120
.end method
