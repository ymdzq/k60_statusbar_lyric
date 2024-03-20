.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public synthetic constructor <init>(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

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
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v3, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;

    .line 19
    const/4 v4, 0x2

    .line 21
    invoke-direct {v3, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;-><init>(I)V

    .line 22
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 31
    if-nez v0, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 36
    if-ne v0, v2, :cond_1

    .line 38
    :goto_0
    move v1, v2

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 41
    xor-int/lit8 v0, v1, 0x1

    .line 43
    const/16 v1, 0xb

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    .line 47
    return-void

    .line 50
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 51
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onInit()V

    .line 53
    return-void

    .line 56
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 57
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onInit()V

    .line 59
    return-void

    .line 62
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 63
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 67
    iget-boolean v3, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 69
    if-nez v3, :cond_2

    .line 71
    goto :goto_3

    .line 73
    :cond_2
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 74
    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 76
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 78
    iget-object v5, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 80
    iget-boolean v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 82
    if-eq v3, v5, :cond_3

    .line 84
    move v1, v2

    .line 86
    :cond_3
    if-eqz v1, :cond_6

    .line 87
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 89
    const/16 v5, 0x8

    .line 91
    if-nez v1, :cond_5

    .line 93
    if-eqz v3, :cond_4

    .line 95
    goto :goto_2

    .line 97
    :cond_4
    move-object v0, v4

    .line 98
    :goto_2
    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 99
    goto :goto_3

    .line 102
    :cond_5
    xor-int/lit8 v0, v3, 0x1

    .line 103
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 105
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 110
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 113
    invoke-virtual {v2, v1, p0, v0, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 115
    :cond_6
    :goto_3
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 120
.end method
