.class public abstract Landroidx/mediarouter/media/SystemMediaRouteProvider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    .line 4
    const-class v2, Landroidx/mediarouter/media/SystemMediaRouteProvider;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 11
    const-string v3, "android"

    .line 12
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    .line 17
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;)V

    .line 20
    return-void
    .line 23
.end method
