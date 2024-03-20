.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Landroid/app/PendingIntent;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:Landroid/window/RemoteTransition;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$0:Landroid/app/PendingIntent;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$1:Landroid/app/PendingIntent;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$2:Landroid/os/Bundle;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$3:Landroid/window/RemoteTransition;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$0:Landroid/app/PendingIntent;

    .line 2
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$1:Landroid/app/PendingIntent;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$2:Landroid/os/Bundle;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$3:Landroid/window/RemoteTransition;

    .line 8
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 15
    if-nez v1, :cond_0

    .line 17
    goto/16 :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 25
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 31
    move-result-object p0

    .line 34
    :cond_1
    move-object v11, p0

    .line 35
    const/4 p0, -0x1

    .line 36
    if-eqz v0, :cond_2

    .line 37
    const-string/jumbo v1, "taskId1"

    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 42
    move-result v6

    .line 45
    const-string/jumbo v1, "taskId2"

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 49
    move-result v7

    .line 52
    if-eq v6, p0, :cond_2

    .line 53
    if-eq v7, p0, :cond_2

    .line 55
    iget-object v5, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 57
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitWithIntentsForMiui(IILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/window/RemoteTransition;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 78
    move-result-object v1

    .line 81
    if-eqz v0, :cond_6

    .line 82
    if-nez v1, :cond_3

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    filled-new-array {p0, p0}, [I

    .line 87
    move-result-object v2

    .line 90
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda6;

    .line 91
    invoke-direct {v5, v2, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda6;-><init>([ILandroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 93
    iget-object v6, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 96
    invoke-virtual {v6, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 98
    move-result-object v5

    .line 101
    const/4 v6, 0x0

    .line 102
    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object v5

    .line 106
    check-cast v5, Ljava/lang/Boolean;

    .line 107
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    move-result v5

    .line 112
    const/4 v6, 0x0

    .line 113
    if-nez v5, :cond_4

    .line 114
    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 116
    const p1, 0x7f1303a0    # @string/dock_forced_resizable 'App may not work with split screen'

    .line 118
    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 121
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 125
    goto :goto_0

    .line 128
    :cond_4
    aget v6, v2, v6

    .line 129
    if-eq v6, p0, :cond_5

    .line 131
    iget-object v5, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 133
    const/4 p0, 0x1

    .line 135
    aget v7, v2, p0

    .line 136
    const/4 v8, 0x0

    .line 138
    const/4 v9, 0x0

    .line 139
    const/4 v10, 0x0

    .line 140
    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitWithIntentsForMiui(IILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/window/RemoteTransition;)V

    .line 141
    goto :goto_0

    .line 144
    :cond_5
    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 145
    const/4 p1, -0x1

    .line 147
    const/4 v2, -0x1

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v5

    .line 152
    move-object v0, p0

    .line 153
    move v1, p1

    .line 154
    move-object v6, v11

    .line 155
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitWithIntentsForMiui(IILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/window/RemoteTransition;)V

    .line 156
    :cond_6
    :goto_0
    return-void
    .line 159
.end method
