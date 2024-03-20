.class public Landroidx/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final mAlert:Landroidx/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p2, p1}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(ILandroid/content/Context;)I

    .line 2
    move-result p2

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 6
    new-instance p1, Landroidx/appcompat/app/AlertController;

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    move-result-object v0

    .line 18
    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    .line 19
    iput-object p1, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 22
    return-void
    .line 24
.end method

.method public static resolveDialogTheme(ILandroid/content/Context;)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p0, 0x18

    .line 2
    and-int/lit16 v0, v0, 0xff

    .line 4
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    return p0

    .line 9
    :cond_0
    new-instance p0, Landroid/util/TypedValue;

    .line 10
    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    move-result-object p1

    .line 18
    const v0, 0x7f04007f    # @attr/alertDialogTheme

    .line 19
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    iget p0, p0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    return p0
    .line 27
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    move-object/from16 v0, p0

    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 7
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 9
    iget v2, v0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 11
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 13
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 16
    const v2, 0x7f0a06e9    # @id/parentPanel

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 24
    const v3, 0x7f0a09b2    # @id/topPanel

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v4

    .line 31
    const v5, 0x7f0a0224    # @id/contentPanel

    .line 32
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v6

    .line 38
    const v7, 0x7f0a01a6    # @id/buttonPanel

    .line 39
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v8

    .line 45
    const v9, 0x7f0a0277    # @id/customPanel

    .line 46
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v2

    .line 52
    check-cast v2, Landroid/view/ViewGroup;

    .line 53
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 55
    const/4 v11, 0x0

    .line 57
    iget-object v12, v0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 58
    if-eqz v9, :cond_0

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    iget v9, v0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 63
    if-eqz v9, :cond_1

    .line 65
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 67
    move-result-object v9

    .line 70
    iget v13, v0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 71
    invoke-virtual {v9, v13, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    move-result-object v9

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v9, 0x0

    .line 78
    :goto_0
    if-eqz v9, :cond_2

    .line 79
    const/4 v14, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v14, v11

    .line 83
    :goto_1
    if-eqz v14, :cond_3

    .line 84
    invoke-static {v9}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    .line 86
    move-result v15

    .line 89
    if-nez v15, :cond_4

    .line 90
    :cond_3
    const/high16 v15, 0x20000

    .line 92
    invoke-virtual {v1, v15, v15}, Landroid/view/Window;->setFlags(II)V

    .line 94
    :cond_4
    const/4 v15, -0x1

    .line 97
    const/16 v13, 0x8

    .line 98
    if-eqz v14, :cond_6

    .line 100
    const v14, 0x7f0a0275    # @id/custom

    .line 102
    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v14

    .line 108
    check-cast v14, Landroid/widget/FrameLayout;

    .line 109
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 111
    invoke-direct {v10, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v14, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-boolean v9, v0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 119
    if-eqz v9, :cond_5

    .line 121
    invoke-virtual {v14, v11, v11, v11, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 123
    :cond_5
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 126
    if-eqz v9, :cond_7

    .line 128
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    move-result-object v9

    .line 133
    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 134
    const/4 v10, 0x0

    .line 136
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 137
    goto :goto_2

    .line 139
    :cond_6
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    :cond_7
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v3

    .line 146
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v5

    .line 150
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v7

    .line 154
    invoke-static {v3, v4}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 155
    move-result-object v3

    .line 158
    invoke-static {v5, v6}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 159
    move-result-object v4

    .line 162
    invoke-static {v7, v8}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 163
    move-result-object v5

    .line 166
    const v6, 0x7f0a082a    # @id/scrollView

    .line 167
    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object v6

    .line 173
    check-cast v6, Landroidx/core/widget/NestedScrollView;

    .line 174
    iput-object v6, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 176
    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 178
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 181
    invoke-virtual {v6, v11}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 183
    const v6, 0x102000b    # @android:id/message

    .line 186
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 189
    move-result-object v6

    .line 192
    check-cast v6, Landroid/widget/TextView;

    .line 193
    iput-object v6, v0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 195
    if-nez v6, :cond_8

    .line 197
    goto :goto_3

    .line 199
    :cond_8
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 203
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 205
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 207
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 210
    if-eqz v6, :cond_9

    .line 212
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 214
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 216
    move-result-object v6

    .line 219
    check-cast v6, Landroid/view/ViewGroup;

    .line 220
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 222
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 224
    move-result v7

    .line 227
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 228
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 231
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 233
    invoke-direct {v9, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 235
    invoke-virtual {v6, v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 238
    goto :goto_3

    .line 241
    :cond_9
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 242
    :goto_3
    const v6, 0x1020019    # @android:id/button1

    .line 245
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 248
    move-result-object v6

    .line 251
    check-cast v6, Landroid/widget/Button;

    .line 252
    iput-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 254
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroidx/appcompat/app/AlertController$1;

    .line 256
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 261
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 263
    move-result v6

    .line 266
    iget v8, v0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    .line 267
    if-eqz v6, :cond_a

    .line 269
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 271
    if-nez v6, :cond_a

    .line 273
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 275
    invoke-virtual {v6, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    move v6, v11

    .line 280
    goto :goto_4

    .line 281
    :cond_a
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 282
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 284
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 289
    if-eqz v6, :cond_b

    .line 291
    invoke-virtual {v6, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 293
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 296
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 298
    const/4 v10, 0x0

    .line 300
    invoke-virtual {v6, v9, v10, v10, v10}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 301
    :cond_b
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 304
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    const/4 v6, 0x1

    .line 309
    :goto_4
    const v9, 0x102001a    # @android:id/button2

    .line 310
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 313
    move-result-object v9

    .line 316
    check-cast v9, Landroid/widget/Button;

    .line 317
    iput-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 319
    invoke-virtual {v9, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 324
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 326
    move-result v9

    .line 329
    if-eqz v9, :cond_c

    .line 330
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 332
    if-nez v9, :cond_c

    .line 334
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 336
    invoke-virtual {v9, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 338
    goto :goto_5

    .line 341
    :cond_c
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 342
    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 344
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 349
    if-eqz v9, :cond_d

    .line 351
    invoke-virtual {v9, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 353
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 356
    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 358
    const/4 v14, 0x0

    .line 360
    invoke-virtual {v9, v10, v14, v14, v14}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 361
    :cond_d
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 364
    invoke-virtual {v9, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 366
    or-int/lit8 v6, v6, 0x2

    .line 369
    :goto_5
    const v9, 0x102001b    # @android:id/button3

    .line 371
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 374
    move-result-object v9

    .line 377
    check-cast v9, Landroid/widget/Button;

    .line 378
    iput-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 380
    invoke-virtual {v9, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 385
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 387
    move-result v7

    .line 390
    if-eqz v7, :cond_e

    .line 391
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 393
    if-nez v7, :cond_e

    .line 395
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 397
    invoke-virtual {v7, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 399
    const/4 v9, 0x0

    .line 402
    goto :goto_7

    .line 403
    :cond_e
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 404
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 406
    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 411
    if-eqz v7, :cond_f

    .line 413
    invoke-virtual {v7, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 418
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 420
    const/4 v9, 0x0

    .line 422
    invoke-virtual {v7, v8, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 423
    goto :goto_6

    .line 426
    :cond_f
    const/4 v9, 0x0

    .line 427
    :goto_6
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 428
    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 430
    or-int/lit8 v6, v6, 0x4

    .line 433
    :goto_7
    new-instance v7, Landroid/util/TypedValue;

    .line 435
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 437
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 440
    move-result-object v8

    .line 443
    const v10, 0x7f04007d    # @attr/alertDialogCenterButtons

    .line 444
    const/4 v12, 0x1

    .line 447
    invoke-virtual {v8, v10, v7, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 448
    iget v7, v7, Landroid/util/TypedValue;->data:I

    .line 451
    if-eqz v7, :cond_10

    .line 453
    move v7, v12

    .line 455
    goto :goto_8

    .line 456
    :cond_10
    move v7, v11

    .line 457
    :goto_8
    const/4 v8, 0x2

    .line 458
    if-eqz v7, :cond_13

    .line 459
    if-ne v6, v12, :cond_11

    .line 461
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 463
    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 465
    goto :goto_9

    .line 468
    :cond_11
    if-ne v6, v8, :cond_12

    .line 469
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 471
    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 473
    goto :goto_9

    .line 476
    :cond_12
    const/4 v7, 0x4

    .line 477
    if-ne v6, v7, :cond_13

    .line 478
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 480
    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 482
    :cond_13
    :goto_9
    if-eqz v6, :cond_14

    .line 485
    const/4 v6, 0x1

    .line 487
    goto :goto_a

    .line 488
    :cond_14
    move v6, v11

    .line 489
    :goto_a
    if-nez v6, :cond_15

    .line 490
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 492
    :cond_15
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 495
    const v7, 0x7f0a09a8    # @id/title_template

    .line 497
    if-eqz v6, :cond_16

    .line 500
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 502
    const/4 v10, -0x2

    .line 504
    invoke-direct {v6, v15, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 505
    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 508
    invoke-virtual {v3, v10, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 510
    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 513
    move-result-object v6

    .line 516
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 517
    goto :goto_b

    .line 520
    :cond_16
    const v6, 0x1020006    # @android:id/icon

    .line 521
    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 524
    move-result-object v6

    .line 527
    check-cast v6, Landroid/widget/ImageView;

    .line 528
    iput-object v6, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 530
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 532
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 534
    move-result v6

    .line 537
    const/4 v10, 0x1

    .line 538
    xor-int/2addr v6, v10

    .line 539
    if-eqz v6, :cond_19

    .line 540
    iget-boolean v6, v0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    .line 542
    if-eqz v6, :cond_19

    .line 544
    const v6, 0x7f0a00a4    # @id/alertTitle

    .line 546
    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 549
    move-result-object v6

    .line 552
    check-cast v6, Landroid/widget/TextView;

    .line 553
    iput-object v6, v0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 555
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 557
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget v6, v0, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 562
    if-eqz v6, :cond_17

    .line 564
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 566
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    goto :goto_b

    .line 571
    :cond_17
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 572
    if-eqz v6, :cond_18

    .line 574
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 576
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    goto :goto_b

    .line 581
    :cond_18
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 582
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 584
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 586
    move-result v7

    .line 589
    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 590
    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 592
    move-result v10

    .line 595
    iget-object v12, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 596
    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingRight()I

    .line 598
    move-result v12

    .line 601
    iget-object v14, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 602
    invoke-virtual {v14}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 604
    move-result v14

    .line 607
    invoke-virtual {v6, v7, v10, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 608
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 611
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    goto :goto_b

    .line 616
    :cond_19
    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 617
    move-result-object v6

    .line 620
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 624
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 629
    :goto_b
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    .line 632
    move-result v2

    .line 635
    if-eq v2, v13, :cond_1a

    .line 636
    const/4 v12, 0x1

    .line 638
    goto :goto_c

    .line 639
    :cond_1a
    move v12, v11

    .line 640
    :goto_c
    if-eqz v3, :cond_1b

    .line 641
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    .line 643
    move-result v2

    .line 646
    if-eq v2, v13, :cond_1b

    .line 647
    const/4 v2, 0x1

    .line 649
    goto :goto_d

    .line 650
    :cond_1b
    move v2, v11

    .line 651
    :goto_d
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    .line 652
    move-result v5

    .line 655
    if-eq v5, v13, :cond_1c

    .line 656
    const/4 v5, 0x1

    .line 658
    goto :goto_e

    .line 659
    :cond_1c
    move v5, v11

    .line 660
    :goto_e
    if-nez v5, :cond_1d

    .line 661
    const v6, 0x7f0a096b    # @id/textSpacerNoButtons

    .line 663
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 666
    move-result-object v6

    .line 669
    if-eqz v6, :cond_1d

    .line 670
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :cond_1d
    if-eqz v2, :cond_20

    .line 675
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 677
    if-eqz v6, :cond_1e

    .line 679
    const/4 v7, 0x1

    .line 681
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 682
    :cond_1e
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 685
    if-eqz v6, :cond_1f

    .line 687
    const v6, 0x7f0a09a3    # @id/titleDividerNoCustom

    .line 689
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 692
    move-result-object v10

    .line 695
    goto :goto_f

    .line 696
    :cond_1f
    move-object v10, v9

    .line 697
    :goto_f
    if-eqz v10, :cond_21

    .line 698
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 700
    goto :goto_10

    .line 703
    :cond_20
    const v3, 0x7f0a096c    # @id/textSpacerNoTitle

    .line 704
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 707
    move-result-object v3

    .line 710
    if-eqz v3, :cond_21

    .line 711
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 713
    :cond_21
    :goto_10
    iget-object v3, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 716
    instance-of v6, v3, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 718
    if-eqz v6, :cond_22

    .line 720
    invoke-virtual {v3, v2, v5}, Landroidx/appcompat/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 722
    :cond_22
    if-nez v12, :cond_26

    .line 725
    iget-object v3, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 727
    if-eqz v3, :cond_23

    .line 729
    goto :goto_11

    .line 731
    :cond_23
    iget-object v3, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 732
    :goto_11
    if-eqz v3, :cond_26

    .line 734
    if-eqz v5, :cond_24

    .line 736
    move v11, v8

    .line 738
    :cond_24
    or-int/2addr v2, v11

    .line 739
    const v5, 0x7f0a0829    # @id/scrollIndicatorUp

    .line 740
    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 743
    move-result-object v5

    .line 746
    const v6, 0x7f0a0828    # @id/scrollIndicatorDown

    .line 747
    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 750
    move-result-object v1

    .line 753
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 754
    const/4 v6, 0x3

    .line 756
    invoke-static {v3, v2, v6}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;II)V

    .line 757
    if-eqz v5, :cond_25

    .line 760
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 762
    :cond_25
    if-eqz v1, :cond_26

    .line 765
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 767
    :cond_26
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 770
    if-eqz v1, :cond_27

    .line 772
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 774
    if-eqz v2, :cond_27

    .line 776
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 778
    iget v0, v0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 781
    if-le v0, v15, :cond_27

    .line 783
    const/4 v2, 0x1

    .line 785
    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 786
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 789
    :cond_27
    return-void
    .line 792
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    return v1

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    return v1

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 5
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 7
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
