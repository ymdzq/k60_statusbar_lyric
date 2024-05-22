.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/android/wm/shell/back/BackAnimationController$4;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 16
    new-instance v1, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda1;

    .line 18
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/back/BackAnimationController;I)V

    .line 21
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void

    .line 29
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 30
    check-cast p0, Lcom/android/wm/shell/back/BackAnimationController$4;

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 34
    iget-object v3, v0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    .line 36
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 38
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    .line 40
    move-result v0

    .line 43
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 48
    if-nez v0, :cond_0

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    iput-boolean v2, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    .line 53
    iput-boolean v1, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mAnimationCancelled:Z

    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 57
    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    .line 59
    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->invokeOrCancelBack()V

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 66
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 67
    check-cast p0, Lcom/android/wm/shell/back/BackAnimationController$1;

    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 71
    iget-boolean v3, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    .line 73
    if-eqz v3, :cond_6

    .line 75
    iget-boolean v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    .line 77
    if-eqz v0, :cond_2

    .line 79
    goto :goto_3

    .line 81
    :cond_2
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 82
    if-eqz v0, :cond_3

    .line 84
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 86
    const/4 v3, 0x0

    .line 88
    const v4, -0x68bdd91c

    .line 89
    const-string v5, "Navigation window gone."

    .line 92
    invoke-static {v0, v4, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$1;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 97
    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    .line 99
    if-eqz v0, :cond_4

    .line 101
    goto :goto_2

    .line 103
    :cond_4
    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    .line 104
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    .line 106
    iget-boolean v3, v0, Lcom/android/wm/shell/back/TouchTracker;->mTriggerBack:Z

    .line 108
    if-eqz v3, :cond_5

    .line 110
    iput-boolean v1, v0, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    .line 112
    :cond_5
    iput-boolean v2, v0, Lcom/android/wm/shell/back/TouchTracker;->mTriggerBack:Z

    .line 114
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/back/BackAnimationController;->onGestureFinished(Z)V

    .line 116
    :cond_6
    :goto_3
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 120
.end method
