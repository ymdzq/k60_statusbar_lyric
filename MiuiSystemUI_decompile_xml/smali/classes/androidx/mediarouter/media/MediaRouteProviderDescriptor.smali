.class public final Landroidx/mediarouter/media/MediaRouteProviderDescriptor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mRoutes:Ljava/util/List;

.field public final mSupportsDynamicGroupRoute:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    move-result-object p1

    .line 10
    :cond_0
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    .line 11
    iput-boolean p2, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mSupportsDynamicGroupRoute:Z

    .line 13
    return-void
    .line 15
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    const-string/jumbo v1, "routes"

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result v3

    .line 19
    if-nez v3, :cond_3

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v3

    .line 25
    new-instance v4, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    move v5, v2

    .line 31
    :goto_0
    if-ge v5, v3, :cond_2

    .line 32
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v6

    .line 37
    check-cast v6, Landroid/os/Bundle;

    .line 38
    if-eqz v6, :cond_1

    .line 40
    new-instance v7, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 42
    invoke-direct {v7, v6}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    .line 44
    goto :goto_1

    .line 47
    :cond_1
    move-object v7, v0

    .line 48
    :goto_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    move-object v0, v4

    .line 55
    :cond_3
    const-string/jumbo v1, "supportsDynamicGroupRoute"

    .line 56
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    move-result p0

    .line 62
    new-instance v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 63
    invoke-direct {v1, v0, p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;-><init>(Ljava/util/List;Z)V

    .line 65
    return-object v1
    .line 68
.end method


# virtual methods
.method public final isValid()Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 16
    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isValid()Z

    .line 20
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return v1

    .line 30
    :cond_2
    const/4 p0, 0x1

    .line 31
    return p0
    .line 32
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MediaRouteProviderDescriptor{ routes="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ", isValid="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->isValid()Z

    .line 27
    move-result p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string p0, " }"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    return-object p0
    .line 43
.end method
