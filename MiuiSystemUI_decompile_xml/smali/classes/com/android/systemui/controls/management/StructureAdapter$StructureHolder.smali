.class public final Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final controlAdapter:Lcom/android/systemui/controls/management/ControlAdapter;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x7f0a04ff    # @id/listAll

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v1

    .line 21
    const v2, 0x7f07020b    # @dimen/control_card_elevation '15.0'

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 25
    move-result v1

    .line 28
    new-instance v2, Lcom/android/systemui/controls/management/ControlAdapter;

    .line 29
    invoke-direct {v2, v1}, Lcom/android/systemui/controls/management/ControlAdapter;-><init>(F)V

    .line 31
    iput-object v2, p0, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->controlAdapter:Lcom/android/systemui/controls/management/ControlAdapter;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object p0

    .line 43
    const v1, 0x7f07022a    # @dimen/controls_card_margin '@dimen/control_base_item_margin'

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result p0

    .line 50
    new-instance v1, Lcom/android/systemui/controls/management/MarginItemDecorator;

    .line 51
    invoke-direct {v1, p0, p0}, Lcom/android/systemui/controls/management/MarginItemDecorator;-><init>(II)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object p0

    .line 59
    const p1, 0x7f0b004f    # @integer/controls_max_columns '2'

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 63
    move-result p1

    .line 66
    const v3, 0x7f0b0050    # @integer/controls_max_columns_adjust_below_width_dp '320'

    .line 67
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 70
    move-result v3

    .line 73
    new-instance v4, Landroid/util/TypedValue;

    .line 74
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 76
    const v5, 0x7f070245    # @dimen/controls_max_columns_adjust_above_font_scale '1.25'

    .line 79
    const/4 v6, 0x1

    .line 82
    invoke-virtual {p0, v5, v4, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 83
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    .line 86
    move-result v4

    .line 89
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 90
    move-result-object p0

    .line 93
    iget v5, p0, Landroid/content/res/Configuration;->orientation:I

    .line 94
    if-ne v5, v6, :cond_0

    .line 96
    goto :goto_0

    .line 98
    :cond_0
    const/4 v6, 0x0

    .line 99
    :goto_0
    if-eqz v6, :cond_1

    .line 100
    iget v5, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 102
    if-eqz v5, :cond_1

    .line 104
    if-gt v5, v3, :cond_1

    .line 106
    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 108
    cmpl-float p0, p0, v4

    .line 110
    if-ltz p0, :cond_1

    .line 112
    add-int/lit8 p1, p1, -0x1

    .line 114
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 116
    new-instance p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 121
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 124
    new-instance v2, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder$setUpRecyclerView$1$1$1;

    .line 127
    invoke-direct {v2, p1, v0}, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder$setUpRecyclerView$1$1$1;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 129
    iput-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 132
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 134
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 137
    return-void
    .line 140
.end method
