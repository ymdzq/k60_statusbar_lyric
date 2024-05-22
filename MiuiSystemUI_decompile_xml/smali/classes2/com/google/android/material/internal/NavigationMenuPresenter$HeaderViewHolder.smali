.class public final Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;
.super Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(ILandroid/view/LayoutInflater;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    const p1, 0x7f0d009a    # @layout/design_navigation_item_separator 'res/layout/design_navigation_item_separator.xml'

    .line 6
    invoke-virtual {p2, p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    return-void

    .line 16
    :cond_0
    const p1, 0x7f0d009b    # @layout/design_navigation_item_subheader 'res/layout/design_navigation_item_subheader.xml'

    .line 17
    invoke-virtual {p2, p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    return-void
    .line 27
.end method
