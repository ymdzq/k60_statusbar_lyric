.class public final Landroidx/mediarouter/media/MediaRouteSelector$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mControlCategories:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 7
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 20
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    .line 25
    :cond_0
    return-void

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string/jumbo p1, "selector must not be null"

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
    .line 36
.end method


# virtual methods
.method public final addControlCategories(Ljava/util/Collection;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    .line 28
    if-nez v1, :cond_1

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    .line 37
    :cond_1
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    const-string p1, "category must not be null"

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0

    .line 60
    :cond_3
    return-void
    .line 61
.end method

.method public final build()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    sget-object p0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 6
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v1, "controlCategories"

    .line 14
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    new-instance v1, Landroidx/mediarouter/media/MediaRouteSelector;

    .line 21
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1, v0, p0}, Landroidx/mediarouter/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    .line 25
    return-object v1
    .line 28
.end method
