.class public final Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;
.super Landroid/view/IRemoteAnimationRunner$Default;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/CrossActivityAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 2
    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Default;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityAnimation;->finishAnimation()V

    .line 4
    return-void
    .line 7
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 4

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 2
    const/4 p3, 0x0

    .line 4
    const/4 p4, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 8
    const v0, 0xb4aa7a9

    .line 10
    const-string v1, "Start back to activity animation."

    .line 13
    invoke-static {p1, v0, p4, v1, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    array-length p1, p2

    .line 18
    move v0, p4

    .line 19
    :goto_0
    if-ge v0, p1, :cond_3

    .line 20
    aget-object v1, p2, v0

    .line 22
    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 24
    const/4 v3, 0x1

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 29
    iput-object v1, v3, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 31
    :cond_1
    if-nez v2, :cond_2

    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 35
    iput-object v1, v2, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 37
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 42
    iget-object p2, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 44
    if-eqz p2, :cond_5

    .line 46
    iget-object p2, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 48
    if-nez p2, :cond_4

    .line 50
    goto :goto_1

    .line 52
    :cond_4
    iget-object p2, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 53
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 55
    iget-object p3, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 58
    iget-object p3, p3, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 60
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 62
    move-result-object p3

    .line 65
    iget-object v0, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {v0, p4, p4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 71
    iget-object p3, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 74
    iget-object p3, p3, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 76
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 78
    move-result-object p3

    .line 81
    iget-object p4, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 82
    iget-object p4, p4, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 84
    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 86
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 88
    move-result p4

    .line 91
    iget-object p1, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 92
    invoke-virtual {p1, p3, p4, p2}, Lcom/android/wm/shell/back/BackAnimationBackground;->ensureBackground(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    .line 94
    goto :goto_2

    .line 97
    :cond_5
    :goto_1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 98
    if-eqz p1, :cond_6

    .line 100
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 102
    const p2, -0x62eae75d

    .line 104
    const-string v0, "Entering target or closing target is null."

    .line 107
    invoke-static {p1, p2, p4, v0, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 112
    iput-object p5, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 114
    return-void
    .line 116
.end method
