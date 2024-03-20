.class public final synthetic Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

.field public final synthetic f$1:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 9
    iget v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mResizeAnimationDuration:I

    .line 11
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(ILandroid/graphics/Rect;)V

    .line 13
    const/4 p0, 0x0

    .line 16
    iput-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$$ExternalSyntheticLambda0;

    .line 17
    return-void
    .line 19
.end method
