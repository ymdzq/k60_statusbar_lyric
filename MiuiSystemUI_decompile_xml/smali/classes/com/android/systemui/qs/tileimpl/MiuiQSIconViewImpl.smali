.class public Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAnimationEnabled:Z

.field public mAnimator:Landroid/animation/ObjectAnimator;

.field public final mIcon:Landroid/view/View;

.field public final mIconBgSizePx:I

.field public mIconColorDisabled:I

.field public mIconColorEnabled:I

.field public mIconColorRestricted:I

.field public final mIconColorUnavailable:I

.field public final mIconSizePx:I

.field public mIsCustomTile:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimationEnabled:Z

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIsCustomTile:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 14
    const v0, 0x7f070ff6    # @dimen/qs_tile_icon_size '21.33dp'

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconSizePx:I

    .line 22
    const v0, 0x7f070ff5    # @dimen/qs_tile_icon_bg_size '50.18dp'

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconBgSizePx:I

    .line 31
    const v0, 0x7f071000    # @dimen/qs_tile_padding_below_icon '12.0dp'

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    const v0, 0x7f0607e8    # @color/qs_tile_icon_enabled_color '#ffffff'

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 42
    move-result v0

    .line 45
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorEnabled:I

    .line 46
    const v0, 0x7f0607e7    # @color/qs_tile_icon_disabled_color '#ff5c5d5e'

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 51
    move-result v0

    .line 54
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorDisabled:I

    .line 55
    const v0, 0x7f0607e9    # @color/qs_tile_icon_restricted_color '#ff5c5d5e'

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 60
    move-result v0

    .line 63
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorRestricted:I

    .line 64
    const v0, 0x7f0607ea    # @color/qs_tile_icon_unavailable_color '#40000000'

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 69
    move-result p1

    .line 72
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorUnavailable:I

    .line 73
    new-instance p1, Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79
    const v0, 0x1020006    # @android:id/icon

    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 85
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    .line 93
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    return-void
    .line 98
.end method

.method public static setTint(Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public getIconMeasureMode()I
    .locals 0

    .line 1
    const/high16 p0, 0x40000000    # 2.0f

    .line 2
    return p0
    .line 4
.end method

.method public getIconView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 2
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result p2

    .line 11
    sub-int/2addr p1, p2

    .line 12
    div-int/lit8 p1, p1, 0x2

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    move-result p2

    .line 20
    add-int/2addr p2, p1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    move-result p3

    .line 25
    const/4 p4, 0x0

    .line 26
    add-int/2addr p3, p4

    .line 27
    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 28
    return-void
    .line 31
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result p1

    .line 5
    iget p2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconBgSizePx:I

    .line 6
    const/high16 v0, 0x40000000    # 2.0f

    .line 8
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    move-result p2

    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->getIconMeasureMode()I

    .line 16
    move-result v1

    .line 19
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    move-result v1

    .line 23
    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    .line 24
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result p2

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 33
    return-void
    .line 36
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimationEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    .line 6
    check-cast v2, Landroid/widget/ImageView;

    .line 8
    iget-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    .line 10
    if-eqz v3, :cond_0

    .line 12
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 21
    :goto_0
    iget v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v4

    .line 28
    const v5, 0x7f0a0766    # @id/qs_icon_state_tag

    .line 29
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 35
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v4

    .line 39
    const v6, 0x7f0a076b    # @id/qs_slash_tag

    .line 40
    const v7, 0x7f0a0767    # @id/qs_icon_tag

    .line 43
    const v8, 0x7f0a0765    # @id/qs_icon_state_bg_color_tag

    .line 46
    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    iget-object v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 61
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 63
    move-result-object v9

    .line 66
    invoke-static {v4, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    iget v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v4

    .line 78
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 79
    move-result-object v9

    .line 82
    invoke-static {v4, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v4

    .line 86
    if-nez v4, :cond_19

    .line 87
    :cond_1
    invoke-virtual {v2, v7, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 89
    iget-object v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 92
    invoke-virtual {v2, v6, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 94
    const/4 v4, 0x0

    .line 97
    if-eqz v3, :cond_2

    .line 98
    iget-object v6, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v3, v6}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 102
    move-result-object v3

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move-object v3, v4

    .line 107
    :goto_1
    if-nez v3, :cond_3

    .line 108
    goto/16 :goto_b

    .line 110
    :cond_3
    instance-of v6, v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 112
    if-eqz v6, :cond_4

    .line 114
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 116
    :cond_4
    const/4 v9, 0x0

    .line 119
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 120
    iget v10, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 123
    const/4 v11, 0x3

    .line 125
    const/4 v12, 0x2

    .line 126
    const/4 v13, 0x1

    .line 127
    if-eqz v10, :cond_8

    .line 128
    if-eq v10, v13, :cond_6

    .line 130
    if-eq v10, v12, :cond_5

    .line 132
    move v10, v9

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    iget v10, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorEnabled:I

    .line 136
    goto :goto_2

    .line 138
    :cond_6
    iget v10, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    .line 139
    if-ne v10, v11, :cond_7

    .line 141
    iget v10, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorRestricted:I

    .line 143
    goto :goto_2

    .line 145
    :cond_7
    iget v10, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorDisabled:I

    .line 146
    goto :goto_2

    .line 148
    :cond_8
    iget v10, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorUnavailable:I

    .line 149
    :goto_2
    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 151
    iget v10, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 154
    if-ne v10, v12, :cond_9

    .line 156
    move v10, v13

    .line 158
    goto :goto_3

    .line 159
    :cond_9
    move v10, v9

    .line 160
    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 161
    move-result-object v14

    .line 164
    if-eqz v14, :cond_b

    .line 165
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 167
    move-result-object v14

    .line 170
    check-cast v14, Ljava/lang/Integer;

    .line 171
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 173
    move-result v14

    .line 176
    if-ne v14, v12, :cond_a

    .line 177
    move v14, v13

    .line 179
    goto :goto_4

    .line 180
    :cond_a
    move v14, v9

    .line 181
    goto :goto_4

    .line 182
    :cond_b
    move v14, v10

    .line 183
    :goto_4
    iget v15, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 184
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v15

    .line 189
    invoke-virtual {v2, v5, v15}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 190
    iget v5, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    .line 193
    if-ne v5, v11, :cond_c

    .line 195
    move v5, v13

    .line 197
    goto :goto_5

    .line 198
    :cond_c
    move v5, v9

    .line 199
    :goto_5
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 200
    move-result-object v15

    .line 203
    if-eqz v15, :cond_d

    .line 204
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 206
    move-result-object v15

    .line 209
    check-cast v15, Ljava/lang/Integer;

    .line 210
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 212
    move-result v15

    .line 215
    goto :goto_6

    .line 216
    :cond_d
    move v15, v9

    .line 217
    :goto_6
    iget v9, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    .line 218
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v9

    .line 223
    invoke-virtual {v2, v8, v9}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 224
    if-eqz p2, :cond_f

    .line 227
    invoke-virtual {v2}, Landroid/widget/ImageView;->isShown()Z

    .line 229
    move-result v8

    .line 232
    if-eqz v8, :cond_f

    .line 233
    iget-boolean v8, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimationEnabled:Z

    .line 235
    if-eqz v8, :cond_f

    .line 237
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 239
    move-result-object v7

    .line 242
    if-eqz v7, :cond_f

    .line 243
    if-ne v14, v10, :cond_e

    .line 245
    if-ne v15, v11, :cond_f

    .line 247
    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    .line 249
    if-eq v15, v1, :cond_f

    .line 251
    :cond_e
    move v1, v13

    .line 253
    goto :goto_7

    .line 254
    :cond_f
    const/4 v1, 0x0

    .line 255
    :goto_7
    if-eqz v5, :cond_10

    .line 256
    const/4 v1, 0x0

    .line 258
    :cond_10
    iget-boolean v7, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIsCustomTile:Z

    .line 259
    if-eqz v7, :cond_11

    .line 261
    iget v7, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconSizePx:I

    .line 263
    goto :goto_8

    .line 265
    :cond_11
    if-eqz v6, :cond_12

    .line 266
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 268
    move-result v7

    .line 271
    goto :goto_8

    .line 272
    :cond_12
    iget v7, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconSizePx:I

    .line 273
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 275
    move-result-object v8

    .line 278
    const v9, 0x7f081123    # @drawable/ic_qs_bg_disabled 'res/drawable/ic_qs_bg_disabled.xml'

    .line 279
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 282
    move-result-object v8

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 286
    move-result-object v9

    .line 289
    const v11, 0x7f081124    # @drawable/ic_qs_bg_enabled 'res/drawable/ic_qs_bg_enabled.xml'

    .line 290
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 293
    move-result-object v9

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 297
    move-result-object v14

    .line 300
    const v15, 0x7f081125    # @drawable/ic_qs_bg_restricted 'res/drawable/ic_qs_bg_restricted.xml'

    .line 301
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 304
    move-result-object v14

    .line 307
    if-eqz v10, :cond_13

    .line 308
    goto :goto_9

    .line 310
    :cond_13
    if-eqz v5, :cond_14

    .line 311
    move-object v9, v14

    .line 313
    goto :goto_9

    .line 314
    :cond_14
    move-object v9, v8

    .line 315
    :goto_9
    const/16 v5, 0x11

    .line 316
    if-eqz v1, :cond_18

    .line 318
    if-eqz v10, :cond_15

    .line 320
    const/16 v9, 0xff

    .line 322
    goto :goto_a

    .line 324
    :cond_15
    const/4 v9, 0x0

    .line 325
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 326
    move-result-object v1

    .line 329
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 330
    move-result-object v1

    .line 333
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 334
    move-result-object v1

    .line 337
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    .line 338
    filled-new-array {v8, v1, v3}, [Landroid/graphics/drawable/Drawable;

    .line 340
    move-result-object v8

    .line 343
    invoke-direct {v10, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 344
    invoke-virtual {v10, v12, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 347
    invoke-virtual {v10, v12, v7, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    .line 350
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 356
    if-eqz v2, :cond_16

    .line 358
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 360
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 363
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 365
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 368
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 370
    iput-object v4, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 373
    :cond_16
    rsub-int v2, v9, 0xff

    .line 375
    filled-new-array {v2, v9}, [I

    .line 377
    move-result-object v2

    .line 380
    const-string v4, "alpha"

    .line 381
    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 383
    move-result-object v1

    .line 386
    const-wide/16 v4, 0x12c

    .line 387
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 389
    move-result-object v1

    .line 392
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 393
    sget-object v2, Lcom/miui/utils/MiuiInterpolators;->EXP_EASE_OUT:Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    .line 395
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 397
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 400
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 402
    if-eqz v6, :cond_19

    .line 405
    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 407
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    .line 409
    move-result v0

    .line 412
    if-eqz v0, :cond_17

    .line 413
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 415
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 418
    :cond_17
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 421
    goto :goto_b

    .line 424
    :cond_18
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 425
    filled-new-array {v9, v3}, [Landroid/graphics/drawable/Drawable;

    .line 427
    move-result-object v1

    .line 430
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 431
    invoke-virtual {v0, v13, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 434
    invoke-virtual {v0, v13, v7, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    .line 437
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    :cond_19
    :goto_b
    return-void
    .line 443
.end method

.method public setIsCustomTile(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIsCustomTile:Z

    .line 2
    return-void
    .line 4
.end method

.method public final updateResources()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0607e8    # @color/qs_tile_icon_enabled_color '#ffffff'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 9
    move-result v1

    .line 12
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorEnabled:I

    .line 13
    const v1, 0x7f0607e7    # @color/qs_tile_icon_disabled_color '#ff5c5d5e'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 18
    move-result v1

    .line 21
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorDisabled:I

    .line 22
    const v1, 0x7f0607e9    # @color/qs_tile_icon_restricted_color '#ff5c5d5e'

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 27
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorRestricted:I

    .line 31
    return-void
    .line 33
.end method
