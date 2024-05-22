.class public final Lcom/android/systemui/qs/customize/TileAdapterDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;)V

    .line 12
    sget v0, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    .line 15
    iget-object v0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 17
    const-string v1, ""

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 21
    if-eqz p0, :cond_f

    .line 24
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 26
    iget v2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 28
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v2, :cond_0

    .line 32
    move v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v2, v4

    .line 36
    :goto_0
    if-nez v2, :cond_1

    .line 37
    goto/16 :goto_b

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 41
    move-result v2

    .line 44
    iget v5, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 45
    if-le v2, v5, :cond_2

    .line 47
    move v2, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v4

    .line 51
    :goto_1
    const/16 v5, 0x10

    .line 52
    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 59
    const v6, 0x7f1300c8    # @string/accessibility_qs_edit_tile_add_action 'add tile to end'

    .line 60
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 66
    goto :goto_5

    .line 67
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 68
    move-result v2

    .line 71
    iget-object v6, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 72
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 74
    move-result v6

    .line 77
    iget v7, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    .line 78
    if-le v6, v7, :cond_4

    .line 80
    move v6, v3

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v6, v4

    .line 84
    :goto_2
    if-eqz v6, :cond_6

    .line 85
    iget v6, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 87
    if-ge v2, v6, :cond_5

    .line 89
    move v2, v3

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    move v2, v4

    .line 93
    :goto_3
    if-eqz v2, :cond_6

    .line 94
    move v2, v3

    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move v2, v4

    .line 98
    :goto_4
    if-eqz v2, :cond_7

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    move-result-object v2

    .line 104
    const v6, 0x7f1300c6    # @string/accessibility_qs_edit_remove_tile_action 'remove tile'

    .line 105
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 111
    :goto_5
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 112
    invoke-direct {v6, v5, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 117
    goto :goto_7

    .line 120
    :cond_7
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    .line 121
    move-result-object v2

    .line 124
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 125
    move-result v6

    .line 128
    move v7, v4

    .line 129
    :goto_6
    if-ge v7, v6, :cond_9

    .line 130
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v8

    .line 135
    check-cast v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 136
    invoke-virtual {v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 138
    move-result v8

    .line 141
    if-ne v8, v5, :cond_8

    .line 142
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object v8

    .line 147
    check-cast v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 148
    invoke-virtual {p2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 150
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 153
    goto :goto_6

    .line 155
    :cond_9
    :goto_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 156
    move-result v2

    .line 159
    iget v5, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 160
    if-le v2, v5, :cond_a

    .line 162
    move v2, v3

    .line 164
    goto :goto_8

    .line 165
    :cond_a
    move v2, v4

    .line 166
    :goto_8
    if-eqz v2, :cond_b

    .line 167
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 171
    move-result-object v5

    .line 174
    const v6, 0x7f1300d0    # @string/accessibility_qs_edit_tile_start_add 'Add tile'

    .line 175
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    move-result-object v5

    .line 181
    const v6, 0x7f0a0025    # @id/accessibility_action_qs_add_to_position

    .line 182
    invoke-direct {v2, v6, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 188
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 191
    move-result v2

    .line 194
    iget v5, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 195
    if-ge v2, v5, :cond_c

    .line 197
    move v2, v3

    .line 199
    goto :goto_9

    .line 200
    :cond_c
    move v2, v4

    .line 201
    :goto_9
    if-eqz v2, :cond_d

    .line 202
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 206
    move-result-object v5

    .line 209
    const v6, 0x7f1300d1    # @string/accessibility_qs_edit_tile_start_move 'Move tile'

    .line 210
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    move-result-object v5

    .line 216
    const v6, 0x7f0a0026    # @id/accessibility_action_qs_move_to_position

    .line 217
    invoke-direct {v2, v6, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 223
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 226
    move-result p2

    .line 229
    iget v1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 230
    if-ge p2, v1, :cond_e

    .line 232
    goto :goto_a

    .line 234
    :cond_e
    move v3, v4

    .line 235
    :goto_a
    if-eqz v3, :cond_f

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 238
    move-result-object p1

    .line 241
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 242
    move-result p0

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    move-result-object p0

    .line 249
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 250
    move-result-object p0

    .line 253
    const p2, 0x7f1300c3    # @string/accessibility_qs_edit_position 'Position %1$d'

    .line 254
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    move-result-object p0

    .line 260
    sget p1, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    .line 261
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 263
    :cond_f
    :goto_b
    return-void
    .line 266
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 10
    iget v2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 12
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v3

    .line 20
    :goto_0
    if-nez v2, :cond_1

    .line 21
    goto/16 :goto_a

    .line 23
    :cond_1
    const/16 v2, 0x10

    .line 25
    if-ne p2, v2, :cond_c

    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 29
    move-result p0

    .line 32
    iget p1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 33
    if-le p0, p1, :cond_2

    .line 35
    move p0, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move p0, v3

    .line 39
    :goto_1
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    if-eqz p0, :cond_5

    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 44
    move-result p0

    .line 47
    iget p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 48
    if-le p0, p2, :cond_3

    .line 50
    move p3, v4

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move p3, v3

    .line 54
    :goto_2
    if-nez p3, :cond_4

    .line 55
    goto :goto_3

    .line 57
    :cond_4
    invoke-virtual {v1, p0, p2, v4}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IIZ)V

    .line 58
    move v3, v4

    .line 61
    :goto_3
    if-eqz v3, :cond_b

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p0

    .line 67
    const p2, 0x7f1300ca    # @string/accessibility_qs_edit_tile_added '%1$s is added to position %2$d'

    .line 68
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 75
    goto :goto_9

    .line 78
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 79
    move-result p0

    .line 82
    iget-object p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 83
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 85
    move-result p2

    .line 88
    iget p3, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    .line 89
    if-le p2, p3, :cond_6

    .line 91
    move p2, v4

    .line 93
    goto :goto_4

    .line 94
    :cond_6
    move p2, v3

    .line 95
    :goto_4
    if-eqz p2, :cond_8

    .line 96
    iget p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 98
    if-ge p0, p2, :cond_7

    .line 100
    move p2, v4

    .line 102
    goto :goto_5

    .line 103
    :cond_7
    move p2, v3

    .line 104
    :goto_5
    if-eqz p2, :cond_8

    .line 105
    move p2, v4

    .line 107
    goto :goto_6

    .line 108
    :cond_8
    move p2, v3

    .line 109
    :goto_6
    if-nez p2, :cond_9

    .line 110
    goto :goto_8

    .line 112
    :cond_9
    iget-object p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 113
    check-cast p2, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 120
    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 121
    iget-boolean p2, p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 123
    if-eqz p2, :cond_a

    .line 125
    iget p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 127
    goto :goto_7

    .line 129
    :cond_a
    iget p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 130
    :goto_7
    invoke-virtual {v1, p0, p2, v4}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IIZ)V

    .line 132
    move v3, v4

    .line 135
    :goto_8
    if-eqz v3, :cond_b

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    move-result-object p0

    .line 141
    const p2, 0x7f1300cf    # @string/accessibility_qs_edit_tile_removed '%1$s is removed'

    .line 142
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 145
    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 149
    :cond_b
    :goto_9
    return v4

    .line 152
    :cond_c
    const v2, 0x7f0a0026    # @id/accessibility_action_qs_move_to_position

    .line 153
    if-ne p2, v2, :cond_d

    .line 156
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 158
    move-result p0

    .line 161
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 162
    const/4 p1, 0x2

    .line 164
    iput p1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 165
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    .line 167
    iput-boolean v4, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 169
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 171
    return v4

    .line 174
    :cond_d
    const v2, 0x7f0a0025    # @id/accessibility_action_qs_add_to_position

    .line 175
    if-ne p2, v2, :cond_f

    .line 178
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 180
    move-result p0

    .line 183
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 184
    iput v4, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 186
    iget-object p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 188
    iget p1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 190
    add-int/lit8 p2, p1, 0x1

    .line 192
    iput p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 194
    const/4 p2, 0x0

    .line 196
    check-cast p0, Ljava/util/ArrayList;

    .line 197
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 199
    iget p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 202
    add-int/2addr p0, v4

    .line 204
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 205
    iget p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 207
    sub-int/2addr p0, v4

    .line 209
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    .line 210
    iput-boolean v4, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 212
    iget-object p1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 214
    if-eqz p1, :cond_e

    .line 216
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$$ExternalSyntheticLambda0;

    .line 218
    invoke-direct {p2, v1, p0}, Lcom/android/systemui/qs/customize/TileAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 223
    :cond_e
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 226
    return v4

    .line 229
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 230
    move-result p0

    .line 233
    return p0

    .line 234
    :cond_10
    :goto_a
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 235
    move-result p0

    .line 238
    return p0
    .line 239
.end method
