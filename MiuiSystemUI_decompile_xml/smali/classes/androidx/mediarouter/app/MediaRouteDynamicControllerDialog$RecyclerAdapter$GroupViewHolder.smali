.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDisabledAlpha:F

.field public final mImageView:Landroid/widget/ImageView;

.field public final mItemView:Landroid/view/View;

.field public final mProgressBar:Landroid/widget/ProgressBar;

.field public mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final mTextView:Landroid/widget/TextView;

.field public final synthetic this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mItemView:Landroid/view/View;

    .line 7
    const v0, 0x7f0a0625    # @id/mr_cast_group_icon

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/ImageView;

    .line 16
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 18
    const v0, 0x7f0a0627    # @id/mr_cast_group_progress_bar

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/ProgressBar;

    .line 27
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 29
    const v1, 0x7f0a0626    # @id/mr_cast_group_name

    .line 31
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 37
    check-cast p2, Landroid/widget/TextView;

    .line 38
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mTextView:Landroid/widget/TextView;

    .line 40
    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 42
    iget-object p2, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getDisabledAlpha(Landroid/content/Context;)F

    .line 46
    move-result p2

    .line 49
    iput p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mDisabledAlpha:F

    .line 50
    iget-object p0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 52
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setIndeterminateProgressBarColor(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 56
    return-void
    .line 59
.end method
