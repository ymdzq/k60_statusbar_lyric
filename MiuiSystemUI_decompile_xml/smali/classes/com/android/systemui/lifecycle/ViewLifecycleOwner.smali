.class public final Lcom/android/systemui/lifecycle/ViewLifecycleOwner;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field public final registry:Landroidx/lifecycle/LifecycleRegistry;

.field public final view:Landroid/view/View;

.field public final windowFocusListener:Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowFocusListener$1;

.field public final windowVisibleListener:Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowVisibleListener$1;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->view:Landroid/view/View;

    .line 5
    new-instance p1, Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowVisibleListener$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowVisibleListener$1;-><init>(Lcom/android/systemui/lifecycle/ViewLifecycleOwner;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->windowVisibleListener:Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowVisibleListener$1;

    .line 12
    new-instance p1, Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowFocusListener$1;

    .line 14
    invoke-direct {p1, p0}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowFocusListener$1;-><init>(Lcom/android/systemui/lifecycle/ViewLifecycleOwner;)V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->windowFocusListener:Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowFocusListener$1;

    .line 19
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    .line 21
    const/4 v0, 0x1

    .line 23
    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 27
    return-void
    .line 29
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->view:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->windowVisibleListener:Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowVisibleListener$1;

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->windowFocusListener:Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowFocusListener$1;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 19
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 24
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 26
    return-void
    .line 29
.end method

.method public final updateState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->view:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 24
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 26
    return-void
    .line 29
.end method
