.class public final Lcom/android/systemui/animation/DialogLaunchAnimator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

.field public static final TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;


# instance fields
.field public final callback:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;

.field public final featureFlags:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field public final openedDialogs:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 2
    sput-object v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 4
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 6
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->positionInterpolator:Landroid/view/animation/Interpolator;

    .line 10
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 12
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 19
    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 21
    sput-object v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 24
    return-void
    .line 26
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/animation/LaunchAnimator;

    .line 2
    sget-object v1, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 4
    sget-object v2, Lcom/android/systemui/animation/DialogLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/animation/LaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->callback:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;

    .line 14
    iput-object p2, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 16
    iput-object p3, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->featureFlags:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 20
    new-instance p1, Ljava/util/HashSet;

    .line 22
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    .line 27
    return-void
    .line 29
.end method

.method public static createActivityLaunchController$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/view/View;)Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Lcom/android/systemui/animation/AnimatedDialog;

    .line 20
    iget-object v3, v3, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 22
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 24
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 32
    move-result-object v3

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 36
    move-result-object v4

    .line 39
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    move-object v1, v2

    .line 47
    :goto_0
    check-cast v1, Lcom/android/systemui/animation/AnimatedDialog;

    .line 48
    if-nez v1, :cond_2

    .line 50
    goto/16 :goto_2

    .line 52
    :cond_2
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, v1, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    .line 55
    iget-object p1, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 57
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 59
    move-result v0

    .line 62
    if-eqz v0, :cond_8

    .line 63
    iget-object p0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->callback:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;->val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 67
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 69
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;->val$alternateBouncerInteractor:Ldagger/Lazy;

    .line 75
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 80
    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->canShowAlternateBouncerForFingerprint()Z

    .line 83
    move-result p0

    .line 86
    if-nez p0, :cond_3

    .line 87
    goto :goto_2

    .line 89
    :cond_3
    iget-object p0, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    .line 90
    if-nez p0, :cond_4

    .line 92
    goto :goto_2

    .line 94
    :cond_4
    instance-of v0, p0, Lcom/android/systemui/animation/LaunchableView;

    .line 95
    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 99
    move-result-object v0

    .line 102
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 103
    if-nez v0, :cond_5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    const-string v3, "Skipping animation as view "

    .line 109
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string p0, " is not attached to a ViewGroup"

    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 125
    new-instance v0, Ljava/lang/Exception;

    .line 126
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 128
    const-string v3, "ActivityLaunchAnimator"

    .line 131
    invoke-static {v3, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    move-object v0, v2

    .line 136
    goto :goto_1

    .line 137
    :cond_5
    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 138
    const/4 v3, 0x4

    .line 140
    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    .line 141
    :goto_1
    if-nez v0, :cond_6

    .line 144
    goto :goto_2

    .line 146
    :cond_6
    new-instance v2, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;

    .line 147
    invoke-direct {v2, v0, p1, v1}, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;-><init>(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;Landroid/app/Dialog;Lcom/android/systemui/animation/AnimatedDialog;)V

    .line 149
    goto :goto_2

    .line 152
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 153
    const-string p1, "An ActivityLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    .line 155
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    throw p0

    .line 160
    :cond_8
    :goto_2
    return-object v2
    .line 161
.end method

.method public static synthetic showFromView$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;ZI)V
    .locals 1

    .line 1
    and-int/lit8 v0, p5, 0x4

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p3, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 7
    if-eqz p5, :cond_1

    .line 9
    const/4 p4, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;Z)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final disableAllCurrentDialogsExitAnimations()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/animation/AnimatedDialog;

    .line 18
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final dismissStack(Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lcom/android/systemui/animation/AnimatedDialog;

    .line 19
    iget-object v1, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 21
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    check-cast v0, Lcom/android/systemui/animation/AnimatedDialog;

    .line 31
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->prepareForStackDismiss()V

    .line 35
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 38
    return-void
    .line 41
.end method

.method public final show(Landroid/app/Dialog;Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    move-result-object v2

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_15

    .line 18
    iget-object v2, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    .line 20
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v3

    .line 25
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 35
    move-object v6, v4

    .line 36
    check-cast v6, Lcom/android/systemui/animation/AnimatedDialog;

    .line 37
    iget-object v6, v6, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 39
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 41
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    move-result-object v6

    .line 48
    invoke-virtual {v6}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 49
    move-result-object v6

    .line 52
    iget-object v7, v1, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->source:Landroid/view/View;

    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 55
    move-result-object v7

    .line 58
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v6

    .line 62
    if-eqz v6, :cond_0

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    const/4 v4, 0x0

    .line 66
    :goto_0
    move-object v14, v4

    .line 67
    check-cast v14, Lcom/android/systemui/animation/AnimatedDialog;

    .line 68
    const-string v3, "DialogLaunchAnimator"

    .line 70
    if-eqz v14, :cond_5

    .line 72
    iget-object v4, v14, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    .line 74
    if-eqz v4, :cond_5

    .line 76
    instance-of v6, v4, Lcom/android/systemui/animation/LaunchableView;

    .line 78
    if-eqz v6, :cond_4

    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    move-result-object v6

    .line 85
    instance-of v6, v6, Landroid/view/ViewGroup;

    .line 86
    if-nez v6, :cond_2

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    .line 90
    const-string v7, "Skipping animation as view "

    .line 92
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v4, " is not attached to a ViewGroup"

    .line 100
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 108
    new-instance v6, Ljava/lang/Exception;

    .line 109
    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    .line 111
    invoke-static {v3, v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v6, 0x0

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    new-instance v6, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 119
    iget-object v7, v1, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->cuj:Lcom/android/systemui/animation/DialogCuj;

    .line 121
    invoke-direct {v6, v4, v7}, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;-><init>(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)V

    .line 123
    :goto_1
    if-nez v6, :cond_3

    .line 126
    goto :goto_2

    .line 128
    :cond_3
    move-object v1, v6

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 131
    const-string v1, "A DialogLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    .line 133
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v0

    .line 138
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 139
    move-result v4

    .line 142
    const/4 v15, 0x1

    .line 143
    const/4 v13, 0x0

    .line 144
    if-eqz v4, :cond_6

    .line 145
    goto :goto_3

    .line 147
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 148
    move-result-object v4

    .line 151
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    move-result v6

    .line 155
    if-eqz v6, :cond_8

    .line 156
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    move-result-object v6

    .line 161
    check-cast v6, Lcom/android/systemui/animation/AnimatedDialog;

    .line 162
    iget-object v6, v6, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;

    .line 164
    check-cast v6, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 166
    iget-object v6, v6, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->sourceIdentity:Ljava/lang/Object;

    .line 168
    iget-object v7, v1, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->sourceIdentity:Ljava/lang/Object;

    .line 170
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    move-result v6

    .line 175
    if-eqz v6, :cond_7

    .line 176
    move v4, v15

    .line 178
    goto :goto_4

    .line 179
    :cond_8
    :goto_3
    move v4, v13

    .line 180
    :goto_4
    if-eqz v4, :cond_9

    .line 181
    const-string v0, "Not running dialog launch animation from source as it is already expanded into a dialog"

    .line 183
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->show()V

    .line 188
    return-void

    .line 191
    :cond_9
    new-instance v3, Lcom/android/systemui/animation/AnimatedDialog;

    .line 192
    iget-object v7, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 194
    iget-object v8, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->callback:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;

    .line 196
    iget-object v4, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 198
    new-instance v11, Lcom/android/systemui/animation/DialogLaunchAnimator$show$animatedDialog$1;

    .line 200
    invoke-direct {v11, v0}, Lcom/android/systemui/animation/DialogLaunchAnimator$show$animatedDialog$1;-><init>(Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    .line 202
    iget-object v0, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->featureFlags:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;

    .line 205
    move-object v6, v3

    .line 207
    move-object v9, v4

    .line 208
    move-object v10, v1

    .line 209
    move-object/from16 v12, p1

    .line 210
    move v5, v13

    .line 212
    move/from16 v13, p3

    .line 213
    move v5, v15

    .line 215
    move-object v15, v0

    .line 216
    invoke-direct/range {v6 .. v15}, Lcom/android/systemui/animation/AnimatedDialog;-><init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;)V

    .line 217
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, v1, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->cuj:Lcom/android/systemui/animation/DialogCuj;

    .line 223
    if-eqz v0, :cond_b

    .line 225
    iget-object v1, v1, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->source:Landroid/view/View;

    .line 227
    iget v2, v0, Lcom/android/systemui/animation/DialogCuj;->cujType:I

    .line 229
    invoke-static {v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 231
    move-result-object v1

    .line 234
    if-eqz v1, :cond_b

    .line 235
    iget-object v0, v0, Lcom/android/systemui/animation/DialogCuj;->tag:Ljava/lang/String;

    .line 237
    if-eqz v0, :cond_a

    .line 239
    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 241
    :cond_a
    invoke-virtual {v4, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 244
    iput-boolean v5, v3, Lcom/android/systemui/animation/AnimatedDialog;->hasInstrumentedJank:Z

    .line 247
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->create()V

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 252
    move-result-object v0

    .line 255
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 259
    move-result-object v1

    .line 262
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 263
    const/4 v2, -0x1

    .line 265
    if-ne v1, v2, :cond_c

    .line 266
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 268
    move-result-object v1

    .line 271
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 272
    if-ne v1, v2, :cond_c

    .line 274
    move v15, v5

    .line 276
    goto :goto_5

    .line 277
    :cond_c
    const/4 v15, 0x0

    .line 278
    :goto_5
    const/4 v1, 0x2

    .line 279
    if-eqz v15, :cond_11

    .line 280
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 282
    move-result-object v2

    .line 285
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 286
    move-result v2

    .line 289
    const/4 v13, 0x0

    .line 290
    const/16 v16, 0x0

    .line 291
    :goto_6
    if-ge v13, v2, :cond_e

    .line 293
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 295
    move-result-object v4

    .line 298
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 299
    move-result-object v4

    .line 302
    invoke-static {v4}, Lcom/android/systemui/animation/AnimatedDialog;->findFirstViewGroupWithBackground(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 303
    move-result-object v16

    .line 306
    if-eqz v16, :cond_d

    .line 307
    goto :goto_7

    .line 309
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 310
    goto :goto_6

    .line 312
    :cond_e
    :goto_7
    move-object/from16 v2, v16

    .line 313
    if-eqz v2, :cond_10

    .line 315
    instance-of v4, v2, Lcom/android/systemui/animation/LaunchableView;

    .line 317
    if-eqz v4, :cond_f

    .line 319
    goto/16 :goto_9

    .line 321
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 323
    const-string v1, "The animated ViewGroup with background must implement LaunchableView"

    .line 325
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 327
    move-result-object v1

    .line 330
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 331
    throw v0

    .line 334
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 335
    const-string v1, "Unable to find ViewGroup with background"

    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 342
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 343
    throw v0

    .line 346
    :cond_11
    new-instance v4, Landroid/widget/FrameLayout;

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 349
    move-result-object v6

    .line 352
    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 356
    move-result-object v6

    .line 359
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 360
    invoke-direct {v7, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 362
    const/4 v8, 0x0

    .line 365
    invoke-virtual {v6, v4, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v6, Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 371
    move-result-object v7

    .line 374
    invoke-direct {v6, v7}, Lcom/android/systemui/animation/LaunchableFrameLayout;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 378
    move-result-object v7

    .line 381
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 382
    move-result-object v7

    .line 385
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 386
    const v7, 0x106000d    # @android:color/transparent

    .line 389
    invoke-virtual {v0, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 392
    new-instance v7, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$1;

    .line 395
    invoke-direct {v7, v3}, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    .line 397
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 403
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 406
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 409
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 412
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 414
    move-result-object v8

    .line 417
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 418
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 420
    move-result-object v9

    .line 423
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 424
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 426
    move-result-object v10

    .line 429
    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 430
    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 432
    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 438
    move-result-object v4

    .line 441
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 442
    move-result v4

    .line 445
    move v15, v5

    .line 446
    :goto_8
    if-ge v15, v4, :cond_12

    .line 447
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 449
    move-result-object v7

    .line 452
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 453
    move-result-object v7

    .line 456
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 457
    move-result-object v8

    .line 460
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 461
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 464
    add-int/lit8 v15, v15, 0x1

    .line 467
    goto :goto_8

    .line 469
    :cond_12
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 470
    new-instance v2, Lcom/android/systemui/animation/AnimatedDialog$start$2;

    .line 473
    invoke-direct {v2, v5, v0, v6}, Lcom/android/systemui/animation/AnimatedDialog$start$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 475
    iput-object v2, v3, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$start$2;

    .line 478
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    .line 480
    move-result-object v2

    .line 483
    iget-object v4, v3, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$start$2;

    .line 484
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 486
    move-object v2, v6

    .line 489
    :goto_9
    iput-object v2, v3, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    .line 490
    const v4, 0x7f0a094d    # @id/tag_dialog_background

    .line 492
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 495
    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 497
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 500
    move-result-object v4

    .line 503
    invoke-static {v4}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    .line 504
    move-result-object v4

    .line 507
    if-eqz v4, :cond_13

    .line 508
    invoke-virtual {v4}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 510
    move-result-object v4

    .line 513
    if-eqz v4, :cond_13

    .line 514
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 516
    move-result v4

    .line 519
    goto :goto_a

    .line 520
    :cond_13
    const/high16 v4, -0x1000000

    .line 521
    :goto_a
    iput v4, v3, Lcom/android/systemui/animation/AnimatedDialog;->originalDialogBackgroundColor:I

    .line 523
    move-object v4, v2

    .line 525
    check-cast v4, Lcom/android/systemui/animation/LaunchableView;

    .line 526
    invoke-interface {v4, v5}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 528
    const/4 v4, 0x4

    .line 531
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTransitionVisibility(I)V

    .line 532
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 535
    move-result-object v4

    .line 538
    const v6, 0x7f14001a    # @style/Animation.LaunchAnimation

    .line 539
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 542
    const/4 v6, 0x3

    .line 544
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 545
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 547
    move-result v6

    .line 550
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 551
    move-result v7

    .line 554
    and-int/2addr v6, v7

    .line 555
    if-eqz v6, :cond_14

    .line 556
    move v15, v5

    .line 558
    goto :goto_b

    .line 559
    :cond_14
    const/4 v15, 0x0

    .line 560
    :goto_b
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 561
    move-result v5

    .line 564
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 565
    move-result v6

    .line 568
    not-int v6, v6

    .line 569
    and-int/2addr v5, v6

    .line 570
    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 571
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 574
    move-result-object v4

    .line 577
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 578
    const/4 v4, 0x0

    .line 581
    invoke-virtual {v0, v4}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 582
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 585
    move-result-object v5

    .line 588
    check-cast v5, Landroid/view/ViewGroup;

    .line 589
    new-instance v6, Lcom/android/systemui/animation/AnimatedDialog$start$1;

    .line 591
    invoke-direct {v6, v15}, Lcom/android/systemui/animation/AnimatedDialog$start$1;-><init>(Z)V

    .line 593
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 596
    new-instance v5, Lcom/android/systemui/animation/AnimatedDialog$start$2;

    .line 599
    invoke-direct {v5, v4, v2, v3}, Lcom/android/systemui/animation/AnimatedDialog$start$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 601
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 604
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 607
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$start$3;

    .line 610
    invoke-direct {v0, v3, v4}, Lcom/android/systemui/animation/AnimatedDialog$start$3;-><init>(Lcom/android/systemui/animation/AnimatedDialog;I)V

    .line 612
    move-object/from16 v1, p1

    .line 615
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setDismissOverride(Ljava/lang/Runnable;)V

    .line 617
    iget-object v0, v3, Lcom/android/systemui/animation/AnimatedDialog;->featureFlags:Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;

    .line 620
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    sget-object v2, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 625
    iget-object v0, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;->val$featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 627
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->show()V

    .line 632
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->moveSourceDrawingToDialog()V

    .line 635
    return-void

    .line 638
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 639
    const-string/jumbo v1, "showFromView must be called from the main thread and dialog must be created in the main thread"

    .line 641
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 644
    throw v0
    .line 647
.end method

.method public final showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/android/systemui/animation/DialogCuj;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Lcom/android/systemui/animation/AnimatedDialog;

    .line 20
    iget-object v3, v3, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 22
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    :goto_0
    check-cast v1, Lcom/android/systemui/animation/AnimatedDialog;

    .line 32
    if-eqz v1, :cond_2

    .line 34
    iget-object v2, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    .line 36
    :cond_2
    if-nez v2, :cond_3

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    const-string p2, "Showing dialog "

    .line 42
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string p2, " normally as the dialog it is shown from was not shown using DialogLaunchAnimator"

    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    const-string p2, "DialogLaunchAnimator"

    .line 59
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 64
    return-void

    .line 67
    :cond_3
    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;Z)V

    .line 68
    return-void
    .line 71
.end method

.method public final showFromView(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;Z)V
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/android/systemui/animation/LaunchableView;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    .line 14
    const-string v0, "Skipping animation as view "

    .line 16
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string p2, " is not attached to a ViewGroup"

    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 32
    new-instance p3, Ljava/lang/Exception;

    .line 33
    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    .line 35
    const-string v0, "DialogLaunchAnimator"

    .line 38
    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    const/4 p2, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 45
    invoke-direct {v0, p2, p3}, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;-><init>(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)V

    .line 47
    move-object p2, v0

    .line 50
    :goto_0
    if-nez p2, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 53
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/systemui/animation/DialogLaunchAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;Z)V

    .line 57
    :goto_1
    return-void

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    const-string p1, "A DialogLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0
    .line 68
.end method
