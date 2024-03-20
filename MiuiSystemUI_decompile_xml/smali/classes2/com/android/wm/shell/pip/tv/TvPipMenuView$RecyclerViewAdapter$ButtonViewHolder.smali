.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

.field public final synthetic this$1:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;Lcom/android/wm/shell/common/TvWindowMenuActionButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;->this$1:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;->mButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 7
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;->this$1:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->mActionList:Ljava/util/List;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 10
    move-result p0

    .line 13
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipAction;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipAction;->executeAction()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method
