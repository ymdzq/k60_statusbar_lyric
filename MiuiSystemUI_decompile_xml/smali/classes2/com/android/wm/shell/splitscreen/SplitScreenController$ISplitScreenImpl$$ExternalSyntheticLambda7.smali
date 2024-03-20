.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:I

.field public final synthetic f$10:Landroid/os/Parcelable;

.field public final synthetic f$11:Lcom/android/internal/logging/InstanceId;

.field public final synthetic f$2:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Landroid/app/PendingIntent;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$7:Landroid/os/Bundle;

.field public final synthetic f$8:I

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V
    .locals 0

    .line 1
    iput p13, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$0:Landroid/app/PendingIntent;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$2:Landroid/content/pm/ShortcutInfo;

    .line 8
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$3:Landroid/os/Bundle;

    .line 10
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$4:Landroid/app/PendingIntent;

    .line 12
    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$5:I

    .line 14
    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$6:Landroid/content/pm/ShortcutInfo;

    .line 16
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$7:Landroid/os/Bundle;

    .line 18
    iput p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$8:I

    .line 20
    iput p10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$9:F

    .line 22
    iput-object p11, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$10:Landroid/os/Parcelable;

    .line 24
    iput-object p12, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$11:Lcom/android/internal/logging/InstanceId;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
    .line 31
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    const-string v8, "Adding MULTIPLE_TASK"

    .line 6
    const-string v9, "Cancel entering split as not supporting multi-instances"

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 10
    goto/16 :goto_5

    .line 13
    :pswitch_0
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$0:Landroid/app/PendingIntent;

    .line 15
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 17
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$2:Landroid/content/pm/ShortcutInfo;

    .line 19
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$3:Landroid/os/Bundle;

    .line 21
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$4:Landroid/app/PendingIntent;

    .line 23
    iget v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$5:I

    .line 25
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$6:Landroid/content/pm/ShortcutInfo;

    .line 27
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$7:Landroid/os/Bundle;

    .line 29
    iget v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$8:I

    .line 31
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$9:F

    .line 33
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$10:Landroid/os/Parcelable;

    .line 35
    move-object/from16 v24, v6

    .line 37
    check-cast v24, Landroid/view/RemoteAnimationAdapter;

    .line 39
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$11:Lcom/android/internal/logging/InstanceId;

    .line 41
    move-object/from16 v6, p1

    .line 43
    check-cast v6, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 45
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v11}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 50
    move-result-object v7

    .line 53
    invoke-static {v12}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 57
    invoke-static {v7, v1, v14, v5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 58
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    invoke-virtual {v6, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 64
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Landroid/content/Intent;

    .line 70
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    const/high16 v5, 0x8000000

    .line 75
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    new-instance v7, Landroid/content/Intent;

    .line 80
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 82
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 88
    if-eqz v5, :cond_0

    .line 90
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 92
    move-object/from16 p0, v1

    .line 94
    const/4 v1, 0x0

    .line 96
    const v9, 0x5e7bb0dd

    .line 97
    const/4 v14, 0x0

    .line 100
    invoke-static {v5, v9, v14, v8, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    goto :goto_0

    .line 104
    :cond_0
    move-object/from16 p0, v1

    .line 105
    :goto_0
    move-object/from16 v19, v7

    .line 107
    move-object/from16 v18, v12

    .line 109
    move-object/from16 v12, p0

    .line 111
    goto :goto_1

    .line 113
    :cond_1
    const/4 v1, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 116
    if-eqz v5, :cond_2

    .line 118
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 120
    const v7, 0x2f294008

    .line 122
    invoke-static {v5, v7, v14, v9, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_2
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 128
    const v5, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 130
    invoke-static {v1, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 133
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 137
    const/4 v12, 0x0

    .line 140
    :cond_3
    move-object/from16 v18, v12

    .line 141
    const/4 v12, 0x0

    .line 143
    const/16 v19, 0x0

    .line 144
    :goto_1
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 151
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 153
    if-nez v10, :cond_4

    .line 156
    new-instance v6, Landroid/os/Bundle;

    .line 158
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 160
    move-object v14, v6

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    move-object v14, v10

    .line 165
    :goto_2
    if-nez v18, :cond_5

    .line 166
    move-object v10, v1

    .line 168
    move-object/from16 v15, v24

    .line 169
    move-object/from16 v16, v5

    .line 171
    invoke-virtual/range {v10 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    .line 173
    goto :goto_4

    .line 176
    :cond_5
    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 177
    invoke-static {v14, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 179
    if-eqz v13, :cond_6

    .line 182
    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 186
    move-result-object v6

    .line 189
    invoke-virtual {v5, v6, v13, v14}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 190
    goto :goto_3

    .line 193
    :cond_6
    invoke-virtual {v5, v11, v12, v14}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 194
    new-instance v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 197
    invoke-virtual {v11}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 199
    move-result-object v7

    .line 202
    invoke-virtual/range {v18 .. v18}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 203
    move-result-object v8

    .line 206
    invoke-direct {v6, v7, v8, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Landroid/content/Intent;Landroid/content/Intent;I)V

    .line 207
    iput-object v6, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 210
    :goto_3
    const/16 v17, -0x1

    .line 212
    move-object v6, v15

    .line 214
    move-object v15, v1

    .line 215
    move-object/from16 v16, v5

    .line 216
    move-object/from16 v20, v6

    .line 218
    move-object/from16 v21, v4

    .line 220
    move/from16 v22, v3

    .line 222
    move/from16 v23, v2

    .line 224
    move-object/from16 v25, v0

    .line 226
    invoke-virtual/range {v15 .. v25}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 228
    :goto_4
    return-void

    .line 231
    :goto_5
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$0:Landroid/app/PendingIntent;

    .line 232
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 234
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$2:Landroid/content/pm/ShortcutInfo;

    .line 236
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$3:Landroid/os/Bundle;

    .line 238
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$4:Landroid/app/PendingIntent;

    .line 240
    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$5:I

    .line 242
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$6:Landroid/content/pm/ShortcutInfo;

    .line 244
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$7:Landroid/os/Bundle;

    .line 246
    iget v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$8:I

    .line 248
    iget v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$9:F

    .line 250
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$10:Landroid/os/Parcelable;

    .line 252
    check-cast v13, Landroid/window/RemoteTransition;

    .line 254
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$11:Lcom/android/internal/logging/InstanceId;

    .line 256
    move-object/from16 v14, p1

    .line 258
    check-cast v14, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 260
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 265
    move-result-object v15

    .line 268
    move-object/from16 p0, v0

    .line 269
    invoke-static {v5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 274
    invoke-static {v15, v2, v6, v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 275
    move-result v0

    .line 278
    if-eqz v0, :cond_a

    .line 279
    invoke-virtual {v14, v15}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 281
    move-result v0

    .line 284
    if-eqz v0, :cond_8

    .line 285
    new-instance v0, Landroid/content/Intent;

    .line 287
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    const/high16 v2, 0x8000000

    .line 292
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 294
    new-instance v6, Landroid/content/Intent;

    .line 297
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 299
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 305
    if-eqz v2, :cond_7

    .line 307
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 309
    move-object/from16 p1, v0

    .line 311
    const/4 v0, 0x0

    .line 313
    const v9, 0x5e7bb0dd

    .line 314
    const/4 v15, 0x0

    .line 317
    invoke-static {v2, v9, v15, v8, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 318
    goto :goto_6

    .line 321
    :cond_7
    move-object/from16 p1, v0

    .line 322
    const/4 v0, 0x0

    .line 324
    const/4 v15, 0x0

    .line 325
    :goto_6
    move-object/from16 v0, p1

    .line 326
    goto :goto_7

    .line 328
    :cond_8
    const/4 v0, 0x0

    .line 329
    const/4 v15, 0x0

    .line 330
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 331
    if-eqz v2, :cond_9

    .line 333
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 335
    const v5, 0x2f294008

    .line 337
    invoke-static {v2, v5, v15, v9, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :cond_9
    iget-object v0, v14, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 343
    const v2, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 345
    invoke-static {v0, v2, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 348
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 352
    const/4 v5, 0x0

    .line 355
    :cond_a
    const/4 v0, 0x0

    .line 356
    const/4 v6, 0x0

    .line 357
    :goto_7
    iget-object v2, v14, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    new-instance v8, Landroid/window/WindowContainerTransaction;

    .line 363
    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 365
    iget-object v9, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 368
    if-nez v5, :cond_d

    .line 370
    if-eqz v4, :cond_b

    .line 372
    goto :goto_8

    .line 374
    :cond_b
    new-instance v4, Landroid/os/Bundle;

    .line 375
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 377
    :goto_8
    const/4 v5, 0x0

    .line 380
    invoke-static {v4, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 381
    if-eqz v3, :cond_c

    .line 384
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 386
    move-result-object v0

    .line 389
    invoke-virtual {v8, v0, v3, v4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 390
    goto :goto_9

    .line 393
    :cond_c
    invoke-virtual {v8, v1, v0, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 394
    :goto_9
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 397
    invoke-virtual {v0, v8, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    .line 399
    goto/16 :goto_e

    .line 402
    :cond_d
    iget-object v14, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 404
    iget-boolean v15, v14, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 406
    if-nez v15, :cond_e

    .line 408
    const/4 v15, 0x0

    .line 410
    invoke-virtual {v14, v8, v15}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 411
    :cond_e
    iget-object v15, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 414
    invoke-virtual {v15, v12}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    .line 416
    iget-object v12, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 419
    invoke-virtual {v2, v12, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    .line 421
    iget-object v12, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 424
    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 426
    const/4 v15, 0x1

    .line 428
    invoke-virtual {v8, v12, v15}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 429
    const/4 v12, 0x0

    .line 432
    invoke-virtual {v2, v8, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 433
    invoke-virtual {v2, v11, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 436
    if-eqz v4, :cond_f

    .line 439
    goto :goto_a

    .line 441
    :cond_f
    new-instance v4, Landroid/os/Bundle;

    .line 442
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 444
    :goto_a
    iget-object v11, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 447
    invoke-static {v4, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 449
    if-eqz v3, :cond_10

    .line 452
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 454
    move-result-object v0

    .line 457
    invoke-virtual {v8, v0, v3, v4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 458
    goto :goto_b

    .line 461
    :cond_10
    invoke-virtual {v8, v1, v0, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 462
    :goto_b
    if-eqz v10, :cond_11

    .line 465
    goto :goto_c

    .line 467
    :cond_11
    new-instance v10, Landroid/os/Bundle;

    .line 468
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 470
    :goto_c
    invoke-static {v10, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 473
    if-eqz v7, :cond_12

    .line 476
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 478
    move-result-object v0

    .line 481
    invoke-virtual {v8, v0, v7, v10}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 482
    goto :goto_d

    .line 485
    :cond_12
    invoke-virtual {v8, v5, v6, v10}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 486
    :goto_d
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 489
    const/16 v23, 0x3

    .line 491
    const/16 v27, 0x3ec

    .line 493
    const/16 v28, 0x0

    .line 495
    move-object/from16 v22, v0

    .line 497
    move-object/from16 v24, v8

    .line 499
    move-object/from16 v25, v13

    .line 501
    move-object/from16 v26, v2

    .line 503
    invoke-virtual/range {v22 .. v28}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 505
    if-eqz p0, :cond_13

    .line 508
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 510
    move-object/from16 v1, p0

    .line 512
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 514
    const/4 v1, 0x3

    .line 516
    iput v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 517
    :cond_13
    :goto_e
    return-void

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 520
.end method
