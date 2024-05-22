.class public final Landroidx/transition/TransitionSet$TransitionSetListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mTransitionSet:Landroidx/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 2
    iget v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 6
    iput v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    .line 8
    if-nez v1, :cond_0

    .line 10
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 13
    invoke-virtual {v0}, Landroidx/transition/Transition;->end()V

    .line 15
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 18
    return-void
    .line 21
.end method

.method public final onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 2
    iget-boolean p1, p0, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 4
    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 8
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 12
    :cond_0
    return-void
    .line 14
.end method
