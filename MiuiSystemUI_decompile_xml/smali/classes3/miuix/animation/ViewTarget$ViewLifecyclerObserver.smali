.class public Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field final synthetic this$0:Lmiuix/animation/ViewTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/ViewTarget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;->this$0:Lmiuix/animation/ViewTarget;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object p0, p0, Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;->this$0:Lmiuix/animation/ViewTarget;

    .line 2
    invoke-static {p0}, Lmiuix/animation/ViewTarget;->access$200(Lmiuix/animation/ViewTarget;)V

    .line 4
    return-void
    .line 7
.end method
