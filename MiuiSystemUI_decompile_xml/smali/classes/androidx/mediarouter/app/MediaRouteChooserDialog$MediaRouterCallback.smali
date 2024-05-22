.class public final Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 2
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onRouteAdded()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 2
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 4
    return-void
    .line 7
.end method

.method public final onRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 2
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 4
    return-void
    .line 7
.end method

.method public final onRouteRemoved()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 2
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 4
    return-void
    .line 7
.end method

.method public final onRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 4
    return-void
    .line 7
.end method
