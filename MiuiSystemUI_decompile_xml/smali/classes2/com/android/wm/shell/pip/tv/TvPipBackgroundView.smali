.class public final Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBackgroundView:Landroid/view/View;

.field public mCurrentMenuMode:I

.field public final mElevationAllActionsMenu:I

.field public final mElevationMoveMenu:I

.field public final mElevationNoMenu:I

.field public final mPipMenuFadeAnimationDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    .line 7
    const v0, 0x7f0d03cd    # @layout/tv_pip_menu_background 'res/layout/tv_pip_menu_background.xml'

    .line 9
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    const p1, 0x7f0a0107    # @id/background_view

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mBackgroundView:Landroid/view/View;

    .line 22
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 29
    const v0, 0x7f070e90    # @dimen/pip_menu_elevation_no_menu '1.0dp'

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v0

    .line 36
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationNoMenu:I

    .line 37
    const v0, 0x7f070e8f    # @dimen/pip_menu_elevation_move_menu '7.0dp'

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v0

    .line 45
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationMoveMenu:I

    .line 46
    const v0, 0x7f070e8e    # @dimen/pip_menu_elevation_all_actions_menu '4.0dp'

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result v0

    .line 54
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationAllActionsMenu:I

    .line 55
    const v0, 0x7f0b010c    # @integer/tv_window_menu_fade_animation_duration '500'

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 60
    move-result p1

    .line 63
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mPipMenuFadeAnimationDuration:I

    .line 64
    return-void
    .line 66
.end method
