.class public final Lcom/android/systemui/qs/customize/TileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# instance fields
.field public mAccessibilityAction:I

.field public final mAccessibilityDelegate:Lcom/android/systemui/qs/customize/TileAdapterDelegate;

.field public mAccessibilityFromIndex:I

.field public mAllTiles:Ljava/util/List;

.field public final mCallbacks:Lcom/android/systemui/qs/customize/TileAdapter$5;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

.field public mCurrentSpecs:Ljava/util/List;

.field public final mDecoration:Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

.field public mEditIndex:I

.field public mFocusIndex:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public final mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

.field public final mMinNumTiles:I

.field public mMinTileViewHeight:I

.field public mNeedsFocus:Z

.field public mNumColumns:I

.field public mOtherTiles:Ljava/util/List;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mSizeLookup:Lcom/android/systemui/qs/customize/TileAdapter$4;

.field public final mTempTextView:Landroid/widget/TextView;

.field public mTileDividerIndex:I

.field public final mTiles:Ljava/util/List;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static -$$Nest$mselectPosition(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 7
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 9
    add-int/lit8 v3, v2, -0x1

    .line 11
    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 21
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 23
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IIZ)V

    .line 25
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 32
    return-void
    .line 35
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 20
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$4;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$4;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Lcom/android/systemui/qs/customize/TileAdapter$4;

    .line 27
    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$5;

    .line 29
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/TileAdapter$5;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    .line 31
    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Lcom/android/systemui/qs/customize/TileAdapter$5;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 40
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 42
    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 44
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 47
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    .line 49
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    .line 54
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    .line 56
    invoke-direct {p2}, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p2

    .line 66
    const p3, 0x7f0b00f8    # @integer/quick_settings_min_num_tiles '12'

    .line 67
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 70
    move-result p2

    .line 73
    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object p2

    .line 79
    const p3, 0x7f0b00f9    # @integer/quick_settings_num_columns '4'

    .line 80
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 83
    move-result p2

    .line 86
    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    .line 87
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapterDelegate;

    .line 89
    invoke-direct {p2}, Lcom/android/systemui/qs/customize/TileAdapterDelegate;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityDelegate:Lcom/android/systemui/qs/customize/TileAdapterDelegate;

    .line 94
    const/4 p2, 0x1

    .line 96
    iput-boolean p2, v0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 97
    new-instance p2, Landroid/widget/TextView;

    .line 99
    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTempTextView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object p1

    .line 109
    const p2, 0x7f070ff4    # @dimen/qs_tile_height '88.0dp'

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 113
    move-result p1

    .line 116
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinTileViewHeight:I

    .line 117
    return-void
    .line 119
.end method

.method public static strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 2
    const-string v0, "custom("

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    :cond_0
    return-object p0
    .line 20
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x3

    .line 4
    return p0

    .line 5
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 6
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 11
    sub-int/2addr v0, v1

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    const/4 p0, 0x2

    .line 16
    return p0

    .line 17
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 18
    if-ne p1, v0, :cond_2

    .line 20
    const/4 p0, 0x4

    .line 22
    return p0

    .line 23
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 24
    check-cast p0, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    if-nez p0, :cond_3

    .line 32
    return v1

    .line 34
    :cond_3
    const/4 p0, 0x0

    .line 35
    return p0
    .line 36
.end method

.method public final move(IIZ)V
    .locals 3

    .line 1
    if-ne p2, p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13
    if-eqz p3, :cond_1

    .line 16
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 21
    iget p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 24
    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 27
    if-lt p2, p3, :cond_2

    .line 29
    sget-object p1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_REMOVE:Lcom/android/systemui/qs/QSEditEvent;

    .line 31
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p2

    .line 36
    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 37
    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 42
    invoke-interface {v2, p1, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    if-lt p1, p3, :cond_3

    .line 47
    sget-object p1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_ADD:Lcom/android/systemui/qs/QSEditEvent;

    .line 49
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 54
    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 55
    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 60
    invoke-interface {v2, p1, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 61
    goto :goto_0

    .line 64
    :cond_3
    sget-object p1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_MOVE:Lcom/android/systemui/qs/QSEditEvent;

    .line 65
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p2

    .line 70
    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 71
    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 76
    invoke-interface {v2, p1, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 77
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSHost;)V

    .line 82
    return-void
    .line 85
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    return-void
    .line 4
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinTileViewHeight:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 10
    :cond_0
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 13
    const/4 v2, 0x4

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x3

    .line 18
    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    if-ne v1, v5, :cond_3

    .line 21
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 23
    if-nez p0, :cond_1

    .line 25
    move v4, v3

    .line 27
    :cond_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 28
    if-eqz v4, :cond_2

    .line 31
    move v2, v3

    .line 33
    :cond_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 34
    invoke-virtual {v6, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 37
    goto/16 :goto_7

    .line 40
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 42
    if-ne v1, v2, :cond_5

    .line 44
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 46
    check-cast v5, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result p1

    .line 53
    sub-int/2addr p1, v3

    .line 54
    if-ge p0, p1, :cond_4

    .line 55
    move v2, v4

    .line 57
    :cond_4
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    goto/16 :goto_7

    .line 61
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 63
    if-ne v1, v3, :cond_b

    .line 65
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 71
    if-nez p2, :cond_6

    .line 73
    const p2, 0x7f1303b4    # @string/drag_to_add_tiles 'Press and hold to add or rearrange items'

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 81
    goto :goto_1

    .line 82
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 83
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 85
    move-result p2

    .line 88
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    .line 89
    if-le p2, v0, :cond_7

    .line 91
    move p2, v3

    .line 93
    goto :goto_0

    .line 94
    :cond_7
    move p2, v4

    .line 95
    :goto_0
    if-nez p2, :cond_8

    .line 96
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 98
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 100
    move-result p2

    .line 103
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 104
    if-ge p2, v1, :cond_8

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object p2

    .line 111
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 112
    move-result-object p2

    .line 115
    const v0, 0x7f1303b6    # @string/drag_to_remove_disabled 'You need at least %1$d tiles'

    .line 116
    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 122
    goto :goto_1

    .line 123
    :cond_8
    const p2, 0x7f1303b7    # @string/drag_to_remove_tiles 'Drag here to remove'

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 130
    :goto_1
    const p2, 0x1020016    # @android:id/title

    .line 131
    invoke-virtual {v6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object p2

    .line 137
    check-cast p2, Landroid/widget/TextView;

    .line 138
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 143
    if-nez p0, :cond_9

    .line 145
    move v4, v3

    .line 147
    :cond_9
    invoke-virtual {v6, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    if-eqz v4, :cond_a

    .line 151
    move v2, v3

    .line 153
    :cond_a
    invoke-virtual {v6, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 154
    invoke-virtual {v6, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 157
    goto/16 :goto_7

    .line 160
    :cond_b
    const/4 v6, -0x1

    .line 162
    const v8, 0x7f1300c9    # @string/accessibility_qs_edit_tile_add_to_position 'Add to position %1$d'

    .line 163
    const/4 v9, 0x2

    .line 166
    if-ne v1, v9, :cond_c

    .line 167
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    .line 169
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 172
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 175
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setVisibility(I)V

    .line 178
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object p2

    .line 187
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 188
    move-result-object p2

    .line 191
    invoke-virtual {v7, v8, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    move-result-object p2

    .line 195
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$1;

    .line 199
    invoke-direct {p2, p0, p1, v4}, Lcom/android/systemui/qs/customize/TileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V

    .line 201
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-boolean p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 207
    if-eqz p2, :cond_15

    .line 209
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 211
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$3;

    .line 214
    invoke-direct {p2, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 219
    iput-boolean v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 222
    iput v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    .line 224
    goto/16 :goto_7

    .line 226
    :cond_c
    check-cast v5, Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    move-result-object v1

    .line 233
    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 234
    if-lez p2, :cond_d

    .line 236
    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 238
    if-ge p2, v5, :cond_d

    .line 240
    move v5, v3

    .line 242
    goto :goto_2

    .line 243
    :cond_d
    move v5, v4

    .line 244
    :goto_2
    if-eqz v5, :cond_e

    .line 245
    iget v10, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 247
    if-ne v10, v3, :cond_e

    .line 249
    iget-object v9, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    move-result-object v10

    .line 256
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 257
    move-result-object v10

    .line 260
    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    move-result-object v7

    .line 264
    iput-object v7, v9, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 265
    goto :goto_3

    .line 267
    :cond_e
    if-eqz v5, :cond_f

    .line 268
    iget v8, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 270
    if-ne v8, v9, :cond_f

    .line 272
    iget-object v8, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    move-result-object v9

    .line 279
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 280
    move-result-object v9

    .line 283
    const v10, 0x7f1300cd    # @string/accessibility_qs_edit_tile_move_to_position 'Move to %1$d'

    .line 284
    invoke-virtual {v7, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    move-result-object v7

    .line 290
    iput-object v7, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 291
    goto :goto_3

    .line 293
    :cond_f
    iget-object v7, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 294
    iget-object v8, v7, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 296
    iput-object v8, v7, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 298
    :goto_3
    iget-object v7, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 300
    const-string v8, ""

    .line 302
    iput-object v8, v7, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 304
    move-object v7, v0

    .line 306
    check-cast v7, Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 307
    const-string v8, "The holder must have a tileView"

    .line 309
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 311
    iget-object v8, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 314
    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/customize/CustomizeTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 316
    iget v8, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 319
    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 321
    if-le p2, v8, :cond_10

    .line 323
    if-nez v1, :cond_10

    .line 325
    move v8, v3

    .line 327
    goto :goto_4

    .line 328
    :cond_10
    move v8, v4

    .line 329
    :goto_4
    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 330
    iget v8, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 333
    if-lt p2, v8, :cond_12

    .line 335
    if-eqz v1, :cond_11

    .line 337
    goto :goto_5

    .line 339
    :cond_11
    move v1, v4

    .line 340
    goto :goto_6

    .line 341
    :cond_12
    :goto_5
    move v1, v3

    .line 342
    :goto_6
    invoke-virtual {v7, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowSideView(Z)V

    .line 343
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 346
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 349
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    .line 352
    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 359
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 362
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 365
    if-eqz v1, :cond_14

    .line 367
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    .line 369
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 372
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 375
    if-eqz v5, :cond_13

    .line 378
    move v2, v3

    .line 380
    :cond_13
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 381
    if-eqz v5, :cond_14

    .line 384
    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$1;

    .line 386
    invoke-direct {v1, p0, p1, v3}, Lcom/android/systemui/qs/customize/TileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V

    .line 388
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    :cond_14
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    .line 394
    if-ne p2, v1, :cond_15

    .line 396
    iget-boolean p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 398
    if-eqz p2, :cond_15

    .line 400
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 402
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$3;

    .line 405
    invoke-direct {p2, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    .line 407
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 410
    iput-boolean v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 413
    iput v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    .line 415
    :cond_15
    :goto_7
    return-void
    .line 417
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne p1, v2, :cond_1

    .line 12
    const p1, 0x7f0d02f3    # @layout/qs_customize_header 'res/layout/qs_customize_header.xml'

    .line 14
    invoke-virtual {v1, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p2

    .line 24
    const v1, 0x7f140274    # @style/QSCustomizeToolbar

    .line 25
    sget-object v2, Lcom/android/internal/R$styleable;->Toolbar:[I

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 30
    move-result-object v1

    .line 33
    const/16 v2, 0x1b

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 36
    move-result v2

    .line 39
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    if-eqz v2, :cond_0

    .line 43
    sget-object v1, Landroid/R$styleable;->View:[I

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 47
    move-result-object v0

    .line 50
    const/16 v1, 0x24

    .line 51
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 53
    move-result v3

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    :cond_0
    const v0, 0x7f070fde    # @dimen/qs_panel_padding_top '80.0dp'

    .line 60
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    move-result v0

    .line 66
    const v1, 0x7f070124    # @dimen/brightness_mirror_height '48.0dp'

    .line 67
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 70
    move-result v1

    .line 73
    add-int/2addr v1, v0

    .line 74
    const v0, 0x7f070ece    # @dimen/qs_brightness_margin_top '8.0dp'

    .line 75
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 78
    move-result v0

    .line 81
    add-int/2addr v0, v1

    .line 82
    const v1, 0x7f070ecd    # @dimen/qs_brightness_margin_bottom '16.0dp'

    .line 83
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    move-result v1

    .line 89
    add-int/2addr v1, v0

    .line 90
    sub-int/2addr v1, v3

    .line 91
    const v0, 0x7f070ffd    # @dimen/qs_tile_margin_top_bottom '4.0dp'

    .line 92
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 95
    move-result p2

    .line 98
    sub-int/2addr v1, p2

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 100
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 103
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    .line 105
    goto :goto_1

    .line 108
    :cond_1
    const/4 v2, 0x4

    .line 109
    if-ne p1, v2, :cond_2

    .line 110
    new-instance p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 112
    const v0, 0x7f0d02f6    # @layout/qs_customize_tile_divider 'res/layout/qs_customize_tile_divider.xml'

    .line 114
    invoke-virtual {v1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 117
    move-result-object p2

    .line 120
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    .line 121
    :goto_0
    move-object p2, p1

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    const/4 v2, 0x1

    .line 126
    if-ne p1, v2, :cond_3

    .line 127
    new-instance p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 129
    const v0, 0x7f0d02f2    # @layout/qs_customize_divider 'res/layout/qs_customize_divider.xml'

    .line 131
    invoke-virtual {v1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 134
    move-result-object p2

    .line 137
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    .line 138
    goto :goto_0

    .line 141
    :cond_3
    const p1, 0x7f0d02f7    # @layout/qs_customize_tile_frame 'res/layout/qs_customize_tile_frame.xml'

    .line 142
    invoke-virtual {v1, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    move-result-object p1

    .line 148
    check-cast p1, Landroid/widget/FrameLayout;

    .line 149
    new-instance p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 151
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    .line 153
    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-direct {p2, v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V

    .line 158
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 164
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    .line 166
    :goto_1
    return-object p2
    .line 169
.end method

.method public final onDetachedFromRecyclerView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-void
    .line 5
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->stopDrag()V

    .line 4
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 17
    const/4 p0, 0x1

    .line 20
    return p0
    .line 21
.end method

.method public final recalcSpecs()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 2
    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto/16 :goto_4

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 21
    move-object v1, v0

    .line 23
    check-cast v1, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 26
    move-object v1, v0

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const/4 v1, 0x0

    .line 36
    move v3, v1

    .line 37
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 38
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 40
    move-result v4

    .line 43
    if-ge v3, v4, :cond_4

    .line 44
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 46
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 52
    move v5, v1

    .line 54
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 55
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 57
    move-result v6

    .line 60
    if-ge v5, v6, :cond_2

    .line 61
    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 63
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v6

    .line 68
    check-cast v6, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 69
    iget-object v6, v6, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 71
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v6

    .line 76
    if-eqz v6, :cond_1

    .line 77
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 79
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 84
    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 85
    goto :goto_2

    .line 87
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 88
    goto :goto_1

    .line 90
    :cond_2
    move-object v4, v2

    .line 91
    :goto_2
    if-eqz v4, :cond_3

    .line 92
    move-object v5, v0

    .line 94
    check-cast v5, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 100
    goto :goto_0

    .line 102
    :cond_4
    move-object v3, v0

    .line 103
    check-cast v3, Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 109
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 111
    move-result v3

    .line 114
    if-ge v1, v3, :cond_6

    .line 115
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 117
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v3

    .line 122
    check-cast v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 123
    iget-boolean v4, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 125
    if-eqz v4, :cond_5

    .line 127
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 129
    add-int/lit8 v5, v1, -0x1

    .line 131
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    move-object v1, v0

    .line 136
    check-cast v1, Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    move v1, v5

    .line 142
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 143
    goto :goto_3

    .line 145
    :cond_6
    move-object v1, v0

    .line 146
    check-cast v1, Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 149
    move-result v1

    .line 152
    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 153
    move-object v1, v0

    .line 155
    check-cast v1, Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 161
    check-cast v0, Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 168
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 171
    :cond_7
    :goto_4
    return-void
    .line 174
.end method

.method public final saveSpecs(Lcom/android/systemui/qs/QSHost;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 8
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 10
    const/4 v3, 0x1

    .line 12
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 13
    if-ne v2, v3, :cond_0

    .line 15
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 17
    sub-int/2addr v2, v3

    .line 19
    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 20
    move-object v5, v4

    .line 22
    check-cast v5, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    :cond_0
    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 31
    :goto_0
    move-object v1, v4

    .line 33
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v1

    .line 39
    if-ge v3, v1, :cond_1

    .line 40
    move-object v1, v4

    .line 42
    check-cast v1, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    move-object v1, v4

    .line 51
    check-cast v1, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 58
    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 68
    invoke-interface {p1, v1, v0}, Lcom/android/systemui/qs/QSHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    .line 70
    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 73
    return-void
    .line 75
.end method

.method public final updateDividerLocations()V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 5
    move-object v2, v1

    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 13
    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 14
    const/4 v2, 0x1

    .line 16
    move v3, v2

    .line 17
    :goto_0
    move-object v4, v1

    .line 18
    check-cast v4, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v4

    .line 24
    if-ge v3, v4, :cond_2

    .line 25
    move-object v4, v1

    .line 27
    check-cast v4, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    iget v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 36
    if-ne v4, v0, :cond_0

    .line 38
    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 40
    goto :goto_1

    .line 42
    :cond_0
    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 43
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    check-cast v1, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v0

    .line 53
    sub-int/2addr v0, v2

    .line 54
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 55
    if-ne v0, v1, :cond_3

    .line 57
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 59
    :cond_3
    return-void
    .line 62
.end method
