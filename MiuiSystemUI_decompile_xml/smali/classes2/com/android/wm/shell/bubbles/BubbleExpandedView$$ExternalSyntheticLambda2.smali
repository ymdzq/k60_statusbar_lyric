.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_5

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 22
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    const v2, 0x7f07015e    # @dimen/bubble_name_width '90.0dp'

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 30
    move-result v2

    .line 33
    div-float/2addr v1, v2

    .line 34
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 35
    move-result v1

    .line 38
    if-lez v1, :cond_0

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    const v1, 0x7f0b0014    # @integer/bubbles_overflow_columns '4'

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 45
    move-result v1

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowGridLayoutManager;

    .line 51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 53
    invoke-direct {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowGridLayoutManager;-><init>(I)V

    .line 56
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 59
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 64
    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowItemDecoration;

    .line 72
    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowItemDecoration;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V

    .line 74
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 77
    :cond_1
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    .line 86
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 88
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$$ExternalSyntheticLambda1;

    .line 93
    invoke-direct {v4, v3}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    .line 95
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 98
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 100
    move-result-object v3

    .line 103
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$$ExternalSyntheticLambda1;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 104
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    .line 107
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    .line 114
    check-cast v0, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    .line 121
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 123
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 125
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    .line 127
    move-result-object v1

    .line 130
    check-cast v0, Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    .line 136
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 138
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 141
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

    .line 143
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    .line 145
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateEmptyStateVisibility()V

    .line 147
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 150
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 154
    move-result-object v1

    .line 157
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 158
    and-int/lit8 v1, v1, 0x30

    .line 160
    const/16 v2, 0x20

    .line 162
    const/4 v3, 0x1

    .line 164
    const/4 v4, 0x0

    .line 165
    if-ne v1, v2, :cond_2

    .line 166
    move v1, v3

    .line 168
    goto :goto_1

    .line 169
    :cond_2
    move v1, v4

    .line 170
    :goto_1
    const v2, 0x7f070163    # @dimen/bubble_overflow_item_padding_horizontal '5.0dp'

    .line 171
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 174
    move-result v2

    .line 177
    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mHorizontalMargin:I

    .line 178
    const v2, 0x7f070164    # @dimen/bubble_overflow_item_padding_vertical '16.0dp'

    .line 180
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 183
    move-result v2

    .line 186
    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mVerticalMargin:I

    .line 187
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    if-eqz v2, :cond_3

    .line 191
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 193
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateImage:Landroid/widget/ImageView;

    .line 196
    if-eqz v1, :cond_4

    .line 198
    const v5, 0x7f080ba1    # @drawable/bubble_ic_empty_overflow_dark 'res/drawable/bubble_ic_empty_overflow_dark.xml'

    .line 200
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 203
    move-result-object v5

    .line 206
    goto :goto_2

    .line 207
    :cond_4
    const v5, 0x7f080ba2    # @drawable/bubble_ic_empty_overflow_light 'res/drawable/bubble_ic_empty_overflow_light.xml'

    .line 208
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 211
    move-result-object v5

    .line 214
    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    const v2, 0x7f0a0196    # @id/bubble_overflow_container

    .line 218
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 221
    move-result-object v2

    .line 224
    if-eqz v1, :cond_5

    .line 225
    const v5, 0x7f06007e    # @color/bubbles_dark '@color/GM2_grey_800'

    .line 227
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 230
    move-result v0

    .line 233
    goto :goto_3

    .line 234
    :cond_5
    const v5, 0x7f060080    # @color/bubbles_light '#ffffff'

    .line 235
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 238
    move-result v0

    .line 241
    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 245
    move-result-object v0

    .line 248
    const v2, 0x11200ae    # @android:^attr-private/materialColorSurfaceContainer

    .line 249
    const v5, 0x112009b    # @android:^attr-private/materialColorOnSurfaceInverse

    .line 252
    filled-new-array {v2, v5}, [I

    .line 255
    move-result-object v2

    .line 258
    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 259
    move-result-object v0

    .line 262
    const/high16 v2, -0x1000000

    .line 263
    const/4 v5, -0x1

    .line 265
    if-eqz v1, :cond_6

    .line 266
    move v6, v2

    .line 268
    goto :goto_4

    .line 269
    :cond_6
    move v6, v5

    .line 270
    :goto_4
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 271
    move-result v4

    .line 274
    if-eqz v1, :cond_7

    .line 275
    move v2, v5

    .line 277
    :cond_7
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 278
    move-result v2

    .line 281
    invoke-static {v2, v4, v1}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    .line 282
    move-result v1

    .line 285
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 289
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    .line 297
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    return-void

    .line 302
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 303
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;

    .line 305
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 307
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 309
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 311
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 313
    const/4 v1, 0x3

    .line 315
    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    .line 316
    return-void

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 320
.end method
