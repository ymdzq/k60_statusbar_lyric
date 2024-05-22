.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# instance fields
.field public final mView:Landroid/view/View;

.field public final mZOrder:I

.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;->mView:Landroid/view/View;

    .line 7
    iput p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;->mZOrder:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;->mView:Landroid/view/View;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 14
    iget-object v1, v1, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    .line 16
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;->mZOrder:I

    .line 18
    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final surfaceDestroyed()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
