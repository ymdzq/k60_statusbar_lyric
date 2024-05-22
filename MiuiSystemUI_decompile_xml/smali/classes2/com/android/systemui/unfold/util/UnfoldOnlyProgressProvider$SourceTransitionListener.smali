.class public final Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$SourceTransitionListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$SourceTransitionListener;->this$0:Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$SourceTransitionListener;->this$0:Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;->isFolded:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;->scopedProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method
