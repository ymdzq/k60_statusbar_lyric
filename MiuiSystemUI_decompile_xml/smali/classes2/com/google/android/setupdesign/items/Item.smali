.class public Lcom/google/android/setupdesign/items/Item;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final contentDescription:Ljava/lang/CharSequence;

.field public final enabled:Z

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public iconGravity:I

.field public final iconTint:I

.field public final layoutRes:I

.field public final summary:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;

.field public final visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    .line 8
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    .line 11
    const/16 v2, 0x10

    .line 13
    iput v2, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 15
    sget-object v3, Lcom/google/android/setupdesign/R$styleable;->SudItem:[I

    .line 17
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 23
    move-result p2

    .line 26
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 33
    const/4 p2, 0x4

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 36
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    .line 40
    const/4 p2, 0x5

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 43
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    .line 47
    const/4 p2, 0x6

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 50
    move-result-object p2

    .line 53
    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->contentDescription:Ljava/lang/CharSequence;

    .line 54
    const/4 p2, 0x2

    .line 56
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getDefaultLayoutResource()I

    .line 57
    move-result v3

    .line 60
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 61
    move-result p2

    .line 64
    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    .line 65
    const/4 p2, 0x3

    .line 67
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 68
    move-result p2

    .line 71
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    .line 72
    const/16 p2, 0x8

    .line 74
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 76
    move-result p2

    .line 79
    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    .line 80
    const/4 p2, 0x7

    .line 82
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 83
    move-result p2

    .line 86
    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
    .line 92
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    .line 2
    return p0
    .line 4
.end method

.method public getDefaultLayoutResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d0390    # @layout/sud_items_default 'res/layout/sud_items_default.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getLayoutResource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    .line 2
    return p0
    .line 4
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    const v2, 0x7f0a0916    # @id/sud_items_title

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v3

    .line 12
    check-cast v3, Landroid/widget/TextView;

    .line 13
    iget-object v4, v0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    const v3, 0x7f0a0913    # @id/sud_items_summary

    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v4

    .line 26
    check-cast v4, Landroid/widget/TextView;

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupdesign/items/Item;->getSummary()Ljava/lang/CharSequence;

    .line 29
    move-result-object v5

    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz v5, :cond_0

    .line 34
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 36
    move-result v7

    .line 39
    if-lez v7, :cond_0

    .line 40
    const/4 v7, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v7, v6

    .line 44
    :goto_0
    const/16 v8, 0x8

    .line 45
    if-eqz v7, :cond_1

    .line 47
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_1
    iget-object v4, v0, Lcom/google/android/setupdesign/items/Item;->contentDescription:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    const v4, 0x7f0a0912    # @id/sud_items_icon_container

    .line 64
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v4

    .line 70
    iget-object v5, v0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 71
    if-eqz v5, :cond_4

    .line 73
    const v7, 0x7f0a0911    # @id/sud_items_icon

    .line 75
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v7

    .line 81
    check-cast v7, Landroid/widget/ImageView;

    .line 82
    const/4 v9, 0x0

    .line 84
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 88
    move-result-object v9

    .line 91
    invoke-virtual {v7, v9, v6}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 92
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 95
    move-result v9

    .line 98
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 99
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget v5, v0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    .line 105
    if-eqz v5, :cond_2

    .line 107
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 109
    goto :goto_2

    .line 112
    :cond_2
    invoke-virtual {v7}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 113
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 116
    move-result-object v5

    .line 119
    instance-of v7, v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    if-eqz v7, :cond_3

    .line 122
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    iget v7, v0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 126
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 128
    :cond_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 130
    goto :goto_3

    .line 133
    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_3
    iget v4, v0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->id:I

    .line 137
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 139
    instance-of v0, v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    .line 142
    if-nez v0, :cond_5

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 146
    move-result v0

    .line 149
    const v4, 0x7f0a091d    # @id/sud_layout_header

    .line 150
    if-eq v0, v4, :cond_5

    .line 153
    invoke-static/range {p1 .. p1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationLayoutPaddingStyle(Landroid/view/View;)V

    .line 155
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    .line 158
    move-result v0

    .line 161
    if-nez v0, :cond_6

    .line 162
    goto/16 :goto_8

    .line 164
    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object v0

    .line 169
    check-cast v0, Landroid/widget/TextView;

    .line 170
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    .line 172
    move-result v2

    .line 175
    if-nez v2, :cond_7

    .line 176
    goto :goto_4

    .line 178
    :cond_7
    new-instance v2, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    .line 179
    const/4 v10, 0x0

    .line 181
    const/4 v11, 0x0

    .line 182
    sget-object v12, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_TITLE_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 183
    sget-object v13, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_TITLE_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 185
    const/4 v14, 0x0

    .line 187
    const/4 v15, 0x0

    .line 188
    const/16 v16, 0x0

    .line 189
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 191
    move-result-object v4

    .line 194
    invoke-static {v4}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    .line 195
    move-result v17

    .line 198
    move-object v9, v2

    .line 199
    invoke-direct/range {v9 .. v17}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 200
    invoke-static {v0, v2}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    .line 203
    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    move-result-object v0

    .line 209
    check-cast v0, Landroid/widget/TextView;

    .line 210
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 212
    move-result v2

    .line 215
    if-ne v2, v8, :cond_8

    .line 216
    instance-of v2, v1, Landroid/widget/LinearLayout;

    .line 218
    if-eqz v2, :cond_8

    .line 220
    move-object v2, v1

    .line 222
    check-cast v2, Landroid/widget/LinearLayout;

    .line 223
    const/16 v3, 0x10

    .line 225
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 227
    :cond_8
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    .line 230
    move-result v2

    .line 233
    if-nez v2, :cond_9

    .line 234
    goto :goto_5

    .line 236
    :cond_9
    new-instance v2, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    .line 237
    const/4 v4, 0x0

    .line 239
    const/4 v5, 0x0

    .line 240
    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_SUMMARY_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 241
    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_SUMMARY_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 243
    const/4 v8, 0x0

    .line 245
    sget-object v9, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_SUMMARY_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 246
    const/4 v10, 0x0

    .line 248
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 249
    move-result-object v3

    .line 252
    invoke-static {v3}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    .line 253
    move-result v11

    .line 256
    move-object v3, v2

    .line 257
    invoke-direct/range {v3 .. v11}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 258
    invoke-static {v0, v2}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    .line 261
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 264
    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 268
    move-result-object v2

    .line 271
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 272
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 274
    move-result v2

    .line 277
    const/4 v4, 0x0

    .line 278
    if-eqz v2, :cond_a

    .line 279
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 281
    move-result-object v2

    .line 284
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 285
    move-result v2

    .line 288
    goto :goto_6

    .line 289
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    .line 290
    move-result v2

    .line 293
    int-to-float v2, v2

    .line 294
    :goto_6
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 295
    move-result-object v3

    .line 298
    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 299
    invoke-virtual {v3, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 301
    move-result v3

    .line 304
    if-eqz v3, :cond_b

    .line 305
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 307
    move-result-object v3

    .line 310
    invoke-virtual {v3, v0, v5, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 311
    move-result v3

    .line 314
    goto :goto_7

    .line 315
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    .line 316
    move-result v3

    .line 319
    int-to-float v3, v3

    .line 320
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    .line 321
    move-result v5

    .line 324
    int-to-float v5, v5

    .line 325
    cmpl-float v5, v2, v5

    .line 326
    if-nez v5, :cond_c

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    .line 330
    move-result v5

    .line 333
    int-to-float v5, v5

    .line 334
    cmpl-float v5, v3, v5

    .line 335
    if-eqz v5, :cond_d

    .line 337
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingStart()I

    .line 339
    move-result v5

    .line 342
    float-to-int v2, v2

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingEnd()I

    .line 344
    move-result v6

    .line 347
    float-to-int v3, v3

    .line 348
    invoke-virtual {v1, v5, v2, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 349
    :cond_d
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 352
    move-result-object v2

    .line 355
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 356
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 358
    move-result v2

    .line 361
    if-eqz v2, :cond_e

    .line 362
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 364
    move-result-object v2

    .line 367
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 368
    move-result v0

    .line 371
    float-to-int v0, v0

    .line 372
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 373
    :cond_e
    :goto_8
    return-void
    .line 376
.end method
