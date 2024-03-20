.class public final Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;


# instance fields
.field public isFolded:Z

.field public final scopedProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/FoldProvider;Ljava/util/concurrent/Executor;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 2
    invoke-direct {v0, p3}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;->scopedProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 10
    new-instance v0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$FoldListener;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$FoldListener;-><init>(Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;)V

    .line 14
    invoke-interface {p1, v0, p2}, Lcom/android/systemui/unfold/updates/FoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    .line 17
    new-instance p1, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$SourceTransitionListener;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$SourceTransitionListener;-><init>(Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;)V

    .line 22
    invoke-interface {p3, p1}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 25
    return-void
    .line 28
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;->scopedProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
    .line 13
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;->scopedProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    return-void
    .line 13
.end method
