.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ANIMATION_DELAY_NAV_FADE_IN:J

.field public static final DEFAULT_DIALOG_TO_APP_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

.field public static final DEFAULT_LAUNCH_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

.field public static final INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

.field public static final NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

.field public static animationPending:Z


# instance fields
.field public callback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;

.field public final dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field public final launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field public final lifecycleListener:Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;

.field public final listeners:Ljava/util/LinkedHashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v11, Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 2
    const-wide/16 v12, 0x0

    .line 4
    const-wide/16 v5, 0x96

    .line 6
    const-wide/16 v7, 0x96

    .line 8
    const-wide/16 v14, 0xb7

    .line 10
    const-wide/16 v1, 0x1f4

    .line 12
    const-wide/16 v3, 0x0

    .line 14
    const-wide/16 v9, 0xb7

    .line 16
    move-object v0, v11

    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/animation/LaunchAnimator$Timings;-><init>(JJJJJ)V

    .line 19
    sput-object v11, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 22
    const-wide/16 v5, 0xc8

    .line 24
    const-wide/16 v7, 0xc8

    .line 26
    new-instance v9, Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 28
    move-object v0, v9

    .line 30
    move-wide v3, v12

    .line 31
    move-object v12, v9

    .line 32
    move-wide v9, v14

    .line 33
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/animation/LaunchAnimator$Timings;-><init>(JJJJJ)V

    .line 34
    new-instance v0, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 37
    sget-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v9, Landroid/graphics/Path;

    .line 41
    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 43
    const/4 v10, 0x0

    .line 46
    invoke-virtual {v9, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 47
    const v3, 0x3df93dd9    # 0.1217f

    .line 50
    const v4, 0x3d3d3c36    # 0.0462f

    .line 53
    const v5, 0x3e19999a    # 0.15f

    .line 56
    const v6, 0x3eefec57    # 0.4686f

    .line 59
    const v7, 0x3e2ab368    # 0.1667f

    .line 62
    const v8, 0x3f28f5c3    # 0.66f

    .line 65
    move-object v2, v9

    .line 68
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 69
    const v3, 0x3e3bcd36    # 0.1834f

    .line 72
    const v4, 0x3f6346dc    # 0.8878f

    .line 75
    const v5, 0x3e2ab368    # 0.1667f

    .line 78
    const/high16 v6, 0x3f800000    # 1.0f

    .line 81
    const/high16 v7, 0x3f800000    # 1.0f

    .line 83
    const/high16 v8, 0x3f800000    # 1.0f

    .line 85
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 87
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .line 90
    invoke-direct {v2, v9}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    .line 92
    sget-object v3, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 95
    new-instance v4, Landroid/view/animation/PathInterpolator;

    .line 97
    const v5, 0x3f19999a    # 0.6f

    .line 99
    invoke-direct {v4, v10, v10, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 102
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 105
    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 108
    new-instance v1, Lcom/android/systemui/animation/LaunchAnimator;

    .line 110
    invoke-direct {v1, v11, v0}, Lcom/android/systemui/animation/LaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V

    .line 112
    sput-object v1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DEFAULT_LAUNCH_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

    .line 115
    new-instance v1, Lcom/android/systemui/animation/LaunchAnimator;

    .line 117
    invoke-direct {v1, v12, v0}, Lcom/android/systemui/animation/LaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V

    .line 119
    sput-object v1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DEFAULT_DIALOG_TO_APP_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

    .line 122
    const-wide/16 v0, 0xea

    .line 124
    sput-wide v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->ANIMATION_DELAY_NAV_FADE_IN:J

    .line 126
    sget-object v0, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    .line 128
    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 130
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 132
    const v1, 0x3e4ccccd    # 0.2f

    .line 134
    invoke-direct {v0, v1, v10, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 137
    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 140
    return-void
    .line 142
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DEFAULT_LAUNCH_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

    .line 5
    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 7
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DEFAULT_DIALOG_TO_APP_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    .line 18
    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator;)V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->lifecycleListener:Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;

    .line 25
    return-void
    .line 27
.end method

.method public static callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 24
    move-result-object v0

    .line 27
    new-instance v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$callOnIntentStartedOnMainThread$1;

    .line 28
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$callOnIntentStartedOnMainThread$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onIntentStarted(Z)V

    .line 37
    :goto_0
    return-void
    .line 40
.end method

.method public static synthetic startIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final createRunner(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->isDialogLaunch()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 11
    :goto_0
    new-instance v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 13
    iget-object v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;

    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->lifecycleListener:Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;

    .line 20
    invoke-direct {v1, p1, v2, v0, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;)V

    .line 22
    return-object v1
    .line 25
.end method

.method public final startIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    move-object/from16 v0, p3

    .line 4
    move-object/from16 v2, p5

    .line 6
    const/4 v3, 0x0

    .line 8
    const-string v4, "ActivityLaunchAnimator"

    .line 9
    if-eqz v1, :cond_8

    .line 11
    if-nez p2, :cond_0

    .line 13
    goto/16 :goto_5

    .line 15
    :cond_0
    move-object/from16 v5, p0

    .line 17
    iget-object v6, v5, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;

    .line 19
    if-eqz v6, :cond_7

    .line 21
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->createRunner(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 23
    move-result-object v5

    .line 26
    iget-object v13, v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 27
    iget-object v7, v13, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 29
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 31
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 33
    const/4 v14, 0x1

    .line 35
    if-eqz v7, :cond_1

    .line 36
    if-nez p4, :cond_1

    .line 38
    move v15, v14

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v7, 0x0

    .line 42
    move v15, v7

    .line 43
    :goto_0
    if-nez v15, :cond_2

    .line 44
    new-instance v16, Landroid/view/RemoteAnimationAdapter;

    .line 46
    const-wide/16 v9, 0x1f4

    .line 48
    const/16 v7, 0x96

    .line 50
    int-to-long v7, v7

    .line 52
    const-wide/16 v11, 0x1f4

    .line 53
    sub-long/2addr v11, v7

    .line 55
    move-object/from16 v7, v16

    .line 56
    move-object v8, v5

    .line 58
    invoke-direct/range {v7 .. v12}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 59
    goto :goto_1

    .line 62
    :cond_2
    move-object v7, v3

    .line 63
    :goto_1
    if-eqz v0, :cond_3

    .line 64
    if-eqz v7, :cond_3

    .line 66
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 68
    move-result-object v8

    .line 71
    invoke-interface {v8, v0, v7, v3}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v3, "Unable to register the remote animation"

    .line 77
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_3
    :goto_2
    invoke-interface {v2, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/Number;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 88
    move-result v0

    .line 91
    const/4 v2, 0x2

    .line 92
    if-eq v0, v2, :cond_5

    .line 93
    if-eqz v0, :cond_5

    .line 95
    const/4 v2, 0x3

    .line 97
    if-ne v0, v2, :cond_4

    .line 98
    if-eqz v15, :cond_4

    .line 100
    goto :goto_3

    .line 102
    :cond_4
    const/4 v2, 0x0

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    :goto_3
    move v2, v14

    .line 105
    :goto_4
    sput-boolean v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->animationPending:Z

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    const-string v7, "launchResult="

    .line 110
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v0, " willAnimate="

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, " hideKeyguardWithAnimation="

    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 137
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v1, v2}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 141
    if-eqz v2, :cond_6

    .line 144
    iget-object v0, v5, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 146
    iget-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

    .line 148
    const-wide/16 v2, 0x3e8

    .line 150
    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchContainer:Landroid/view/ViewGroup;

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    if-eqz v15, :cond_6

    .line 157
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda12;

    .line 159
    invoke-direct {v0, v14, v6, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 161
    iget-object v1, v13, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 164
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 166
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 168
    :cond_6
    return-void

    .line 171
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 172
    const-string v1, "ActivityLaunchAnimator.callback must be set before using this animator"

    .line 174
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    throw v0

    .line 179
    :cond_8
    :goto_5
    const-string v0, "Starting intent with no animation"

    .line 180
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    if-eqz v1, :cond_9

    .line 188
    const/4 v0, 0x0

    .line 190
    invoke-static {v1, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 191
    :cond_9
    return-void
    .line 194
.end method

.method public final startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;

    .line 2
    invoke-direct {v0, p4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V

    .line 4
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 7
    return-void
    .line 10
.end method
