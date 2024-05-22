.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $apps:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $nonApps:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 2
    iput-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$apps:[Landroid/view/RemoteAnimationTarget;

    .line 4
    iput-object p5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$nonApps:[Landroid/view/RemoteAnimationTarget;

    .line 6
    iput-object p6, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 6
    iget-object v2, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$apps:[Landroid/view/RemoteAnimationTarget;

    .line 8
    iget-object v3, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$nonApps:[Landroid/view/RemoteAnimationTarget;

    .line 10
    iget-object v5, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 12
    iget-object v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

    .line 14
    iget-object v4, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchContainer:Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    iget-boolean v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->timedOut:Z

    .line 21
    if-eqz v0, :cond_0

    .line 23
    if-eqz v5, :cond_f

    .line 25
    :try_start_0
    invoke-interface {v5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto/16 :goto_9

    .line 30
    :catch_0
    move-exception v0

    .line 32
    move-object v1, v0

    .line 33
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 34
    goto/16 :goto_9

    .line 37
    :cond_0
    iget-boolean v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->cancelled:Z

    .line 39
    if-eqz v0, :cond_1

    .line 41
    goto/16 :goto_9

    .line 43
    :cond_1
    const/4 v4, 0x0

    .line 45
    const/4 v0, 0x1

    .line 46
    const/4 v6, 0x0

    .line 47
    if-nez v2, :cond_2

    .line 48
    move-object v7, v4

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v8, v4

    .line 52
    move v7, v6

    .line 53
    :goto_0
    array-length v9, v2

    .line 54
    if-ge v7, v9, :cond_3

    .line 55
    move v9, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v9, v6

    .line 59
    :goto_1
    if-eqz v9, :cond_6

    .line 60
    add-int/lit8 v9, v7, 0x1

    .line 62
    :try_start_1
    aget-object v7, v2, v7
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    iget v10, v7, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 66
    if-nez v10, :cond_5

    .line 68
    iget-object v10, v7, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 70
    if-eqz v10, :cond_4

    .line 72
    iget-boolean v10, v7, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    .line 74
    if-nez v10, :cond_4

    .line 76
    goto :goto_2

    .line 78
    :cond_4
    if-nez v8, :cond_5

    .line 79
    move-object v8, v7

    .line 81
    :cond_5
    move v7, v9

    .line 82
    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    move-object v1, v0

    .line 85
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 86
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 92
    throw v0

    .line 95
    :cond_6
    move-object v7, v8

    .line 96
    :goto_2
    iget-object v2, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 97
    if-nez v7, :cond_8

    .line 99
    const-string v0, "ActivityLaunchAnimator"

    .line 101
    const-string v3, "Aborting the animation as no window is opening"

    .line 103
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

    .line 108
    iget-object v1, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchContainer:Landroid/view/ViewGroup;

    .line 110
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 112
    if-eqz v5, :cond_7

    .line 115
    :try_start_2
    invoke-interface {v5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    goto :goto_3

    .line 120
    :catch_2
    move-exception v0

    .line 121
    move-object v1, v0

    .line 122
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 123
    :cond_7
    :goto_3
    invoke-interface {v2, v4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    .line 126
    goto/16 :goto_9

    .line 129
    :cond_8
    if-eqz v3, :cond_b

    .line 131
    array-length v8, v3

    .line 133
    move v9, v6

    .line 134
    :goto_4
    if-ge v9, v8, :cond_b

    .line 135
    aget-object v10, v3, v9

    .line 137
    iget v11, v10, Landroid/view/RemoteAnimationTarget;->windowType:I

    .line 139
    const/16 v12, 0x7e3

    .line 141
    if-ne v11, v12, :cond_9

    .line 143
    move v11, v0

    .line 145
    goto :goto_5

    .line 146
    :cond_9
    move v11, v6

    .line 147
    :goto_5
    if-eqz v11, :cond_a

    .line 148
    goto :goto_6

    .line 150
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 151
    goto :goto_4

    .line 153
    :cond_b
    move-object v10, v4

    .line 154
    :goto_6
    iget-object v3, v7, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 155
    new-instance v8, Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 157
    iget v12, v3, Landroid/graphics/Rect;->top:I

    .line 159
    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    .line 161
    iget v14, v3, Landroid/graphics/Rect;->left:I

    .line 163
    iget v15, v3, Landroid/graphics/Rect;->right:I

    .line 165
    const/16 v16, 0x0

    .line 167
    const/16 v17, 0x0

    .line 169
    const/16 v18, 0x30

    .line 171
    move-object v11, v8

    .line 173
    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFI)V

    .line 174
    iget-object v3, v7, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 177
    if-eqz v3, :cond_d

    .line 179
    iget-object v4, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->callback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;

    .line 181
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 183
    iget-object v6, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    .line 185
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    .line 187
    move-result v6

    .line 190
    if-nez v6, :cond_c

    .line 191
    const-string v3, "CentralSurfaces"

    .line 193
    const-string v4, "No starting surface, defaulting to SystemBGColor"

    .line 195
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    .line 200
    move-result v3

    .line 203
    goto :goto_7

    .line 204
    :cond_c
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    .line 205
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 207
    move-result-object v4

    .line 210
    check-cast v4, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    .line 211
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->getBackgroundColor(Landroid/app/TaskInfo;)I

    .line 213
    move-result v3

    .line 216
    goto :goto_7

    .line 217
    :cond_d
    iget v3, v7, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    .line 218
    :goto_7
    move v14, v3

    .line 220
    iget-object v3, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 221
    invoke-interface {v2}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 223
    move-result-object v2

    .line 226
    invoke-virtual {v3, v2, v8}, Lcom/android/systemui/animation/LaunchAnimator;->isExpandingFullyAbove$packages__apps__MiuiSystemUI__packages__SystemUI__animation__android_common__MiuiSystemUIAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$State;)Z

    .line 227
    move-result v2

    .line 230
    if-eqz v2, :cond_e

    .line 231
    iget-object v2, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->context:Landroid/content/Context;

    .line 233
    invoke-static {v2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    .line 235
    move-result v2

    .line 238
    goto :goto_8

    .line 239
    :cond_e
    const/4 v2, 0x0

    .line 240
    :goto_8
    iput v2, v8, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 241
    iput v2, v8, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 243
    iget-object v3, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 245
    new-instance v12, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;

    .line 247
    move-object v2, v12

    .line 249
    move-object v4, v1

    .line 250
    move-object v6, v7

    .line 251
    move-object v7, v10

    .line 252
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V

    .line 253
    iget-object v11, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 256
    invoke-virtual {v12}, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->isBelowAnimatingWindow()Z

    .line 258
    move-result v2

    .line 261
    xor-int/lit8 v15, v2, 0x1

    .line 262
    invoke-virtual {v12}, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->isBelowAnimatingWindow()Z

    .line 264
    move-result v2

    .line 267
    xor-int/lit8 v16, v2, 0x1

    .line 268
    move-object v13, v8

    .line 270
    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZZ)Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    .line 271
    move-result-object v0

    .line 274
    iput-object v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->animation:Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    .line 275
    :cond_f
    :goto_9
    return-void
    .line 277
.end method
