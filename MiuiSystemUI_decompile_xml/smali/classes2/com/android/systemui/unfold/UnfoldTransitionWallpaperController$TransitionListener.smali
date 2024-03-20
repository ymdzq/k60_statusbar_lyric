.class public final Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/WallpaperController;->wallpaperInfo:Landroid/app/WallpaperInfo;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->shouldUseDefaultUnfoldTransition()Z

    .line 10
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/systemui/util/WallpaperController;->unfoldTransitionZoomOut:F

    .line 19
    iget p0, p0, Lcom/android/systemui/util/WallpaperController;->notificationShadeZoomOut:F

    .line 21
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public final onTransitionProgress(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    .line 4
    const/4 v0, 0x1

    .line 6
    int-to-float v1, v0

    .line 7
    sub-float/2addr v1, p1

    .line 8
    iget-object p1, p0, Lcom/android/systemui/util/WallpaperController;->wallpaperInfo:Landroid/app/WallpaperInfo;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->shouldUseDefaultUnfoldTransition()Z

    .line 13
    move-result v0

    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    iput v1, p0, Lcom/android/systemui/util/WallpaperController;->unfoldTransitionZoomOut:F

    .line 19
    iget p0, p0, Lcom/android/systemui/util/WallpaperController;->notificationShadeZoomOut:F

    .line 21
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    .line 23
    :cond_1
    return-void
    .line 26
.end method
