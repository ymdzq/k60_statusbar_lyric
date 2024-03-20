.class public final Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final synthetic $view:Landroid/view/ViewGroup;

.field public final synthetic $window:Landroid/view/Window;

.field public showAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/view/ViewGroup;Landroid/view/Window;Z)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    .line 2
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$window:Landroid/view/Window;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string p3, "extra_animate"

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 12
    move-result p1

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    .line 16
    const/4 p0, 0x1

    .line 18
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 19
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setTransitionAlpha(F)V

    .line 23
    sget p3, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    .line 26
    const/high16 v1, -0x40800000    # -1.0f

    .line 28
    cmpg-float p3, p3, v1

    .line 30
    if-nez p3, :cond_0

    .line 32
    move v0, p0

    .line 34
    :cond_0
    if-eqz v0, :cond_2

    .line 35
    if-eqz p4, :cond_1

    .line 37
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p0

    .line 46
    const p1, 0x7f07039a    # @dimen/global_actions_controls_y_translation '20.0dp'

    .line 47
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result p0

    .line 53
    int-to-float p0, p0

    .line 54
    sput p0, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    sput p1, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    .line 58
    :cond_2
    :goto_0
    return-void
    .line 60
.end method


# virtual methods
.method public final enterAnimation()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    .line 6
    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 12
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    .line 16
    :cond_0
    return-void
    .line 18
.end method

.method public final resetAnimation()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 5
    return-void
    .line 8
.end method

.method public final setup()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$window:Landroid/view/Window;

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAllowEnterTransitionOverlap(Z)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 10
    move-result v0

    .line 13
    new-instance v2, Lcom/android/systemui/controls/management/WindowTransition;

    .line 14
    sget-object v3, Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;

    .line 16
    invoke-direct {v2, v3}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 18
    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 27
    move-result v0

    .line 30
    new-instance v2, Lcom/android/systemui/controls/management/WindowTransition;

    .line 31
    sget-object v3, Lcom/android/systemui/controls/management/ControlsAnimations$exitWindowTransition$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations$exitWindowTransition$1;

    .line 33
    invoke-direct {v2, v3}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 35
    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 38
    invoke-virtual {v1, v2}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 44
    move-result v0

    .line 47
    new-instance v2, Lcom/android/systemui/controls/management/WindowTransition;

    .line 48
    sget-object v3, Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;

    .line 50
    invoke-direct {v2, v3}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 52
    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/Window;->setReenterTransition(Landroid/transition/Transition;)V

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 61
    move-result p0

    .line 64
    new-instance v0, Lcom/android/systemui/controls/management/WindowTransition;

    .line 65
    sget-object v2, Lcom/android/systemui/controls/management/ControlsAnimations$exitWindowTransition$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations$exitWindowTransition$1;

    .line 67
    invoke-direct {v0, v2}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 69
    invoke-virtual {v0, p0}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 72
    invoke-virtual {v1, v0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    .line 75
    return-void
    .line 78
.end method
