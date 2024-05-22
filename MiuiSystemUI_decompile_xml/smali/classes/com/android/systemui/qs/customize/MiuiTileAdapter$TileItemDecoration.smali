.class public final Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;->this$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    const p1, 0x7f081725    # @drawable/qs_customize_tile_decoration 'res/drawable/qs_customize_tile_decoration.xml'

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;->this$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 19
    move-result v0

    .line 22
    iget v3, v2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 23
    if-le v0, v3, :cond_0

    .line 25
    move v3, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    move-result v0

    .line 32
    move v3, v1

    .line 33
    :goto_0
    if-ge v3, v0, :cond_2

    .line 34
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v4

    .line 39
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 40
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 44
    move-result v4

    .line 47
    iget v5, v2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 48
    if-ne v4, v5, :cond_1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    const/4 v3, -0x1

    .line 56
    :goto_1
    if-ltz v3, :cond_3

    .line 57
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 63
    move-result v2

    .line 66
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    .line 67
    move-result p2

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    move-result-object v3

    .line 74
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 77
    move-result v4

    .line 80
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 81
    add-int/2addr v4, v3

    .line 83
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 86
    move-result v0

    .line 89
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 90
    move-result v0

    .line 93
    add-int/2addr v0, v4

    .line 94
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    :cond_3
    return-void
    .line 103
.end method
