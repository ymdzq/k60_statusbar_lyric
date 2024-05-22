.class public final synthetic Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/RemoteTransition;


# direct methods
.method public synthetic constructor <init>(Landroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;->f$0:Landroid/window/RemoteTransition;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;->f$0:Landroid/window/RemoteTransition;

    .line 2
    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    .line 4
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 6
    iget-object v0, p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ltz v1, :cond_1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 22
    check-cast v4, Landroid/util/Pair;

    .line 23
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 25
    check-cast v4, Landroid/window/RemoteTransition;

    .line 27
    invoke-virtual {v4}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 29
    move-result-object v4

    .line 32
    invoke-virtual {p0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 33
    move-result-object v5

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    move v3, v2

    .line 46
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {p0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 52
    move-result-object p0

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->unhandleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 57
    :cond_2
    return-void
    .line 60
.end method
