.class Lmiuix/appcompat/app/AlertController$6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;

.field final synthetic val$densityScale:F


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    iput p2, p0, Lmiuix/appcompat/app/AlertController$6;->val$densityScale:F

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    iget-object v0, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 4
    const v1, 0x7f0a0224    # @id/contentPanel

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 15
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 17
    const v2, 0x7f0a01a6    # @id/buttonPanel

    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Landroid/view/ViewGroup;

    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 28
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    if-eqz v0, :cond_9

    .line 32
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 34
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    const v7, 0x102002b    # @android:id/custom

    .line 39
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v7

    .line 45
    check-cast v7, Landroid/widget/FrameLayout;

    .line 46
    if-eqz v7, :cond_0

    .line 48
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 50
    move-result v8

    .line 53
    if-lez v8, :cond_0

    .line 54
    move v8, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v8, v4

    .line 58
    :goto_0
    iget-object v9, v6, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 59
    const/4 v10, 0x0

    .line 61
    if-eqz v9, :cond_4

    .line 62
    if-eqz v8, :cond_3

    .line 64
    iget-object v8, v6, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 66
    const v9, 0x7f040248    # @attr/dialogListPreferredItemHeight

    .line 68
    invoke-static {v9, v8}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(ILandroid/content/Context;)I

    .line 71
    move-result v8

    .line 74
    iget-object v9, v6, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 75
    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    .line 77
    move-result v9

    .line 80
    mul-int/2addr v9, v8

    .line 81
    iget-object v8, v6, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 82
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 84
    int-to-float v8, v8

    .line 86
    const v11, 0x3eb33333    # 0.35f

    .line 87
    mul-float/2addr v8, v11

    .line 90
    float-to-int v8, v8

    .line 91
    if-le v9, v8, :cond_1

    .line 92
    move v8, v5

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move v8, v4

    .line 96
    :goto_1
    const/4 v9, -0x2

    .line 97
    if-nez v8, :cond_2

    .line 98
    iget-object v8, v6, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 100
    invoke-virtual {v8}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    move-result-object v8

    .line 105
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    iget-object v6, v6, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 108
    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    move-result-object v6

    .line 116
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 119
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 121
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 126
    move-result-object v6

    .line 129
    check-cast v6, Landroid/view/View;

    .line 130
    move-object v7, v0

    .line 132
    check-cast v7, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 133
    invoke-virtual {v7, v6}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 135
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 138
    goto :goto_3

    .line 141
    :cond_2
    invoke-virtual {v6}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    .line 142
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    move-result-object v6

    .line 148
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 149
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 151
    const/4 v8, 0x0

    .line 153
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 154
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    move-object v6, v0

    .line 159
    check-cast v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 160
    invoke-virtual {v6, v10}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 162
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 165
    goto :goto_3

    .line 168
    :cond_3
    move-object v6, v0

    .line 169
    check-cast v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 170
    invoke-virtual {v6, v9}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 172
    goto :goto_3

    .line 175
    :cond_4
    if-eqz v8, :cond_5

    .line 176
    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 178
    move-result-object v6

    .line 181
    sget-object v9, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 182
    invoke-static {v6, v5}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 184
    :cond_5
    move-object v6, v0

    .line 187
    check-cast v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 188
    if-eqz v8, :cond_6

    .line 190
    goto :goto_2

    .line 192
    :cond_6
    move-object v7, v10

    .line 193
    :goto_2
    invoke-virtual {v6, v7}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 194
    :goto_3
    if-eqz v1, :cond_9

    .line 197
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 199
    iget-boolean v7, v6, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    .line 201
    if-nez v7, :cond_9

    .line 203
    new-instance v7, Landroid/graphics/Point;

    .line 205
    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 207
    iget-object v8, v6, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 210
    invoke-static {v8, v7}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 212
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 215
    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 217
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 219
    move-result v7

    .line 222
    iget-object v8, v6, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 223
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 225
    int-to-float v8, v8

    .line 227
    int-to-float v7, v7

    .line 228
    const v9, 0x3e99999a    # 0.3f

    .line 229
    mul-float/2addr v7, v9

    .line 232
    cmpg-float v7, v8, v7

    .line 233
    if-gtz v7, :cond_7

    .line 235
    move v7, v5

    .line 237
    goto :goto_4

    .line 238
    :cond_7
    move v7, v4

    .line 239
    :goto_4
    if-nez v7, :cond_8

    .line 240
    iget-object v0, v6, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 242
    invoke-static {v1, v0}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 244
    goto :goto_5

    .line 247
    :cond_8
    invoke-static {v1, v0}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 248
    check-cast v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 251
    invoke-virtual {v0, v10}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 253
    :cond_9
    :goto_5
    iget v0, p0, Lmiuix/appcompat/app/AlertController$6;->val$densityScale:F

    .line 256
    cmpl-float v1, v0, v3

    .line 258
    if-eqz v1, :cond_16

    .line 260
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 262
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 264
    if-eqz v1, :cond_a

    .line 266
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(FLandroid/view/View;)V

    .line 268
    :cond_a
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 271
    const/4 v3, 0x2

    .line 273
    if-eqz v1, :cond_b

    .line 274
    iget v6, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    .line 276
    invoke-virtual {v1, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 278
    :cond_b
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 281
    if-eqz v1, :cond_c

    .line 283
    iget v6, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    .line 285
    invoke-virtual {v1, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 287
    :cond_c
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 290
    if-eqz v1, :cond_d

    .line 292
    iget v6, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    .line 294
    invoke-virtual {v1, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 296
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 299
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(FLandroid/view/View;)V

    .line 301
    :cond_d
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 304
    if-eqz v1, :cond_e

    .line 306
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 308
    if-eqz v1, :cond_e

    .line 310
    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 312
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSizeUnit()I

    .line 314
    move-result v6

    .line 317
    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 318
    :cond_e
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 321
    invoke-virtual {p0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 323
    move-result-object v1

    .line 326
    if-eqz v1, :cond_f

    .line 327
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(FLandroid/view/View;)V

    .line 329
    :cond_f
    const v1, 0x7f0a09b2    # @id/topPanel

    .line 332
    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 335
    move-result-object v1

    .line 338
    check-cast v1, Landroid/view/ViewGroup;

    .line 339
    if-eqz v1, :cond_10

    .line 341
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(FLandroid/view/View;)V

    .line 343
    :cond_10
    const v1, 0x7f0a0225    # @id/contentView

    .line 346
    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 349
    move-result-object v1

    .line 352
    if-eqz v1, :cond_11

    .line 353
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(FLandroid/view/View;)V

    .line 355
    :cond_11
    const v1, 0x1020001    # @android:id/checkbox

    .line 358
    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 361
    move-result-object v1

    .line 364
    check-cast v1, Landroid/widget/CheckBox;

    .line 365
    if-eqz v1, :cond_12

    .line 367
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(FLandroid/view/View;)V

    .line 369
    :cond_12
    const v1, 0x1020006    # @android:id/icon

    .line 372
    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 375
    move-result-object p0

    .line 378
    check-cast p0, Landroid/widget/ImageView;

    .line 379
    if-eqz p0, :cond_16

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 383
    move-result-object v1

    .line 386
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 387
    if-lez v2, :cond_13

    .line 389
    int-to-float v2, v2

    .line 391
    mul-float/2addr v2, v0

    .line 392
    float-to-int v2, v2

    .line 393
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 394
    move v4, v5

    .line 396
    :cond_13
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 397
    if-lez v2, :cond_14

    .line 399
    int-to-float v2, v2

    .line 401
    mul-float/2addr v2, v0

    .line 402
    float-to-int v2, v2

    .line 403
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    goto :goto_6

    .line 406
    :cond_14
    move v5, v4

    .line 407
    :goto_6
    if-eqz v5, :cond_15

    .line 408
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    :cond_15
    invoke-static {v0, p0}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(FLandroid/view/View;)V

    .line 413
    :cond_16
    return-void
    .line 416
.end method
