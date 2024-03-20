.class Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->this$0:Landroidx/activity/ComponentActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    if-ne p2, p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->this$0:Landroidx/activity/ComponentActivity;

    .line 6
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Landroidx/activity/contextaware/ContextAwareHelper;

    .line 8
    const/4 p2, 0x0

    .line 10
    iput-object p2, p1, Landroidx/activity/contextaware/ContextAwareHelper;->context:Landroid/content/Context;

    .line 11
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->this$0:Landroidx/activity/ComponentActivity;

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 15
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    iget-object p0, p0, Landroidx/activity/ComponentActivity$4;->this$0:Landroidx/activity/ComponentActivity;

    .line 21
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 27
    :cond_0
    return-void
    .line 30
.end method
