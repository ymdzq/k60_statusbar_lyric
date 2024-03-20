.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:I

.field public final synthetic f$5:F

.field public final synthetic f$6:Landroid/os/Parcelable;

.field public final synthetic f$7:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$0:I

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$1:Landroid/os/Bundle;

    .line 6
    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$2:I

    .line 8
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$3:Landroid/os/Bundle;

    .line 10
    iput p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$4:I

    .line 12
    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$5:F

    .line 14
    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$6:Landroid/os/Parcelable;

    .line 16
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$7:Lcom/android/internal/logging/InstanceId;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_2

    .line 9
    :pswitch_0
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$0:I

    .line 11
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$1:Landroid/os/Bundle;

    .line 13
    iget v6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$2:I

    .line 15
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$3:Landroid/os/Bundle;

    .line 17
    iget v8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$4:I

    .line 19
    iget v9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$5:F

    .line 21
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$6:Landroid/os/Parcelable;

    .line 23
    move-object v10, v4

    .line 25
    check-cast v10, Landroid/view/RemoteAnimationAdapter;

    .line 26
    iget-object v11, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$7:Lcom/android/internal/logging/InstanceId;

    .line 28
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 30
    iget-object v4, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 32
    iget-object p0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 36
    move-result p1

    .line 39
    iget-object v5, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 40
    if-nez p1, :cond_0

    .line 42
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 44
    move-result p1

    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 50
    move-result p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    invoke-virtual {v5, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 56
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 62
    if-eqz p1, :cond_6

    .line 64
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 68
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 75
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 77
    if-nez v3, :cond_2

    .line 80
    new-instance v3, Landroid/os/Bundle;

    .line 82
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 84
    :cond_2
    if-ne v6, v2, :cond_5

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 89
    move-result p0

    .line 92
    if-nez p0, :cond_3

    .line 93
    invoke-virtual {v5, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 95
    move-result p0

    .line 98
    if-eqz p0, :cond_4

    .line 99
    :cond_3
    const/16 p0, 0xa

    .line 101
    invoke-virtual {v4, v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 103
    :cond_4
    invoke-static {v3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 106
    move-result-object p0

    .line 109
    invoke-static {v10}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    .line 110
    move-result-object v2

    .line 113
    invoke-virtual {p0, v2}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 117
    move-result-object p0

    .line 120
    invoke-static {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 121
    invoke-virtual {p1, v0, p0}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 124
    iget-object p0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 129
    goto :goto_1

    .line 132
    :cond_5
    invoke-static {v3, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 133
    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 136
    new-instance p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 139
    invoke-direct {p0, v0, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(III)V

    .line 141
    iput-object p0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 144
    move-object v5, p1

    .line 146
    invoke-virtual/range {v4 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 147
    goto :goto_1

    .line 150
    :cond_6
    :goto_0
    const-string p0, "StageCoordinator"

    .line 151
    const-string p1, "Failed to enter split screen"

    .line 153
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_1
    return-void

    .line 158
    :goto_2
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$0:I

    .line 159
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$1:Landroid/os/Bundle;

    .line 161
    iget v6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$2:I

    .line 163
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$3:Landroid/os/Bundle;

    .line 165
    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$4:I

    .line 167
    iget v8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$5:F

    .line 169
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$6:Landroid/os/Parcelable;

    .line 171
    move-object v9, v5

    .line 173
    check-cast v9, Landroid/window/RemoteTransition;

    .line 174
    iget-object v10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;->f$7:Lcom/android/internal/logging/InstanceId;

    .line 176
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 178
    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 185
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 187
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 190
    if-ne v6, v2, :cond_b

    .line 192
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 194
    invoke-virtual {v4, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 196
    move-result v4

    .line 199
    if-nez v4, :cond_7

    .line 200
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 202
    move-result p1

    .line 205
    if-eqz p1, :cond_8

    .line 206
    :cond_7
    invoke-virtual {p0, v2, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 208
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 211
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    .line 213
    move-result v2

    .line 216
    if-eqz v2, :cond_9

    .line 217
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 219
    move-result-object p1

    .line 222
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 223
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 225
    :cond_9
    if-eqz v3, :cond_a

    .line 228
    goto :goto_3

    .line 230
    :cond_a
    new-instance v3, Landroid/os/Bundle;

    .line 231
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 233
    :goto_3
    invoke-static {v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 236
    invoke-virtual {v5, v0, v3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 239
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 242
    invoke-virtual {p0, v5, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    .line 244
    goto :goto_5

    .line 247
    :cond_b
    invoke-virtual {p0, v4, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 248
    if-eqz v3, :cond_c

    .line 251
    goto :goto_4

    .line 253
    :cond_c
    new-instance v3, Landroid/os/Bundle;

    .line 254
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 256
    :goto_4
    invoke-static {v3, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 259
    invoke-virtual {v5, v0, v3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 262
    move-object v4, p0

    .line 265
    invoke-virtual/range {v4 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 266
    :goto_5
    return-void

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 270
.end method
