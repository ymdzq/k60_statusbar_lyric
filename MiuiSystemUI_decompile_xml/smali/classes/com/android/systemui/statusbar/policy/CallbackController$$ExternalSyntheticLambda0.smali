.class public final synthetic Lcom/android/systemui/statusbar/policy/CallbackController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/CallbackController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/CallbackController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/CallbackController;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CallbackController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    if-ne p2, v0, :cond_0

    .line 11
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 17
    if-ne p2, v0, :cond_1

    .line 19
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 21
    :cond_1
    :goto_0
    return-void
    .line 24
.end method
