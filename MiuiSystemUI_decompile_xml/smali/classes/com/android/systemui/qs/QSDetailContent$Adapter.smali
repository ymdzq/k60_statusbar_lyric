.class public final Lcom/android/systemui/qs/QSDetailContent$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSDetailContent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailContent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/qs/QSDetailContent;->access$getItems$p(Lcom/android/systemui/qs/QSDetailContent;)[Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    array-length p0, p0

    .line 10
    const/16 v0, 0x14

    .line 11
    if-le p0, v0, :cond_1

    .line 13
    move p0, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :cond_1
    :goto_0
    return p0
    .line 18
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/qs/QSDetailContent;->access$getItems$p(Lcom/android/systemui/qs/QSDetailContent;)[Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    aget-object p0, p0, p1

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/qs/QSDetailContent$Item;->getType()I

    .line 14
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    move-object/from16 v2, p1

    .line 6
    check-cast v2, Lcom/android/systemui/qs/QSDetailContent$ItemHolder;

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailContent$Adapter;->getItemViewType(I)I

    .line 10
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    const/16 v5, 0xe9

    .line 15
    const v6, 0x7f0600bc    # @color/control_center_detail_item_title_text_color 'res/color/control_center_detail_item_title_text_color.xml'

    .line 17
    const v7, 0x7f0607d2    # @color/qs_detail_item_primary_text_color_state 'res/color/qs_detail_item_primary_text_color_state.xml'

    .line 20
    const v8, 0x7f0600b9    # @color/control_center_detail_item_summary_text_color 'res/color/control_center_detail_item_summary_text_color.xml'

    .line 23
    const v9, 0x7f0607d4    # @color/qs_detail_item_secondary_text_color_state 'res/color/qs_detail_item_secondary_text_color_state.xml'

    .line 26
    const/16 v10, 0x8

    .line 29
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailContent$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 31
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x0

    .line 34
    if-eq v3, v5, :cond_16

    .line 35
    const/16 v5, 0x91d

    .line 37
    if-eq v3, v5, :cond_a

    .line 39
    const/16 v4, 0x5b25

    .line 41
    if-eq v3, v4, :cond_2

    .line 43
    const v1, 0x38f75

    .line 45
    if-eq v3, v1, :cond_0

    .line 48
    goto/16 :goto_1a

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v1

    .line 55
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getControlCenterController$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 56
    move-result-object v0

    .line 59
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 60
    if-eqz v0, :cond_1

    .line 62
    const v0, 0x7f0600c2    # @color/control_center_dividing_line_color '#1affffff'

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    const v0, 0x7f06011a    # @color/dividing_line_color '#1a000000'

    .line 68
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 71
    move-result v0

    .line 74
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    goto/16 :goto_1a

    .line 80
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getItems$p(Lcom/android/systemui/qs/QSDetailContent;)[Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 82
    move-result-object v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    aget-object v3, v3, v1

    .line 88
    goto :goto_1

    .line 90
    :cond_3
    move-object v3, v11

    .line 91
    :goto_1
    instance-of v4, v3, Lcom/android/systemui/qs/QSDetailContent$TextDividerItem;

    .line 92
    if-eqz v4, :cond_4

    .line 94
    check-cast v3, Lcom/android/systemui/qs/QSDetailContent$TextDividerItem;

    .line 96
    goto :goto_2

    .line 98
    :cond_4
    move-object v3, v11

    .line 99
    :goto_2
    if-nez v3, :cond_5

    .line 100
    goto/16 :goto_1a

    .line 102
    :cond_5
    instance-of v4, v2, Lcom/android/systemui/qs/QSDetailContent$TextDividerItemHolder;

    .line 104
    if-eqz v4, :cond_6

    .line 106
    check-cast v2, Lcom/android/systemui/qs/QSDetailContent$TextDividerItemHolder;

    .line 108
    goto :goto_3

    .line 110
    :cond_6
    move-object v2, v11

    .line 111
    :goto_3
    if-eqz v2, :cond_2a

    .line 112
    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailContent$TextDividerItemHolder;->title:Landroid/widget/TextView;

    .line 114
    if-eqz v2, :cond_2a

    .line 116
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getControlCenterController$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 118
    move-result-object v0

    .line 121
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 122
    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v0

    .line 129
    const v4, 0x7f0600b0    # @color/control_center_detail_item_divider_text_color '#66ffffff'

    .line 130
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    .line 133
    move-result v0

    .line 136
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    goto :goto_4

    .line 140
    :cond_7
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 141
    move-result-object v0

    .line 144
    const v4, 0x7f0607d8    # @color/qs_detail_text_divider_item_text_color '#8c93b0'

    .line 145
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    .line 148
    move-result v0

    .line 151
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    :goto_4
    iget-object v0, v3, Lcom/android/systemui/qs/QSDetailContent$TextDividerItem;->title:Ljava/lang/CharSequence;

    .line 155
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    move-result-object v0

    .line 163
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    if-eqz v3, :cond_8

    .line 166
    move-object v11, v0

    .line 168
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 169
    :cond_8
    if-eqz v11, :cond_2a

    .line 171
    if-nez v1, :cond_9

    .line 173
    goto :goto_5

    .line 175
    :cond_9
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 176
    move-result-object v0

    .line 179
    const v1, 0x7f070f62    # @dimen/qs_detail_divider_margin_horizontal '24.0dp'

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 183
    move-result v12

    .line 186
    :goto_5
    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 187
    goto/16 :goto_1a

    .line 189
    :cond_a
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getItems$p(Lcom/android/systemui/qs/QSDetailContent;)[Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 191
    move-result-object v3

    .line 194
    if-eqz v3, :cond_b

    .line 195
    aget-object v3, v3, v1

    .line 197
    goto :goto_6

    .line 199
    :cond_b
    move-object v3, v11

    .line 200
    :goto_6
    instance-of v5, v3, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

    .line 201
    if-eqz v5, :cond_c

    .line 203
    check-cast v3, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

    .line 205
    goto :goto_7

    .line 207
    :cond_c
    move-object v3, v11

    .line 208
    :goto_7
    if-nez v3, :cond_d

    .line 209
    goto/16 :goto_1a

    .line 211
    :cond_d
    instance-of v5, v2, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;

    .line 213
    if-eqz v5, :cond_e

    .line 215
    check-cast v2, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;

    .line 217
    goto :goto_8

    .line 219
    :cond_e
    move-object v2, v11

    .line 220
    :goto_8
    if-eqz v2, :cond_2a

    .line 221
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getControlCenterController$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 223
    move-result-object v5

    .line 226
    iget-boolean v5, v5, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 227
    iget-object v13, v2, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;->summary:Landroid/widget/TextView;

    .line 229
    iget-object v14, v2, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;->title:Landroid/widget/TextView;

    .line 231
    if-eqz v5, :cond_f

    .line 233
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 235
    move-result-object v5

    .line 238
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 239
    move-result-object v5

    .line 242
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 243
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 246
    move-result-object v5

    .line 249
    invoke-virtual {v5, v8}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 250
    move-result-object v5

    .line 253
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 254
    goto :goto_9

    .line 257
    :cond_f
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 258
    move-result-object v5

    .line 261
    invoke-virtual {v5, v7}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 262
    move-result-object v5

    .line 265
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 266
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 269
    move-result-object v5

    .line 272
    invoke-virtual {v5, v9}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 273
    move-result-object v5

    .line 276
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 277
    :goto_9
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 280
    invoke-virtual {v5, v4}, Landroid/view/View;->setActivated(Z)V

    .line 282
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 285
    move-result-object v6

    .line 288
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 289
    if-eqz v7, :cond_10

    .line 291
    move-object v11, v6

    .line 293
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 294
    :cond_10
    if-nez v11, :cond_11

    .line 296
    goto :goto_c

    .line 298
    :cond_11
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getItems$p(Lcom/android/systemui/qs/QSDetailContent;)[Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 299
    move-result-object v6

    .line 302
    if-eqz v6, :cond_12

    .line 303
    add-int/2addr v1, v4

    .line 305
    array-length v6, v6

    .line 306
    if-ne v1, v6, :cond_12

    .line 307
    goto :goto_a

    .line 309
    :cond_12
    move v4, v12

    .line 310
    :goto_a
    if-eqz v4, :cond_13

    .line 311
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getControlCenterController$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 313
    move-result-object v1

    .line 316
    iget-boolean v1, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 317
    if-nez v1, :cond_13

    .line 319
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 321
    move-result-object v1

    .line 324
    const v4, 0x7f070f88    # @dimen/qs_detail_toggle_item_last_margin_bottom '@dimen/qs_detail_toggle_item_padding_horizontal'

    .line 325
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 328
    move-result v1

    .line 331
    goto :goto_b

    .line 332
    :cond_13
    move v1, v12

    .line 333
    :goto_b
    iput v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 334
    :goto_c
    iget-object v1, v3, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->title:Ljava/lang/CharSequence;

    .line 336
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 338
    move-result v4

    .line 341
    if-eqz v4, :cond_14

    .line 342
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    goto :goto_d

    .line 347
    :cond_14
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_d
    iget-object v1, v3, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->summary:Ljava/lang/CharSequence;

    .line 354
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 356
    move-result v4

    .line 359
    if-eqz v4, :cond_15

    .line 360
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    goto :goto_e

    .line 365
    :cond_15
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_e
    iget-boolean v1, v3, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->isChecked:Z

    .line 372
    iget-object v4, v2, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 374
    invoke-virtual {v4, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 376
    new-instance v1, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$1;

    .line 379
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$1;-><init>(Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;)V

    .line 381
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    new-instance v1, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$2;

    .line 387
    invoke-direct {v1, v3, v0}, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$2;-><init>(Lcom/android/systemui/qs/QSDetailContent$ToggleItem;Lcom/android/systemui/qs/QSDetailContent;)V

    .line 389
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 392
    goto/16 :goto_1a

    .line 395
    :cond_16
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getItems$p(Lcom/android/systemui/qs/QSDetailContent;)[Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 397
    move-result-object v3

    .line 400
    if-eqz v3, :cond_17

    .line 401
    aget-object v3, v3, v1

    .line 403
    goto :goto_f

    .line 405
    :cond_17
    move-object v3, v11

    .line 406
    :goto_f
    instance-of v5, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 407
    if-eqz v5, :cond_18

    .line 409
    check-cast v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 411
    goto :goto_10

    .line 413
    :cond_18
    move-object v3, v11

    .line 414
    :goto_10
    if-nez v3, :cond_19

    .line 415
    goto/16 :goto_1a

    .line 417
    :cond_19
    instance-of v5, v2, Lcom/android/systemui/qs/QSDetailContent$SelectableItemHolder;

    .line 419
    if-eqz v5, :cond_1a

    .line 421
    check-cast v2, Lcom/android/systemui/qs/QSDetailContent$SelectableItemHolder;

    .line 423
    goto :goto_11

    .line 425
    :cond_1a
    move-object v2, v11

    .line 426
    :goto_11
    if-eqz v2, :cond_2a

    .line 427
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 429
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 431
    move-result-object v13

    .line 434
    instance-of v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 435
    if-eqz v14, :cond_1b

    .line 437
    move-object v11, v13

    .line 439
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 440
    :cond_1b
    const/4 v13, 0x2

    .line 442
    if-eqz v11, :cond_21

    .line 443
    const v14, 0x7f070f85    # @dimen/qs_detail_selectable_item_margin_vertical '4.0dp'

    .line 445
    if-nez v1, :cond_1d

    .line 448
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getControlCenterController$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 450
    move-result-object v15

    .line 453
    iget-boolean v15, v15, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 454
    if-eqz v15, :cond_1c

    .line 456
    move v15, v12

    .line 458
    goto :goto_12

    .line 459
    :cond_1c
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 460
    move-result-object v15

    .line 463
    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 464
    move-result v15

    .line 467
    mul-int/2addr v15, v13

    .line 468
    goto :goto_12

    .line 469
    :cond_1d
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 470
    move-result-object v15

    .line 473
    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 474
    move-result v15

    .line 477
    :goto_12
    iput v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 478
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 480
    move-result-object v15

    .line 483
    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 484
    move-result v14

    .line 487
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getItems$p(Lcom/android/systemui/qs/QSDetailContent;)[Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 488
    move-result-object v15

    .line 491
    if-eqz v15, :cond_1e

    .line 492
    add-int/2addr v1, v4

    .line 494
    array-length v15, v15

    .line 495
    if-ne v1, v15, :cond_1e

    .line 496
    move v1, v4

    .line 498
    goto :goto_13

    .line 499
    :cond_1e
    move v1, v12

    .line 500
    :goto_13
    if-nez v1, :cond_1f

    .line 501
    goto :goto_14

    .line 503
    :cond_1f
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getControlCenterController$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 504
    move-result-object v1

    .line 507
    iget-boolean v1, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 508
    if-eqz v1, :cond_20

    .line 510
    move v14, v12

    .line 512
    goto :goto_14

    .line 513
    :cond_20
    mul-int/lit8 v14, v14, 0x2

    .line 514
    :goto_14
    iput v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 516
    :cond_21
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getControlCenterController$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 518
    move-result-object v1

    .line 521
    iget-boolean v1, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 522
    if-eqz v1, :cond_23

    .line 524
    iget-boolean v1, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selectable:Z

    .line 526
    if-eqz v1, :cond_22

    .line 528
    const v1, 0x7f080bfc    # @drawable/control_center_detail_item_selectable_background 'res/drawable/control_center_detail_item_selectable_background.xml'

    .line 530
    goto :goto_15

    .line 533
    :cond_22
    const v1, 0x7f080bff    # @drawable/control_center_detail_item_unselectable_background 'res/drawable/control_center_detail_item_unselectable_background.xml'

    .line 534
    goto :goto_15

    .line 537
    :cond_23
    iget-boolean v1, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selectable:Z

    .line 538
    if-eqz v1, :cond_24

    .line 540
    const v1, 0x7f081735    # @drawable/qs_detail_item_selectable_background 'res/drawable/qs_detail_item_selectable_background.xml'

    .line 542
    goto :goto_15

    .line 545
    :cond_24
    const v1, 0x7f081738    # @drawable/qs_detail_item_unselectable_background 'res/drawable/qs_detail_item_unselectable_background.xml'

    .line 546
    :goto_15
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 549
    iget-boolean v1, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selected:Z

    .line 552
    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    .line 554
    invoke-virtual {v5, v4}, Landroid/view/View;->setActivated(Z)V

    .line 557
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getControlCenterController$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 560
    move-result-object v1

    .line 563
    iget-boolean v1, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 564
    iget-object v11, v2, Lcom/android/systemui/qs/QSDetailContent$SelectableItemHolder;->icon:Landroid/widget/ImageView;

    .line 566
    iget-object v14, v2, Lcom/android/systemui/qs/QSDetailContent$SelectableItemHolder;->secondarySummary:Landroid/widget/TextView;

    .line 568
    iget-object v15, v2, Lcom/android/systemui/qs/QSDetailContent$SelectableItemHolder;->summary:Landroid/widget/TextView;

    .line 570
    iget-object v4, v2, Lcom/android/systemui/qs/QSDetailContent$SelectableItemHolder;->title:Landroid/widget/TextView;

    .line 572
    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailContent$SelectableItemHolder;->icon2:Landroid/widget/ImageView;

    .line 574
    if-eqz v1, :cond_25

    .line 576
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 578
    move-result-object v1

    .line 581
    invoke-virtual {v1, v6}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 582
    move-result-object v1

    .line 585
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 586
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 589
    move-result-object v1

    .line 592
    invoke-virtual {v1, v8}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 593
    move-result-object v1

    .line 596
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 597
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 600
    move-result-object v1

    .line 603
    invoke-virtual {v1, v8}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 604
    move-result-object v1

    .line 607
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 608
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 611
    move-result-object v1

    .line 614
    const v6, 0x7f0600b1    # @color/control_center_detail_item_icon1_tint 'res/color/control_center_detail_item_icon1_tint.xml'

    .line 615
    invoke-virtual {v1, v6}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 618
    move-result-object v1

    .line 621
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 622
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 625
    move-result-object v1

    .line 628
    const v6, 0x7f0600b4    # @color/control_center_detail_item_icon2_tint 'res/color/control_center_detail_item_icon2_tint.xml'

    .line 629
    invoke-virtual {v1, v6}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 632
    move-result-object v1

    .line 635
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 636
    goto :goto_16

    .line 639
    :cond_25
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 640
    move-result-object v1

    .line 643
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 644
    move-result-object v1

    .line 647
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 648
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 651
    move-result-object v1

    .line 654
    invoke-virtual {v1, v9}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 655
    move-result-object v1

    .line 658
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 659
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 662
    move-result-object v1

    .line 665
    invoke-virtual {v1, v9}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 666
    move-result-object v1

    .line 669
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 670
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 673
    move-result-object v1

    .line 676
    const v6, 0x7f0607cf    # @color/qs_detail_item_icon_tint 'res/color/qs_detail_item_icon_tint.xml'

    .line 677
    invoke-virtual {v1, v6}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 680
    move-result-object v1

    .line 683
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 684
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 687
    :goto_16
    iget v1, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->iconRes:I

    .line 690
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    invoke-virtual {v11}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    .line 695
    move-result-object v1

    .line 698
    invoke-virtual {v1}, Landroid/view/ViewOverlay;->clear()V

    .line 699
    iget-object v1, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->title:Ljava/lang/CharSequence;

    .line 702
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v1, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 707
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 709
    move-result v1

    .line 712
    iget-object v6, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->secondarySummary:Ljava/lang/CharSequence;

    .line 713
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 715
    move-result v6

    .line 718
    if-eqz v1, :cond_26

    .line 719
    if-eqz v6, :cond_26

    .line 721
    goto :goto_17

    .line 723
    :cond_26
    const/4 v13, 0x1

    .line 724
    :goto_17
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 725
    if-eqz v1, :cond_27

    .line 728
    move v1, v10

    .line 730
    goto :goto_18

    .line 731
    :cond_27
    move v1, v12

    .line 732
    :goto_18
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v1, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 736
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    if-eqz v6, :cond_28

    .line 741
    move v1, v10

    .line 743
    goto :goto_19

    .line 744
    :cond_28
    move v1, v12

    .line 745
    :goto_19
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    iget-object v1, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->secondarySummary:Ljava/lang/CharSequence;

    .line 749
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    new-instance v1, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;

    .line 754
    invoke-direct {v1, v3, v0}, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$1$3;-><init>(Lcom/android/systemui/qs/QSDetailContent$SelectableItem;Lcom/android/systemui/qs/QSDetailContent;)V

    .line 756
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    iget v0, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->icon2Res:I

    .line 762
    if-nez v0, :cond_29

    .line 764
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    goto :goto_1a

    .line 769
    :cond_29
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    iget v0, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->icon2Res:I

    .line 773
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 775
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 778
    :cond_2a
    :goto_1a
    return-void
    .line 781
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/16 v0, 0xe9

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 5
    if-eq p1, v0, :cond_3

    .line 7
    const/16 v0, 0x91d

    .line 9
    if-eq p1, v0, :cond_2

    .line 11
    const/16 v0, 0x5b25

    .line 13
    if-eq p1, v0, :cond_1

    .line 15
    const v0, 0x38f75

    .line 17
    if-ne p1, v0, :cond_0

    .line 20
    new-instance p1, Lcom/android/systemui/qs/QSDetailContent$ItemHolder;

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p0

    .line 27
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    move-result-object p0

    .line 31
    const v0, 0x7f0d02fd    # @layout/qs_detail_item_divider 'res/layout/qs_detail_item_divider.xml'

    .line 32
    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    move-result-object p0

    .line 38
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetailContent$ItemHolder;-><init>(Landroid/view/View;)V

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    const-string p2, "Wrong view type: "

    .line 45
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 54
    :cond_1
    new-instance p1, Lcom/android/systemui/qs/QSDetailContent$TextDividerItemHolder;

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p0

    .line 60
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 61
    move-result-object p0

    .line 64
    const v0, 0x7f0d02ff    # @layout/qs_detail_item_text_divider 'res/layout/qs_detail_item_text_divider.xml'

    .line 65
    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    move-result-object p0

    .line 71
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetailContent$TextDividerItemHolder;-><init>(Landroid/view/View;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    new-instance p1, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p0

    .line 81
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 82
    move-result-object p0

    .line 85
    const v0, 0x7f0d0300    # @layout/qs_detail_item_toggle 'res/layout/qs_detail_item_toggle.xml'

    .line 86
    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    move-result-object p0

    .line 92
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;-><init>(Landroid/view/View;)V

    .line 93
    goto :goto_0

    .line 96
    :cond_3
    new-instance p1, Lcom/android/systemui/qs/QSDetailContent$SelectableItemHolder;

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 99
    move-result-object p0

    .line 102
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 103
    move-result-object p0

    .line 106
    const v0, 0x7f0d02fe    # @layout/qs_detail_item_selectable 'res/layout/qs_detail_item_selectable.xml'

    .line 107
    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    move-result-object p0

    .line 113
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetailContent$SelectableItemHolder;-><init>(Landroid/view/View;)V

    .line 114
    :goto_0
    return-object p1
    .line 117
.end method
