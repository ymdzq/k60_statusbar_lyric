.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/Bundle;

.field public final synthetic f$5:I

.field public final synthetic f$6:F

.field public final synthetic f$7:Landroid/os/Parcelable;

.field public final synthetic f$8:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V
    .locals 0

    .line 1
    iput p10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$0:Landroid/app/PendingIntent;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    .line 8
    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$3:I

    .line 10
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    .line 12
    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$5:I

    .line 14
    iput p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$6:F

    .line 16
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$7:Landroid/os/Parcelable;

    .line 18
    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$8:Lcom/android/internal/logging/InstanceId;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
    .line 25
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    const-string v7, "Adding MULTIPLE_TASK"

    .line 6
    const-string v8, "Cancel entering split as not supporting multi-instances"

    .line 8
    const/high16 v9, 0x8000000

    .line 10
    const/4 v10, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    goto/16 :goto_3

    .line 16
    :pswitch_0
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$0:Landroid/app/PendingIntent;

    .line 18
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 20
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    .line 22
    iget v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$3:I

    .line 24
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    .line 26
    iget v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$5:I

    .line 28
    iget v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$6:F

    .line 30
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$7:Landroid/os/Parcelable;

    .line 32
    move-object/from16 v20, v4

    .line 34
    check-cast v20, Landroid/view/RemoteAnimationAdapter;

    .line 36
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$8:Lcom/android/internal/logging/InstanceId;

    .line 38
    move-object/from16 v4, p1

    .line 40
    check-cast v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {v12}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 50
    iget-object v2, v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 51
    invoke-static {v13, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 56
    invoke-static {v13, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    .line 57
    move-result v2

    .line 60
    invoke-static {v3, v1, v2, v6}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 61
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 67
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    new-instance v1, Landroid/content/Intent;

    .line 73
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 81
    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 85
    const v3, 0x5e7bb0dd

    .line 87
    const/4 v6, 0x0

    .line 90
    invoke-static {v2, v3, v6, v7, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    move/from16 v29, v13

    .line 94
    move-object v13, v1

    .line 96
    move/from16 v1, v29

    .line 97
    goto :goto_0

    .line 99
    :cond_1
    const/4 v6, 0x0

    .line 100
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 101
    if-eqz v1, :cond_2

    .line 103
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 105
    const v2, 0x2f294008

    .line 107
    invoke-static {v1, v2, v6, v8, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_2
    iget-object v1, v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 113
    const v2, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 115
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 118
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    const/4 v13, -0x1

    .line 125
    :cond_3
    move v1, v13

    .line 126
    move-object v13, v10

    .line 127
    :goto_0
    iget-object v2, v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 133
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 135
    if-nez v11, :cond_4

    .line 138
    new-instance v4, Landroid/os/Bundle;

    .line 140
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 142
    goto :goto_1

    .line 145
    :cond_4
    move-object v4, v11

    .line 146
    :goto_1
    const/4 v6, -0x1

    .line 147
    if-ne v1, v6, :cond_5

    .line 148
    const/4 v14, 0x0

    .line 150
    move-object v11, v2

    .line 151
    move-object v15, v4

    .line 152
    move-object/from16 v16, v20

    .line 153
    move-object/from16 v17, v3

    .line 155
    invoke-virtual/range {v11 .. v17}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    .line 157
    goto :goto_2

    .line 160
    :cond_5
    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 161
    invoke-static {v4, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 163
    invoke-virtual {v3, v12, v13, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 166
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 169
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 171
    move-result-object v6

    .line 174
    invoke-direct {v4, v1, v6, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(ILandroid/content/Intent;I)V

    .line 175
    iput-object v4, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 178
    move v4, v14

    .line 180
    move-object v14, v2

    .line 181
    move-object v2, v15

    .line 182
    move-object v15, v3

    .line 183
    move/from16 v16, v1

    .line 184
    move-object/from16 v17, v2

    .line 186
    move/from16 v18, v4

    .line 188
    move/from16 v19, v5

    .line 190
    move-object/from16 v21, v0

    .line 192
    invoke-virtual/range {v14 .. v21}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 194
    :goto_2
    return-void

    .line 197
    :goto_3
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$0:Landroid/app/PendingIntent;

    .line 198
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 200
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    .line 202
    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$3:I

    .line 204
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    .line 206
    iget v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$5:I

    .line 208
    iget v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$6:F

    .line 210
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$7:Landroid/os/Parcelable;

    .line 212
    check-cast v12, Landroid/window/RemoteTransition;

    .line 214
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$8:Lcom/android/internal/logging/InstanceId;

    .line 216
    move-object/from16 v13, p1

    .line 218
    check-cast v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 220
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 225
    move-result-object v14

    .line 228
    iget-object v15, v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 229
    invoke-static {v6, v15}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 231
    move-result-object v10

    .line 234
    invoke-static {v6, v15}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    .line 235
    move-result v15

    .line 238
    invoke-static {v14, v2, v15, v10}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 239
    move-result v2

    .line 242
    if-eqz v2, :cond_9

    .line 243
    invoke-virtual {v13, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 245
    move-result v2

    .line 248
    if-eqz v2, :cond_6

    .line 249
    new-instance v2, Landroid/content/Intent;

    .line 251
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 253
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 259
    if-eqz v8, :cond_a

    .line 261
    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 263
    const v9, 0x5e7bb0dd

    .line 265
    const/4 v10, 0x0

    .line 268
    const/4 v14, 0x0

    .line 269
    invoke-static {v8, v9, v10, v7, v14}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    goto :goto_5

    .line 273
    :cond_6
    iget-object v2, v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 274
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 276
    move-result v7

    .line 279
    if-eqz v7, :cond_7

    .line 280
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 282
    move-result-object v2

    .line 285
    check-cast v2, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 286
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 288
    :cond_7
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 291
    if-eqz v2, :cond_8

    .line 293
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 295
    const v6, 0x2f294008

    .line 297
    const/4 v7, 0x0

    .line 300
    const/4 v9, 0x0

    .line 301
    invoke-static {v2, v6, v7, v8, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 302
    goto :goto_4

    .line 305
    :cond_8
    const/4 v7, 0x0

    .line 306
    :goto_4
    iget-object v2, v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 307
    const v6, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 309
    invoke-static {v2, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 312
    move-result-object v2

    .line 315
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 316
    const/4 v6, -0x1

    .line 319
    :cond_9
    const/4 v2, 0x0

    .line 320
    :cond_a
    :goto_5
    iget-object v7, v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 321
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    new-instance v8, Landroid/window/WindowContainerTransaction;

    .line 326
    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 328
    const/4 v9, -0x1

    .line 331
    if-ne v6, v9, :cond_c

    .line 332
    if-eqz v3, :cond_b

    .line 334
    goto :goto_6

    .line 336
    :cond_b
    new-instance v3, Landroid/os/Bundle;

    .line 337
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 339
    :goto_6
    const/4 v0, 0x0

    .line 342
    invoke-static {v3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 343
    invoke-virtual {v8, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 346
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 349
    invoke-virtual {v0, v8, v12}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    .line 351
    goto :goto_8

    .line 354
    :cond_c
    invoke-virtual {v7, v5, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 355
    if-eqz v3, :cond_d

    .line 358
    goto :goto_7

    .line 360
    :cond_d
    new-instance v3, Landroid/os/Bundle;

    .line 361
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 363
    :goto_7
    iget-object v5, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 366
    invoke-static {v3, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 368
    invoke-virtual {v8, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 371
    move-object/from16 v22, v7

    .line 374
    move-object/from16 v23, v8

    .line 376
    move/from16 v24, v6

    .line 378
    move-object/from16 v25, v4

    .line 380
    move/from16 v26, v11

    .line 382
    move-object/from16 v27, v12

    .line 384
    move-object/from16 v28, v0

    .line 386
    invoke-virtual/range {v22 .. v28}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 388
    :goto_8
    return-void

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 392
.end method
