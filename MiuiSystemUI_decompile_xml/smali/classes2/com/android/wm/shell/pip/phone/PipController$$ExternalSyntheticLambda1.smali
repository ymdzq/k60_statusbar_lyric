.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_5

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 11
    move-object v0, p0

    .line 13
    check-cast v0, Lcom/android/wm/shell/pip/phone/PipController;

    .line 14
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    .line 21
    return-void

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 25
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    const-string v0, "%s: Failed to register pinned stack listener, %s"

    .line 32
    const-string v1, "PipController"

    .line 34
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda3;

    .line 36
    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 38
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 41
    invoke-virtual {v4, v3, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 43
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 46
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 48
    move-result-object v4

    .line 51
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 52
    invoke-direct {v3, v4, v5}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 54
    iput-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 57
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 59
    iget-object v3, v3, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    .line 61
    check-cast v3, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;

    .line 68
    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 70
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 73
    iput-object v3, v4, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    .line 75
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    .line 77
    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 79
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 82
    iget-object v4, v4, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    .line 84
    check-cast v4, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;

    .line 91
    const/4 v4, 0x2

    .line 93
    invoke-direct {v3, v4, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 94
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 97
    iput-object v3, v5, Lcom/android/wm/shell/pip/PipBoundsState;->mOnMinimalSizeChangeCallback:Ljava/lang/Runnable;

    .line 99
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda6;

    .line 101
    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 103
    iput-object v3, v5, Lcom/android/wm/shell/pip/PipBoundsState;->mOnShelfVisibilityChangeCallback:Lcom/android/internal/util/function/TriConsumer;

    .line 106
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 108
    if-eqz v3, :cond_0

    .line 110
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 112
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;

    .line 114
    invoke-direct {v6, v3}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    .line 116
    iput-object v6, v5, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;

    .line 119
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;

    .line 121
    invoke-direct {v6, v3}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    .line 123
    iput-object v6, v5, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mRegistrationListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;

    .line 126
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;

    .line 128
    invoke-direct {v3, v5, v2}, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipInputConsumer;I)V

    .line 130
    iget-object v5, v5, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 133
    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 135
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 140
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mRotationController:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda2;

    .line 142
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 144
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 147
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    .line 154
    move-result v5

    .line 157
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 158
    iput v5, v6, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 160
    new-instance v5, Lcom/android/wm/shell/common/DisplayLayout;

    .line 162
    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 164
    move-result-object v7

    .line 167
    invoke-direct {v5, v3, v7}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 168
    iget-object v3, v6, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 171
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 173
    const v3, 0x79cf6064

    .line 176
    :try_start_0
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 179
    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedTaskListener:Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;

    .line 181
    invoke-virtual {v5, v7}, Lcom/android/wm/shell/WindowManagerShellWrapper;->addPinnedStackListener(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 186
    :catch_0
    move-exception v5

    .line 187
    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 188
    if-eqz v7, :cond_1

    .line 190
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    move-result-object v5

    .line 195
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 196
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    .line 198
    move-result-object v5

    .line 201
    invoke-static {v7, v3, v2, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 205
    move-result-object v5

    .line 208
    invoke-interface {v5, v4, v2}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 209
    move-result-object v4

    .line 212
    if-eqz v4, :cond_3

    .line 213
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 215
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->registerInputConsumer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    goto :goto_1

    .line 220
    :catch_1
    move-exception v4

    .line 221
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 222
    if-eqz v5, :cond_2

    .line 224
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    move-result-object v5

    .line 229
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 230
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 235
    invoke-static {v7, v3, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$2;

    .line 242
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$2;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 244
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 247
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    .line 249
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$3;

    .line 252
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$3;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 254
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 257
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->addListener(Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;)V

    .line 259
    iget v0, v6, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 262
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$4;

    .line 264
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$4;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 266
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 269
    invoke-virtual {v3, v0, v1}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 271
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda8;

    .line 274
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 276
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

    .line 279
    iget-object v3, v1, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    .line 281
    check-cast v3, Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 285
    move-result v4

    .line 288
    if-eqz v4, :cond_4

    .line 289
    goto :goto_2

    .line 291
    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v1}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    .line 295
    move-result v1

    .line 298
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda8;->onTabletopModeChanged(Z)V

    .line 299
    :goto_2
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;

    .line 302
    invoke-direct {v0, v2, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 304
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mOneHandedController:Ljava/util/Optional;

    .line 307
    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 309
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 312
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 314
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipMediaController;->mSessionsChangedListener:Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

    .line 316
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 318
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 321
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 323
    const/4 v4, 0x0

    .line 325
    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 329
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    .line 331
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    .line 334
    iget-object v1, v0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 337
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda10;

    .line 345
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 347
    const-string v2, "extra_shell_pip"

    .line 350
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    .line 352
    return-void

    .line 355
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 356
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController;

    .line 358
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    .line 360
    if-eqz v0, :cond_5

    .line 362
    goto :goto_4

    .line 364
    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    .line 365
    if-nez v0, :cond_6

    .line 367
    goto :goto_4

    .line 369
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 370
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 372
    move-result v0

    .line 375
    if-eqz v0, :cond_7

    .line 376
    goto :goto_4

    .line 378
    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 379
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 381
    if-eqz v0, :cond_8

    .line 383
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 385
    move-result v0

    .line 388
    if-eqz v0, :cond_8

    .line 389
    goto :goto_3

    .line 391
    :cond_8
    move v1, v2

    .line 392
    :goto_3
    if-eqz v1, :cond_9

    .line 393
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 395
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 397
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;

    .line 399
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    sget-wide v1, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    .line 404
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 406
    goto :goto_4

    .line 409
    :cond_9
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->updatePipPositionForKeepClearAreas()V

    .line 410
    :goto_4
    return-void

    .line 413
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 414
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    .line 416
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 418
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 420
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 422
    iget-boolean v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 424
    if-nez v0, :cond_a

    .line 426
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 428
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 430
    move-result-object v0

    .line 433
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    .line 434
    move-result v3

    .line 437
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 438
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenu(Landroid/graphics/Rect;IZZ)V

    .line 440
    :cond_a
    return-void

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 444
.end method
