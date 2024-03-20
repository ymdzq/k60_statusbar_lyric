.class public final synthetic Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic f$0:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public synthetic constructor <init>(Landroidx/savedstate/SavedStateRegistry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;->f$0:Landroidx/savedstate/SavedStateRegistry;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;->f$0:Landroidx/savedstate/SavedStateRegistry;

    .line 4
    if-ne p2, p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/savedstate/SavedStateRegistry;->isAllowingSavingState:Z

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    if-ne p2, p1, :cond_1

    .line 14
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Landroidx/savedstate/SavedStateRegistry;->isAllowingSavingState:Z

    .line 17
    :cond_1
    :goto_0
    return-void
    .line 19
.end method
