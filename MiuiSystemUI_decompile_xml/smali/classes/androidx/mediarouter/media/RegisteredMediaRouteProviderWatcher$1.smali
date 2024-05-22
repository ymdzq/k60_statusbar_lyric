.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 2
    invoke-virtual {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->scanPackages()V

    .line 4
    return-void
    .line 7
.end method
