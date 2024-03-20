.class public final Lcom/google/android/material/textfield/EndCompoundLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public editText:Landroid/widget/EditText;

.field public final editTextWatcher:Lcom/google/android/material/textfield/EndCompoundLayout$1;

.field public final endIconChangedListeners:Ljava/util/LinkedHashSet;

.field public final endIconDelegates:Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

.field public final endIconFrame:Landroid/widget/FrameLayout;

.field public endIconMode:I

.field public endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field public endIconTintList:Landroid/content/res/ColorStateList;

.field public endIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public final endIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field public errorIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field public errorIconTintList:Landroid/content/res/ColorStateList;

.field public errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public final errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field public hintExpanded:Z

.field public suffixText:Ljava/lang/CharSequence;

.field public final suffixTextView:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public touchExplorationStateChangeListener:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v3

    .line 11
    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v3, 0x0

    .line 15
    iput v3, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    .line 16
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 18
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 20
    iput-object v4, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    .line 23
    new-instance v4, Lcom/google/android/material/textfield/EndCompoundLayout$1;

    .line 25
    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/EndCompoundLayout$1;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 27
    iput-object v4, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->editTextWatcher:Lcom/google/android/material/textfield/EndCompoundLayout$1;

    .line 30
    new-instance v4, Lcom/google/android/material/textfield/EndCompoundLayout$2;

    .line 32
    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/EndCompoundLayout$2;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v5

    .line 40
    const-string v6, "accessibility"

    .line 41
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 46
    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    .line 47
    iput-object v5, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 49
    iput-object v1, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 51
    const/16 v5, 0x8

    .line 53
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    const/4 v7, -0x2

    .line 63
    const/4 v8, -0x1

    .line 64
    const v9, 0x800005

    .line 65
    invoke-direct {v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 68
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v6, Landroid/widget/FrameLayout;

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 76
    move-result-object v9

    .line 79
    invoke-direct {v6, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object v6, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconFrame:Landroid/widget/FrameLayout;

    .line 83
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 85
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v9

    .line 99
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 100
    move-result-object v9

    .line 103
    const v10, 0x7f0a0973    # @id/text_input_error_icon

    .line 104
    invoke-virtual {v0, v10, v9, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->createIconView(ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/material/internal/CheckableImageButton;

    .line 107
    move-result-object v10

    .line 110
    iput-object v10, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 111
    const v11, 0x7f0a0972    # @id/text_input_end_icon

    .line 113
    invoke-virtual {v0, v11, v9, v6}, Lcom/google/android/material/textfield/EndCompoundLayout;->createIconView(ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/material/internal/CheckableImageButton;

    .line 116
    move-result-object v9

    .line 119
    iput-object v9, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 120
    new-instance v11, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

    .line 122
    invoke-direct {v11, v0, v2}, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 124
    iput-object v11, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconDelegates:Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

    .line 127
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 131
    move-result-object v12

    .line 134
    invoke-direct {v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 135
    iput-object v11, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    const/16 v12, 0x21

    .line 140
    invoke-virtual {v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 142
    move-result v13

    .line 145
    if-eqz v13, :cond_0

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 148
    move-result-object v13

    .line 151
    invoke-static {v13, v2, v12}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 152
    move-result-object v12

    .line 155
    iput-object v12, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    .line 156
    :cond_0
    const/16 v12, 0x22

    .line 158
    invoke-virtual {v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 160
    move-result v13

    .line 163
    const/4 v14, 0x0

    .line 164
    if-eqz v13, :cond_1

    .line 165
    invoke-virtual {v2, v12, v8}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 167
    move-result v12

    .line 170
    invoke-static {v12, v14}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 171
    move-result-object v12

    .line 174
    iput-object v12, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 175
    :cond_1
    const/16 v12, 0x20

    .line 177
    invoke-virtual {v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 179
    move-result v13

    .line 182
    if-eqz v13, :cond_2

    .line 183
    invoke-virtual {v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 185
    move-result-object v12

    .line 188
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/EndCompoundLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 192
    move-result-object v12

    .line 195
    const v13, 0x7f1303ee    # @string/error_icon_content_description 'Error'

    .line 196
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 199
    move-result-object v12

    .line 202
    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    sget-object v12, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 206
    const/4 v12, 0x2

    .line 208
    invoke-static {v10, v12}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 209
    invoke-virtual {v10, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 212
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 215
    invoke-virtual {v10, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 218
    const/16 v12, 0x30

    .line 221
    invoke-virtual {v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 223
    move-result v13

    .line 226
    if-nez v13, :cond_4

    .line 227
    const/16 v13, 0x1c

    .line 229
    invoke-virtual {v2, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 231
    move-result v15

    .line 234
    if-eqz v15, :cond_3

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 237
    move-result-object v15

    .line 240
    invoke-static {v15, v2, v13}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 241
    move-result-object v13

    .line 244
    iput-object v13, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 245
    :cond_3
    const/16 v13, 0x1d

    .line 247
    invoke-virtual {v2, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 249
    move-result v15

    .line 252
    if-eqz v15, :cond_4

    .line 253
    invoke-virtual {v2, v13, v8}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 255
    move-result v13

    .line 258
    invoke-static {v13, v14}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 259
    move-result-object v13

    .line 262
    iput-object v13, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 263
    :cond_4
    const/16 v13, 0x1b

    .line 265
    invoke-virtual {v2, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 267
    move-result v15

    .line 270
    const/4 v7, 0x1

    .line 271
    if-eqz v15, :cond_6

    .line 272
    invoke-virtual {v2, v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 274
    move-result v8

    .line 277
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconMode(I)V

    .line 278
    const/16 v8, 0x19

    .line 281
    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 283
    move-result v12

    .line 286
    if-eqz v12, :cond_5

    .line 287
    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 289
    move-result-object v8

    .line 292
    invoke-virtual {v9}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    .line 293
    move-result-object v12

    .line 296
    if-eq v12, v8, :cond_5

    .line 297
    invoke-virtual {v9, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 299
    :cond_5
    const/16 v8, 0x18

    .line 302
    invoke-virtual {v2, v8, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 304
    move-result v8

    .line 307
    invoke-virtual {v9, v8}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 308
    goto :goto_0

    .line 311
    :cond_6
    invoke-virtual {v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 312
    move-result v13

    .line 315
    if-eqz v13, :cond_9

    .line 316
    const/16 v13, 0x31

    .line 318
    invoke-virtual {v2, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 320
    move-result v15

    .line 323
    if-eqz v15, :cond_7

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 326
    move-result-object v15

    .line 329
    invoke-static {v15, v2, v13}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 330
    move-result-object v13

    .line 333
    iput-object v13, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 334
    :cond_7
    const/16 v13, 0x32

    .line 336
    invoke-virtual {v2, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 338
    move-result v15

    .line 341
    if-eqz v15, :cond_8

    .line 342
    invoke-virtual {v2, v13, v8}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 344
    move-result v8

    .line 347
    invoke-static {v8, v14}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 348
    move-result-object v8

    .line 351
    iput-object v8, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 352
    :cond_8
    invoke-virtual {v2, v12, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 354
    move-result v8

    .line 357
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconMode(I)V

    .line 358
    const/16 v8, 0x2e

    .line 361
    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 363
    move-result-object v8

    .line 366
    invoke-virtual {v9}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    .line 367
    move-result-object v12

    .line 370
    if-eq v12, v8, :cond_9

    .line 371
    invoke-virtual {v9, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    :cond_9
    :goto_0
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    const v5, 0x7f0a0981    # @id/textinput_suffix_text

    .line 379
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setId(I)V

    .line 382
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    const/high16 v8, 0x42a00000    # 80.0f

    .line 387
    const/4 v12, -0x2

    .line 389
    invoke-direct {v5, v12, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 390
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    invoke-static {v11, v7}, Landroidx/core/view/ViewCompat$Api19Impl;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 396
    const/16 v5, 0x41

    .line 399
    invoke-virtual {v2, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 401
    move-result v3

    .line 404
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 405
    const/16 v3, 0x42

    .line 408
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 410
    move-result v5

    .line 413
    if-eqz v5, :cond_a

    .line 414
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 416
    move-result-object v3

    .line 419
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 420
    :cond_a
    const/16 v3, 0x40

    .line 423
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 425
    move-result-object v2

    .line 428
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 429
    move-result v3

    .line 432
    if-eqz v3, :cond_b

    .line 433
    goto :goto_1

    .line 435
    :cond_b
    move-object v14, v2

    .line 436
    :goto_1
    iput-object v14, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    .line 437
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateSuffixTextVisibility()V

    .line 442
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 445
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    .line 457
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 462
    if-eqz v2, :cond_c

    .line 464
    invoke-virtual {v4, v1}, Lcom/google/android/material/textfield/EndCompoundLayout$2;->onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 466
    :cond_c
    new-instance v1, Lcom/google/android/material/textfield/EndCompoundLayout$3;

    .line 469
    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/EndCompoundLayout$3;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 474
    return-void
    .line 477
.end method


# virtual methods
.method public final addTouchExplorationStateChangeListenerIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 18
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;

    .line 20
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    .line 22
    invoke-direct {v1, p0}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 27
    :cond_0
    return-void
    .line 30
.end method

.method public final createIconView(ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 2

    .line 1
    const v0, 0x7f0d009e    # @layout/design_text_input_end_icon 'res/layout/design_text_input_end_icon.xml'

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    move-result-object p2

    .line 9
    check-cast p2, Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setId(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    .line 19
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 29
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 31
    :cond_0
    return-object p2
    .line 34
.end method

.method public final getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconDelegates:Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

    .line 2
    iget p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    .line 4
    iget-object v1, v0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->delegates:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/android/material/textfield/EndIconDelegate;

    .line 12
    if-nez v2, :cond_5

    .line 14
    const/4 v2, -0x1

    .line 16
    iget-object v3, v0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 17
    if-eq p0, v2, :cond_4

    .line 19
    if-eqz p0, :cond_3

    .line 21
    const/4 v2, 0x1

    .line 23
    if-eq p0, v2, :cond_2

    .line 24
    const/4 v0, 0x2

    .line 26
    if-eq p0, v0, :cond_1

    .line 27
    const/4 v0, 0x3

    .line 29
    if-ne p0, v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 32
    invoke-direct {v0, v3}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    const-string v1, "Invalid end icon mode: "

    .line 40
    invoke-static {v1, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 49
    :cond_1
    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 50
    invoke-direct {v0, v3}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    new-instance v2, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 56
    iget v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->passwordIconDrawableId:I

    .line 58
    invoke-direct {v2, v3, v0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;I)V

    .line 60
    goto :goto_1

    .line 63
    :cond_3
    new-instance v0, Lcom/google/android/material/textfield/NoEndIconDelegate;

    .line 64
    invoke-direct {v0, v3}, Lcom/google/android/material/textfield/NoEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 66
    goto :goto_0

    .line 69
    :cond_4
    new-instance v0, Lcom/google/android/material/textfield/CustomEndIconDelegate;

    .line 70
    invoke-direct {v0, v3}, Lcom/google/android/material/textfield/CustomEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 72
    :goto_0
    move-object v2, v0

    .line 75
    :goto_1
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 76
    :cond_5
    return-object v2
    .line 79
.end method

.method public final isEndIconVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconFrame:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    .line 12
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public final isErrorIconVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    .line 4
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final refreshIconState(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->isIconCheckable()Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    .line 15
    move-result v1

    .line 18
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->isIconChecked()Z

    .line 19
    move-result v3

    .line 22
    if-eq v1, v3, :cond_0

    .line 23
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 25
    xor-int/2addr v1, v2

    .line 27
    invoke-virtual {v3, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 28
    move v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    instance-of v3, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 34
    if-eqz v3, :cond_1

    .line 36
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 38
    invoke-virtual {v3}, Landroid/widget/ImageButton;->isActivated()Z

    .line 40
    move-result v3

    .line 43
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->isIconActivated()Z

    .line 44
    move-result v0

    .line 47
    if-eq v3, v0, :cond_1

    .line 48
    xor-int/lit8 v0, v3, 0x1

    .line 50
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 54
    goto :goto_1

    .line 57
    :cond_1
    move v2, v1

    .line 58
    :goto_1
    if-nez p1, :cond_2

    .line 59
    if-eqz v2, :cond_3

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 63
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 65
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 67
    invoke-static {p1, v0, p0}, Lcom/google/android/material/textfield/IconHelper;->refreshIconDrawableState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 69
    :cond_3
    return-void
    .line 72
.end method

.method public final setEndIconMode(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 7
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 15
    if-eqz v2, :cond_1

    .line 17
    new-instance v3, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    .line 19
    invoke-direct {v3, v1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;)V

    .line 21
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->tearDown()V

    .line 30
    iput p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    .line 33
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    .line 35
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 44
    if-nez v2, :cond_a

    .line 45
    const/4 v0, 0x1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    move v2, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v2, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconVisible(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 56
    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconDelegates:Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

    .line 60
    iget v3, v3, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->customEndIconDrawableId:I

    .line 62
    if-nez v3, :cond_3

    .line 64
    invoke-virtual {v2}, Lcom/google/android/material/textfield/EndIconDelegate;->getIconDrawableResId()I

    .line 66
    move-result v3

    .line 69
    :cond_3
    if-eqz v3, :cond_4

    .line 70
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v4

    .line 75
    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 76
    move-result-object v3

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move-object v3, v1

    .line 81
    :goto_1
    iget-object v4, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 82
    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    if-eqz v3, :cond_5

    .line 87
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 89
    iget-object v4, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 91
    iget-object v5, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 93
    iget-object v6, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 95
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 97
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 100
    iget-object v4, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 102
    iget-object v5, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 104
    invoke-static {v3, v4, v5}, Lcom/google/android/material/textfield/IconHelper;->refreshIconDrawableState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 106
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/material/textfield/EndIconDelegate;->getIconContentDescriptionResId()I

    .line 109
    move-result v3

    .line 112
    if-eqz v3, :cond_6

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v1

    .line 118
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 119
    move-result-object v1

    .line 122
    :cond_6
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 123
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    .line 125
    move-result-object v3

    .line 128
    if-eq v3, v1, :cond_7

    .line 129
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 131
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/material/textfield/EndIconDelegate;->isIconCheckable()Z

    .line 136
    move-result v1

    .line 139
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 140
    invoke-virtual {v3, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 142
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 145
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 147
    move-result v1

    .line 150
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/EndIconDelegate;->isBoxBackgroundModeSupported(I)Z

    .line 151
    move-result v1

    .line 154
    if-eqz v1, :cond_9

    .line 155
    invoke-virtual {v2}, Lcom/google/android/material/textfield/EndIconDelegate;->setUp()V

    .line 157
    invoke-virtual {v2}, Lcom/google/android/material/textfield/EndIconDelegate;->getTouchExplorationStateChangeListener()Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;

    .line 160
    move-result-object p1

    .line 163
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->addTouchExplorationStateChangeListenerIfNeeded()V

    .line 166
    invoke-virtual {v2}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnIconClickListener()Landroid/view/View$OnClickListener;

    .line 169
    move-result-object p1

    .line 172
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 173
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 175
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-static {v1, v3}, Lcom/google/android/material/textfield/IconHelper;->setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    .line 183
    if-eqz p1, :cond_8

    .line 185
    invoke-virtual {v2, p1}, Lcom/google/android/material/textfield/EndIconDelegate;->onEditTextAttached(Landroid/widget/EditText;)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/EndCompoundLayout;->setOnFocusChangeListenersIfNeeded(Lcom/google/android/material/textfield/EndIconDelegate;)V

    .line 190
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 193
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 195
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 197
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 199
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshIconState(Z)V

    .line 204
    return-void

    .line 207
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "The current box background mode "

    .line 212
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 217
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 219
    move-result p0

    .line 222
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string p0, " is not supported by the end icon mode "

    .line 226
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object p0

    .line 237
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 238
    throw v0

    .line 241
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    move-result-object p0

    .line 245
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 246
    throw v1
    .line 249
.end method

.method public final setEndIconVisible(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    .line 2
    move-result v0

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x8

    .line 14
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateEndLayoutVisibility()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateSuffixTextViewPadding()V

    .line 22
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    .line 27
    :cond_1
    return-void
    .line 30
.end method

.method public final setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateErrorIconVisibility()V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    .line 14
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 16
    invoke-static {p1, v0, v1, p0}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    return-void
    .line 21
.end method

.method public final setOnFocusChangeListenersIfNeeded(Lcom/google/android/material/textfield/EndIconDelegate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnIconViewFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 22
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnIconViewFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 34
    :cond_2
    return-void
    .line 37
.end method

.method public final updateEndLayoutVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconFrame:Landroid/widget/FrameLayout;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    .line 6
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    const/4 v3, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isErrorIconVisible()Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    move v1, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->hintExpanded:Z

    .line 31
    if-nez v0, :cond_1

    .line 33
    move v0, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v2

    .line 37
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    .line 38
    move-result v1

    .line 41
    if-nez v1, :cond_3

    .line 42
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isErrorIconVisible()Z

    .line 44
    move-result v1

    .line 47
    if-nez v1, :cond_3

    .line 48
    if-nez v0, :cond_2

    .line 50
    goto :goto_2

    .line 52
    :cond_2
    move v0, v3

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 55
    :goto_3
    if-eqz v0, :cond_4

    .line 56
    move v2, v3

    .line 58
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    return-void
    .line 62
.end method

.method public final updateErrorIconVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 12
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 14
    iget-boolean v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    .line 16
    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowError()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v2

    .line 28
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    move v0, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v0, 0x8

    .line 35
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateEndLayoutVisibility()V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateSuffixTextViewPadding()V

    .line 43
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    .line 46
    if-eqz v0, :cond_2

    .line 48
    goto :goto_2

    .line 50
    :cond_2
    move v1, v2

    .line 51
    :goto_2
    if-nez v1, :cond_3

    .line 52
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    .line 56
    :cond_3
    return-void
    .line 59
.end method

.method public final updateSuffixTextViewPadding()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isErrorIconVisible()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 22
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 24
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 26
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    .line 28
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 33
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v2

    .line 43
    const v3, 0x7f070768    # @dimen/material_input_text_to_prefix_suffix_padding '2.0dp'

    .line 44
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v2

    .line 50
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 51
    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 53
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    .line 55
    move-result v3

    .line 58
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 59
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 61
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    .line 63
    move-result p0

    .line 66
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 67
    invoke-static {v1, v2, v3, v0, p0}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 69
    return-void
    .line 72
.end method

.method public final updateSuffixTextVisibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    .line 8
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    iget-boolean v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->hintExpanded:Z

    .line 13
    if-nez v1, :cond_0

    .line 15
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x8

    .line 19
    :goto_0
    if-eq v0, v1, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 23
    move-result-object v0

    .line 26
    if-nez v1, :cond_1

    .line 27
    const/4 v2, 0x1

    .line 29
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/EndIconDelegate;->onSuffixVisibilityChanged(Z)V

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateEndLayoutVisibility()V

    .line 33
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    .line 43
    return-void
    .line 46
.end method
