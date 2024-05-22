.class public final synthetic Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/window/layout/adapter/sidecar/SidecarCompat;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    .line 5
    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/content/res/Configuration;

    .line 2
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    .line 4
    iget-object v0, p1, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    .line 10
    invoke-virtual {p1, p0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {v0, p0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
