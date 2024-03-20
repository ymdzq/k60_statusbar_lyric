.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController$4;

.field public final synthetic f$1:Landroid/window/IBackAnimationFinishedCallback;

.field public final synthetic f$2:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$3:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$4:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$4;Landroid/window/IBackAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/BackAnimationController$4;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$1:Landroid/window/IBackAnimationFinishedCallback;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$2:[Landroid/view/RemoteAnimationTarget;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$3:[Landroid/view/RemoteAnimationTarget;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$4:[Landroid/view/RemoteAnimationTarget;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/BackAnimationController$4;

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$1:Landroid/window/IBackAnimationFinishedCallback;

    .line 6
    iget-object v9, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$2:[Landroid/view/RemoteAnimationTarget;

    .line 8
    iget-object v6, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$3:[Landroid/view/RemoteAnimationTarget;

    .line 10
    iget-object v7, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$4:[Landroid/view/RemoteAnimationTarget;

    .line 12
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 16
    const-string v10, "ShellBackPreview"

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string v0, "Lack of navigation info to start animation."

    .line 22
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    goto/16 :goto_6

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    .line 29
    move-result v0

    .line 32
    iget-object v3, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 33
    iget-object v4, v3, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 35
    invoke-virtual {v4}, Landroid/window/BackNavigationInfo;->getType()I

    .line 37
    move-result v4

    .line 40
    iget-object v5, v3, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    .line 41
    const/4 v11, 0x2

    .line 43
    const/4 v12, 0x1

    .line 44
    const/4 v13, 0x0

    .line 45
    if-ne v4, v11, :cond_4

    .line 46
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->contains(I)Z

    .line 48
    move-result v14

    .line 51
    if-eqz v14, :cond_4

    .line 52
    iget-object v14, v3, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 54
    invoke-virtual {v14}, Landroid/window/BackNavigationInfo;->getCustomAnimationInfo()Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    .line 56
    move-result-object v14

    .line 59
    if-eqz v14, :cond_4

    .line 60
    iget-object v15, v3, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 62
    if-eqz v15, :cond_4

    .line 64
    iget-object v8, v15, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCustomAnimationLoader:Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;

    .line 66
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-virtual {v14}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getPackageName()Ljava/lang/String;

    .line 71
    move-result-object v16

    .line 74
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 75
    move-result v16

    .line 78
    if-eqz v16, :cond_1

    .line 79
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v8, v14, v13}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;

    .line 82
    move-result-object v11

    .line 85
    if-nez v11, :cond_2

    .line 86
    :goto_0
    const/4 v12, 0x0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v8, v14, v12}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;

    .line 90
    move-result-object v8

    .line 93
    new-instance v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;

    .line 94
    invoke-direct {v12}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;-><init>()V

    .line 96
    iput-object v11, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 99
    iput-object v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 101
    invoke-virtual {v14}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomBackground()I

    .line 103
    move-result v8

    .line 106
    iput v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mBackgroundColor:I

    .line 107
    :goto_1
    if-eqz v12, :cond_3

    .line 109
    iget-object v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 111
    iput-object v8, v15, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 113
    iget-object v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 115
    iput-object v8, v15, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 117
    iget v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mBackgroundColor:I

    .line 119
    iput v8, v15, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mNextBackgroundColor:I

    .line 121
    const/4 v8, 0x1

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move v8, v13

    .line 125
    :goto_2
    if-eqz v8, :cond_4

    .line 126
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v8

    .line 131
    check-cast v8, Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 132
    iput-boolean v13, v8, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    .line 134
    iget-object v3, v3, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 136
    iget-object v3, v3, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 138
    const/4 v8, 0x2

    .line 140
    invoke-virtual {v5, v8, v3}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 141
    :cond_4
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 147
    check-cast v3, Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 148
    if-nez v3, :cond_5

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    const-string v3, "Animation didn\'t be defined for type "

    .line 154
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 169
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v2, :cond_a

    .line 173
    :try_start_0
    invoke-interface {v2, v13}, Landroid/window/IBackAnimationFinishedCallback;->onAnimationFinished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto/16 :goto_6

    .line 178
    :catch_0
    move-exception v0

    .line 180
    move-object v1, v0

    .line 181
    const-string v0, "Failed call IBackNaviAnimationController"

    .line 182
    invoke-static {v10, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    goto/16 :goto_6

    .line 187
    :cond_5
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 189
    iget-object v4, v3, Lcom/android/wm/shell/back/BackAnimationRunner;->mCallback:Landroid/window/IOnBackInvokedCallback;

    .line 191
    iput-object v4, v0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    .line 193
    iput-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

    .line 195
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 197
    if-eqz v0, :cond_6

    .line 199
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 201
    const v2, 0x2ac3d7a2

    .line 203
    const-string v4, "BackAnimationController: startAnimation()"

    .line 206
    const/4 v5, 0x0

    .line 208
    invoke-static {v0, v2, v13, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_6
    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;

    .line 212
    const/4 v2, 0x1

    .line 214
    invoke-direct {v0, v2, v1}, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 215
    new-instance v8, Lcom/android/wm/shell/back/BackAnimationRunner$1;

    .line 218
    invoke-direct {v8, v0}, Lcom/android/wm/shell/back/BackAnimationRunner$1;-><init>(Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;)V

    .line 220
    iput-boolean v13, v3, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    .line 223
    :try_start_1
    iget-object v3, v3, Lcom/android/wm/shell/back/BackAnimationRunner;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 225
    const/4 v4, -0x1

    .line 227
    move-object v5, v9

    .line 228
    invoke-interface/range {v3 .. v8}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    goto :goto_3

    .line 232
    :catch_1
    move-exception v0

    .line 233
    const-string v2, "Failed call onAnimationStart"

    .line 234
    invoke-static {v10, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :goto_3
    array-length v0, v9

    .line 239
    const/4 v2, 0x1

    .line 240
    if-lt v0, v2, :cond_8

    .line 241
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 243
    iget-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    .line 245
    aget-object v21, v9, v13

    .line 247
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    new-instance v3, Landroid/window/BackMotionEvent;

    .line 254
    iget v15, v0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchX:F

    .line 256
    iget v4, v0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchY:F

    .line 258
    const/16 v17, 0x0

    .line 260
    const/16 v18, 0x0

    .line 262
    const/16 v19, 0x0

    .line 264
    iget v0, v0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    .line 266
    move-object v14, v3

    .line 268
    move/from16 v16, v4

    .line 269
    move/from16 v20, v0

    .line 271
    invoke-direct/range {v14 .. v21}, Landroid/window/BackMotionEvent;-><init>(FFFFFILandroid/view/RemoteAnimationTarget;)V

    .line 273
    if-nez v2, :cond_7

    .line 276
    goto :goto_4

    .line 278
    :cond_7
    :try_start_2
    invoke-interface {v2, v3}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    goto :goto_4

    .line 282
    :catch_2
    move-exception v0

    .line 283
    move-object v2, v0

    .line 284
    const-string v0, "dispatchOnBackStarted error: "

    .line 285
    invoke-static {v10, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    :cond_8
    :goto_4
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 290
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    .line 292
    invoke-virtual {v0}, Lcom/android/wm/shell/back/TouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    .line 294
    move-result-object v0

    .line 297
    iget-object v2, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 298
    iget-object v2, v2, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    .line 300
    if-nez v2, :cond_9

    .line 302
    goto :goto_5

    .line 304
    :cond_9
    :try_start_3
    invoke-interface {v2, v0}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 305
    goto :goto_5

    .line 308
    :catch_3
    move-exception v0

    .line 309
    move-object v2, v0

    .line 310
    const-string v0, "dispatchOnBackProgressed error: "

    .line 311
    invoke-static {v10, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    :goto_5
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 316
    iget-boolean v1, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    .line 318
    if-nez v1, :cond_a

    .line 320
    invoke-virtual {v0}, Lcom/android/wm/shell/back/BackAnimationController;->startPostCommitAnimation()V

    .line 322
    :cond_a
    :goto_6
    return-void
    .line 325
.end method
