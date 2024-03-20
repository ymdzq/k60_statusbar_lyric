.class public final Lcom/android/systemui/qs/customize/MiuiTileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAccessibilityAction:I

.field public mAccessibilityFromIndex:I

.field public mAccessibilityFromLabel:Ljava/lang/CharSequence;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAllTiles:Ljava/util/List;

.field public final mCallbacks:Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDrag:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

.field public mCurrentSpecs:Ljava/util/List;

.field public final mDecoration:Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;

.field public mEditIndex:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public final mMinNumTiles:I

.field public mNeedsFocus:Z

.field public mOtherTiles:Ljava/util/List;

.field public final mSizeLookup:Lcom/android/systemui/qs/customize/MiuiTileAdapter$2;

.field public mSpanCount:I

.field public mTileDividerIndex:I

.field public final mTiles:Ljava/util/List;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 20
    new-instance v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$2;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$2;-><init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;)V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mSizeLookup:Lcom/android/systemui/qs/customize/MiuiTileAdapter$2;

    .line 27
    new-instance v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;

    .line 29
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;)V

    .line 31
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCallbacks:Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 40
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 47
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 50
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 52
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 54
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 57
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;

    .line 59
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mDecoration:Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object p1

    .line 69
    const p2, 0x7f0b00f8    # @integer/quick_settings_min_num_tiles '12'

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 73
    move-result p1

    .line 76
    iput p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mMinNumTiles:I

    .line 77
    return-void
    .line 79
.end method

.method public static strip(Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

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
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 7
    sub-int/2addr v0, v1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 14
    if-ne p1, v0, :cond_1

    .line 16
    const/4 p0, 0x3

    .line 18
    return p0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    if-nez p0, :cond_2

    .line 28
    return v1

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return p0
    .line 32
.end method

.method public final move(II)V
    .locals 4

    .line 1
    if-ne p2, p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 13
    iget-object v1, v1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 15
    iget-object v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->updateDividerLocations()V

    .line 29
    iget v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 32
    const/4 v2, 0x0

    .line 34
    iget-object v3, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 35
    if-lt p2, v1, :cond_1

    .line 37
    sget-object p1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_REMOVE:Lcom/android/systemui/qs/QSEditEvent;

    .line 39
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 44
    check-cast p2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 45
    invoke-static {p2}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->strip(Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;)Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 50
    invoke-interface {v3, p1, v2, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    if-lt p1, v1, :cond_2

    .line 55
    sget-object p1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_ADD:Lcom/android/systemui/qs/QSEditEvent;

    .line 57
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 62
    check-cast p2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 63
    invoke-static {p2}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->strip(Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;)Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 68
    invoke-interface {v3, p1, v2, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 69
    goto :goto_0

    .line 72
    :cond_2
    sget-object p1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_MOVE:Lcom/android/systemui/qs/QSEditEvent;

    .line 73
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object p2

    .line 78
    check-cast p2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 79
    invoke-static {p2}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->strip(Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;)Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 84
    invoke-interface {v3, p1, v2, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->saveSpecs()V

    .line 88
    return-void
    .line 91
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1
    check-cast p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 2
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    if-ne v0, v3, :cond_1

    .line 12
    iget p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result p2

    .line 21
    sub-int/2addr p2, v2

    .line 22
    if-ge p0, p2, :cond_0

    .line 23
    move v4, v5

    .line 25
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 28
    goto/16 :goto_4

    .line 31
    :cond_1
    if-ne v0, v2, :cond_2

    .line 33
    goto/16 :goto_4

    .line 35
    :cond_2
    iget-object v3, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;

    .line 37
    const v6, 0x7f1300c7    # @string/accessibility_qs_edit_tile_add 'Add %1$s to position %2$d'

    .line 39
    const/4 v7, 0x2

    .line 42
    iget-object v8, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mContext:Landroid/content/Context;

    .line 43
    if-ne v0, v7, :cond_3

    .line 45
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 47
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 50
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 53
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p2

    .line 67
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 68
    move-result-object p2

    .line 71
    invoke-virtual {v8, v6, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 75
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;

    .line 79
    invoke-direct {p2, p0, p1, v5}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;I)V

    .line 81
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-boolean p2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mNeedsFocus:Z

    .line 87
    if-eqz p2, :cond_c

    .line 89
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 91
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter$1;

    .line 94
    invoke-direct {p2, p1}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;)V

    .line 96
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 99
    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mNeedsFocus:Z

    .line 102
    goto/16 :goto_4

    .line 104
    :cond_3
    check-cast v1, Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 111
    check-cast v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 112
    if-nez v0, :cond_4

    .line 114
    goto/16 :goto_4

    .line 116
    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 118
    move-result-object v1

    .line 121
    iget-boolean v9, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->isSystem:Z

    .line 122
    xor-int/lit8 v10, v9, 0x1

    .line 124
    invoke-virtual {v1, v10}, Lcom/android/systemui/plugins/qs/QSIconView;->setIsCustomTile(Z)V

    .line 126
    iget v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 129
    iget-object v0, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 131
    if-le p2, v1, :cond_5

    .line 133
    iget-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 135
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 140
    const v6, 0x7f1300c1    # @string/accessibility_qs_edit_add_tile_label '%1$s. Double tap to add.'

    .line 141
    invoke-virtual {v8, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 147
    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 148
    goto :goto_0

    .line 150
    :cond_5
    iget v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 151
    if-ne v1, v2, :cond_6

    .line 153
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v7

    .line 160
    filled-new-array {v1, v7}, [Ljava/lang/Object;

    .line 161
    move-result-object v1

    .line 164
    invoke-virtual {v8, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 168
    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 169
    goto :goto_0

    .line 171
    :cond_6
    if-ne v1, v7, :cond_7

    .line 172
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v6

    .line 179
    filled-new-array {v1, v6}, [Ljava/lang/Object;

    .line 180
    move-result-object v1

    .line 183
    const v6, 0x7f1300cc    # @string/accessibility_qs_edit_tile_move 'Move %1$s to position %2$d'

    .line 184
    invoke-virtual {v8, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 190
    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 191
    goto :goto_0

    .line 193
    :cond_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v1

    .line 197
    iget-object v6, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 198
    filled-new-array {v1, v6}, [Ljava/lang/Object;

    .line 200
    move-result-object v1

    .line 203
    const v6, 0x7f1300cb    # @string/accessibility_qs_edit_tile_label 'Position %1$d, %2$s. Double tap to edit.'

    .line 204
    invoke-virtual {v8, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 210
    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 211
    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 213
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 216
    if-le p2, v0, :cond_8

    .line 218
    if-nez v9, :cond_8

    .line 220
    move v0, v2

    .line 222
    goto :goto_1

    .line 223
    :cond_8
    move v0, v5

    .line 224
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;->setShowAppLabel(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 228
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 230
    move-result v0

    .line 233
    if-eqz v0, :cond_c

    .line 234
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 236
    if-eqz v0, :cond_a

    .line 238
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 240
    if-ge p2, v0, :cond_9

    .line 242
    goto :goto_2

    .line 244
    :cond_9
    move v0, v5

    .line 245
    goto :goto_3

    .line 246
    :cond_a
    :goto_2
    move v0, v2

    .line 247
    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 248
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 251
    if-eqz v0, :cond_b

    .line 254
    move v4, v2

    .line 256
    :cond_b
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 257
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 260
    if-eqz v0, :cond_c

    .line 263
    new-instance v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;

    .line 265
    invoke-direct {v0, p0, p1, v2}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;I)V

    .line 267
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromIndex:I

    .line 273
    if-ne p2, v0, :cond_c

    .line 275
    iget-boolean p2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mNeedsFocus:Z

    .line 277
    if-eqz p2, :cond_c

    .line 279
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 281
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter$1;

    .line 284
    invoke-direct {p2, p1}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;)V

    .line 286
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 289
    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mNeedsFocus:Z

    .line 292
    :cond_c
    :goto_4
    return-void
    .line 294
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x3

    .line 10
    const v2, 0x7f0d02f6    # @layout/qs_customize_tile_divider 'res/layout/qs_customize_tile_divider.xml'

    .line 11
    const/4 v3, 0x0

    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    new-instance p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 17
    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;-><init>(Landroid/view/View;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    new-instance p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 30
    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;-><init>(Landroid/view/View;)V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    const p1, 0x7f0d02f7    # @layout/qs_customize_tile_frame 'res/layout/qs_customize_tile_frame.xml'

    .line 40
    invoke-virtual {v0, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/FrameLayout;

    .line 47
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;

    .line 49
    new-instance v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;

    .line 51
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;)V

    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;-><init>(Landroid/view/View;)V

    .line 64
    :goto_0
    return-object p0
    .line 67
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 6
    iget-object p0, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;

    .line 9
    const p1, 0x7f0a0985    # @id/tile_label

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    .line 37
    move-result-object p0

    .line 40
    const p1, 0x3f19999a    # 0.6f

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 44
    const/4 p0, 0x1

    .line 47
    return p0
    .line 48
.end method

.method public final recalcSpecs()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 2
    if-eqz v0, :cond_f

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAllTiles:Ljava/util/List;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto/16 :goto_8

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAllTiles:Ljava/util/List;

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mOtherTiles:Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 21
    const/4 v1, 0x0

    .line 23
    iget-object v2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 24
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v0, :cond_8

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAllTiles:Ljava/util/List;

    .line 30
    if-nez v0, :cond_1

    .line 32
    goto/16 :goto_4

    .line 34
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    move v5, v1

    .line 41
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 42
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 44
    move-result v6

    .line 47
    if-ge v5, v6, :cond_5

    .line 48
    iget-object v6, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 50
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/String;

    .line 56
    move v7, v1

    .line 58
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mOtherTiles:Ljava/util/List;

    .line 59
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 61
    move-result v8

    .line 64
    if-ge v7, v8, :cond_3

    .line 65
    iget-object v8, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mOtherTiles:Ljava/util/List;

    .line 67
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v8

    .line 72
    check-cast v8, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 73
    iget-object v8, v8, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 75
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v8

    .line 80
    if-eqz v8, :cond_2

    .line 81
    iget-object v6, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mOtherTiles:Ljava/util/List;

    .line 83
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    move-result-object v6

    .line 88
    check-cast v6, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 89
    goto :goto_2

    .line 91
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 92
    goto :goto_1

    .line 94
    :cond_3
    move-object v6, v4

    .line 95
    :goto_2
    if-eqz v6, :cond_4

    .line 96
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 101
    goto :goto_0

    .line 103
    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    move v5, v1

    .line 107
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mOtherTiles:Ljava/util/List;

    .line 108
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 110
    move-result v6

    .line 113
    if-ge v5, v6, :cond_7

    .line 114
    iget-object v6, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mOtherTiles:Ljava/util/List;

    .line 116
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v6

    .line 121
    check-cast v6, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 122
    iget-boolean v7, v6, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->isSystem:Z

    .line 124
    if-eqz v7, :cond_6

    .line 126
    iget-object v7, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mOtherTiles:Ljava/util/List;

    .line 128
    add-int/lit8 v8, v5, -0x1

    .line 130
    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    move v5, v8

    .line 138
    :cond_6
    add-int/2addr v5, v3

    .line 139
    goto :goto_3

    .line 140
    :cond_7
    move-object v5, v2

    .line 141
    check-cast v5, Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v5

    .line 147
    iput v5, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 148
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v4, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mOtherTiles:Ljava/util/List;

    .line 153
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    move-object v4, v0

    .line 158
    :cond_8
    :goto_4
    if-eqz v4, :cond_f

    .line 159
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 161
    move-result v0

    .line 164
    if-nez v0, :cond_f

    .line 165
    if-eqz v2, :cond_d

    .line 167
    move-object v0, v2

    .line 169
    check-cast v0, Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 172
    move-result v5

    .line 175
    if-nez v5, :cond_d

    .line 176
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 178
    move-result v5

    .line 181
    if-eqz v5, :cond_9

    .line 182
    goto :goto_7

    .line 184
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 185
    move-result v5

    .line 188
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 189
    move-result v6

    .line 192
    if-eq v5, v6, :cond_a

    .line 193
    goto :goto_7

    .line 195
    :cond_a
    move v5, v1

    .line 196
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 197
    move-result v6

    .line 200
    if-ge v5, v6, :cond_e

    .line 201
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    move-result-object v6

    .line 206
    check-cast v6, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 207
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v7

    .line 212
    check-cast v7, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 213
    if-nez v6, :cond_b

    .line 215
    if-nez v7, :cond_b

    .line 217
    goto :goto_6

    .line 219
    :cond_b
    if-eqz v6, :cond_d

    .line 220
    if-eqz v7, :cond_d

    .line 222
    iget-object v8, v6, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 224
    iget-object v9, v7, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 226
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 228
    move-result v8

    .line 231
    if-eqz v8, :cond_d

    .line 232
    iget-object v6, v6, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 234
    instance-of v8, v6, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 236
    if-eqz v8, :cond_c

    .line 238
    iget-object v7, v7, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 240
    instance-of v8, v7, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 242
    if-eqz v8, :cond_c

    .line 244
    check-cast v6, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 246
    iget-boolean v6, v6, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 248
    check-cast v7, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 250
    iget-boolean v7, v7, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 252
    if-eq v6, v7, :cond_c

    .line 254
    goto :goto_7

    .line 256
    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 257
    goto :goto_5

    .line 259
    :cond_d
    :goto_7
    move v1, v3

    .line 260
    :cond_e
    if-eqz v1, :cond_f

    .line 261
    move-object v0, v2

    .line 263
    check-cast v0, Ljava/util/ArrayList;

    .line 264
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    check-cast v2, Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->updateDividerLocations()V

    .line 274
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 277
    :cond_f
    :goto_8
    return-void
    .line 280
.end method

.method public final saveSpecs()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 7
    const/4 v2, 0x1

    .line 9
    iget-object v3, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 10
    if-ne v1, v2, :cond_0

    .line 12
    iget v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 14
    sub-int/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 17
    move-object v4, v3

    .line 19
    check-cast v4, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22
    iget v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 25
    sub-int/2addr v1, v2

    .line 27
    iput v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 34
    :goto_0
    move-object v2, v3

    .line 36
    check-cast v2, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v2

    .line 42
    if-ge v1, v2, :cond_1

    .line 43
    move-object v2, v3

    .line 45
    check-cast v2, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    move-object v2, v3

    .line 54
    check-cast v2, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 61
    iget-object v2, v2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    const-string v1, "edit"

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 78
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 80
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 83
    return-void
    .line 85
.end method

.method public final selectPosition(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 7
    iget v2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 9
    add-int/lit8 v3, v2, -0x1

    .line 11
    iput v3, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 22
    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 28
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromIndex:I

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->move(II)V

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 35
    return-void
    .line 38
.end method

.method public final updateDividerLocations()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 5
    move-object v2, v1

    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 13
    iput v2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 14
    const/4 v2, 0x0

    .line 16
    :goto_0
    move-object v3, v1

    .line 17
    check-cast v3, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v3

    .line 23
    if-ge v2, v3, :cond_2

    .line 24
    move-object v3, v1

    .line 26
    check-cast v3, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    iget v3, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 35
    if-ne v3, v0, :cond_0

    .line 37
    iput v2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 39
    goto :goto_1

    .line 41
    :cond_0
    iput v2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 42
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    check-cast v1, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v0

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    iget v1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 55
    if-ne v0, v1, :cond_3

    .line 57
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 59
    :cond_3
    return-void
    .line 62
.end method
