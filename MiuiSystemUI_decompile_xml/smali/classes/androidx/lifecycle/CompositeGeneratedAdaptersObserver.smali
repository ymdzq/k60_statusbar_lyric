.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;


# direct methods
.method public constructor <init>([Landroidx/lifecycle/GeneratedAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object p0, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    .line 7
    array-length p1, p0

    .line 9
    const/4 p2, 0x0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-gtz p1, :cond_1

    .line 12
    array-length p1, p0

    .line 14
    if-gtz p1, :cond_0

    .line 15
    return-void

    .line 17
    :cond_0
    aget-object p0, p0, v0

    .line 18
    throw p2

    .line 20
    :cond_1
    aget-object p0, p0, v0

    .line 21
    throw p2
    .line 23
.end method
