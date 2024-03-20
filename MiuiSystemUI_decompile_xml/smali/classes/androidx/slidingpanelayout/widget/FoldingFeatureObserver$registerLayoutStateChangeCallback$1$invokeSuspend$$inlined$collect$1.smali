.class public final Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/window/layout/FoldingFeature;

    .line 2
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;

    .line 4
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->onFoldingFeatureChangeListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$1;

    .line 6
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$1;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 14
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeature:Landroidx/window/layout/FoldingFeature;

    .line 16
    new-instance p1, Landroidx/transition/ChangeBounds;

    .line 18
    invoke-direct {p1}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 20
    const-wide/16 v0, 0x12c

    .line 23
    iput-wide v0, p1, Landroidx/transition/Transition;->mDuration:J

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 27
    const/4 v1, 0x0

    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    const v3, 0x3e4ccccd    # 0.2f

    .line 32
    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 35
    iput-object v0, p1, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 38
    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 43
    move-object p0, p2

    .line 46
    :goto_0
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 47
    if-ne p0, p1, :cond_1

    .line 49
    return-object p0

    .line 51
    :cond_1
    return-object p2
    .line 52
.end method
