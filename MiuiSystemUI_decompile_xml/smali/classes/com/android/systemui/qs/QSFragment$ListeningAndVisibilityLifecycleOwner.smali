.class Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field public mDestroyed:Z

.field public final mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    .line 7
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 13
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->mDestroyed:Z

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->updateState()V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    return-object p0
    .line 4
.end method

.method public final updateState()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->mDestroyed:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 8
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 10
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$ListeningAndVisibilityLifecycleOwner;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 16
    if-nez v0, :cond_1

    .line 18
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 20
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 22
    return-void

    .line 25
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsVisible:Z

    .line 26
    if-nez p0, :cond_2

    .line 28
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 30
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 32
    return-void

    .line 35
    :cond_2
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 36
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 38
    return-void
    .line 41
.end method
