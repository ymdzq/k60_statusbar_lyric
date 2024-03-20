.class public final synthetic Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Parcelable;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto/16 :goto_3

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 14
    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 16
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 28
    iget v3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3

    .line 35
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 39
    invoke-static {v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 40
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 46
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    array-length v2, v1

    .line 53
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 57
    const-string v2, "DesktopTasksController: moveToFreeform with bounds taskId=%d"

    .line 58
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    :cond_0
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 63
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 65
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 71
    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    .line 75
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 78
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    .line 80
    invoke-virtual {v1, p0, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 82
    sget-boolean p0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 85
    if-eqz p0, :cond_1

    .line 87
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    .line 89
    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

    .line 91
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    .line 93
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 95
    const/16 v0, 0x3f2

    .line 97
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 99
    move-result-object p1

    .line 102
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 103
    check-cast p0, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_0

    .line 110
    :cond_1
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 111
    invoke-virtual {p0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 113
    :goto_0
    return-void

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 117
    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 119
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 121
    check-cast p0, Landroid/view/MotionEvent;

    .line 123
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 125
    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 127
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 129
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 131
    move-result p0

    .line 134
    invoke-virtual {p1, v9}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getStatusBarHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 135
    move-result v0

    .line 138
    int-to-float v0, v0

    .line 139
    cmpg-float v0, p0, v0

    .line 140
    if-gez v0, :cond_2

    .line 142
    goto/16 :goto_1

    .line 144
    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    .line 146
    if-nez v0, :cond_3

    .line 148
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    .line 150
    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 152
    iget-object v10, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    .line 154
    iget-object v6, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    .line 156
    iget-object v8, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 158
    move-object v2, v0

    .line 160
    move-object v4, v9

    .line 161
    move-object v5, v10

    .line 162
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    .line 163
    iput-object v0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    .line 166
    iput-boolean v1, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    .line 168
    iget-object v2, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    .line 170
    const v3, 0x7f080c26    # @drawable/desktop_windowing_transition_background 'res/drawable/desktop_windowing_transition_background.xml'

    .line 172
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 175
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    .line 178
    iget v2, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 180
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 182
    move-result-object v2

    .line 185
    invoke-static {v2}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getMaxBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;

    .line 186
    move-result-object v2

    .line 189
    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    .line 190
    invoke-direct {v3, v2, v2, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 192
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 195
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 197
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    invoke-static {v3}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    .line 203
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 206
    :cond_3
    iget-object v0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    .line 209
    if-nez v0, :cond_4

    .line 211
    goto :goto_1

    .line 213
    :cond_4
    invoke-virtual {p1, v9}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getStatusBarHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 214
    move-result p1

    .line 217
    mul-int/lit8 p1, p1, 0x2

    .line 218
    int-to-float p1, p1

    .line 220
    cmpl-float p0, p0, p1

    .line 221
    iget-object p1, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 223
    iget-object v2, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 225
    if-ltz p0, :cond_5

    .line 227
    iget-boolean p0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    .line 229
    if-eqz p0, :cond_6

    .line 231
    const/4 p0, 0x0

    .line 233
    iput-boolean p0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    .line 234
    iget-object p0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    .line 236
    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 238
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 240
    move-result-object p1

    .line 243
    sget v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->$r8$clinit:I

    .line 244
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 246
    iget v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 248
    new-instance v2, Landroid/graphics/Rect;

    .line 250
    int-to-float v0, v0

    .line 252
    const v3, 0x3ecccccc    # 0.39999998f

    .line 253
    mul-float/2addr v0, v3

    .line 256
    const/high16 v4, 0x40000000    # 2.0f

    .line 257
    div-float/2addr v0, v4

    .line 259
    float-to-int v5, v0

    .line 260
    int-to-float v1, v1

    .line 261
    mul-float/2addr v1, v3

    .line 262
    div-float/2addr v1, v4

    .line 263
    float-to-int v3, v1

    .line 264
    iget v4, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 265
    int-to-float v4, v4

    .line 267
    sub-float/2addr v4, v0

    .line 268
    float-to-int v0, v4

    .line 269
    iget v4, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 270
    int-to-float v4, v4

    .line 272
    sub-float/2addr v4, v1

    .line 273
    float-to-int v1, v4

    .line 274
    invoke-direct {v2, v5, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    .line 278
    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getMaxBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;

    .line 280
    move-result-object p1

    .line 283
    invoke-direct {v0, p1, v2, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 284
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 287
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 289
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    .line 295
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    goto :goto_1

    .line 301
    :cond_5
    iget-boolean p0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    .line 302
    if-nez p0, :cond_6

    .line 304
    iput-boolean v1, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    .line 306
    iget-object p0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    .line 308
    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 310
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 312
    move-result-object p1

    .line 315
    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->toFullscreenAnimatorWithAnimatedBounds(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    .line 316
    move-result-object p0

    .line 319
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 320
    :cond_6
    :goto_1
    return-void

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 324
    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 326
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 328
    check-cast p0, Landroid/graphics/Point;

    .line 330
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 332
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 339
    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    move-result-object v3

    .line 346
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 347
    move-result-object v3

    .line 350
    invoke-static {v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 351
    move-result v4

    .line 354
    if-eqz v4, :cond_7

    .line 355
    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 357
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 360
    move-result-object v1

    .line 363
    array-length v2, v1

    .line 364
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 365
    move-result-object v1

    .line 368
    const-string v2, "DesktopTasksController: cancelMoveToFreeform taskId=%d"

    .line 369
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 371
    :cond_7
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 374
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 376
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 379
    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    .line 381
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 384
    if-eqz v0, :cond_8

    .line 386
    iget-object v0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    .line 388
    iput-object p0, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    .line 390
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

    .line 392
    iput-object p0, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    .line 394
    iget-object p0, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 396
    const/16 p1, 0x3f5

    .line 398
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 400
    move-result-object p0

    .line 403
    iget-object p1, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 404
    check-cast p1, Ljava/util/ArrayList;

    .line 406
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    goto :goto_2

    .line 411
    :cond_8
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 412
    invoke-virtual {p0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 414
    invoke-virtual {p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    .line 417
    :goto_2
    return-void

    .line 420
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 421
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 423
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 425
    check-cast p0, Landroid/graphics/Point;

    .line 427
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 429
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getStatusBarHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 431
    move-result v2

    .line 434
    iget v3, p0, Landroid/graphics/Point;->y:I

    .line 435
    if-gt v3, v2, :cond_b

    .line 437
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 439
    move-result v2

    .line 442
    const/4 v3, 0x5

    .line 443
    if-ne v2, v3, :cond_b

    .line 444
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 446
    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    move-result-object v3

    .line 453
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 454
    move-result-object v3

    .line 457
    invoke-static {v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 458
    move-result v4

    .line 461
    if-eqz v4, :cond_9

    .line 462
    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 464
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 467
    move-result-object v1

    .line 470
    array-length v2, v1

    .line 471
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 472
    move-result-object v1

    .line 475
    const-string v2, "DesktopTasksController: moveToFullscreen with animation taskId=%d"

    .line 476
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 478
    :cond_9
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 481
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 483
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 486
    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    .line 488
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 491
    if-eqz v0, :cond_a

    .line 493
    iget-object v0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->exitDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    .line 495
    iput-object p0, v0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    .line 497
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

    .line 499
    iput-object p0, v0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    .line 501
    iget-object p0, v0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 503
    const/16 p1, 0x3f4

    .line 505
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 507
    move-result-object p0

    .line 510
    iget-object p1, v0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 511
    check-cast p1, Ljava/util/ArrayList;

    .line 513
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    goto :goto_4

    .line 518
    :cond_a
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 519
    invoke-virtual {p0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 521
    invoke-virtual {p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    .line 524
    :cond_b
    :goto_4
    return-void

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 528
.end method
