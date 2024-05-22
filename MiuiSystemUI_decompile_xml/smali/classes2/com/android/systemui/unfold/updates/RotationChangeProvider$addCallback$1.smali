.class public final Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $listener:Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationListener;

.field public final synthetic this$0:Lcom/android/systemui/unfold/updates/RotationChangeProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/RotationChangeProvider;Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;->this$0:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;->$listener:Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationListener;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;->this$0:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->listeners:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;->this$0:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 19
    iget-object v2, v0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->displayListener:Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationDisplayListener;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->mainHandler:Landroid/os/Handler;

    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 30
    move-result-object p0

    .line 33
    throw p0

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;->this$0:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 35
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->listeners:Ljava/util/List;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;->$listener:Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationListener;

    .line 39
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
    .line 44
.end method
