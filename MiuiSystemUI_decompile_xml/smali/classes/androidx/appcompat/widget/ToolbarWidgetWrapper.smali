.class public final Landroidx/appcompat/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/appcompat/widget/DecorToolbar;


# instance fields
.field public mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public mCustomView:Landroid/view/View;

.field public mDefaultNavigationContentDescription:I

.field public mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field public mDisplayOpts:I

.field public mHomeDescription:Ljava/lang/CharSequence;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLogo:Landroid/graphics/drawable/Drawable;

.field public mMenuPrepared:Z

.field public mNavIcon:Landroid/graphics/drawable/Drawable;

.field public mSubtitle:Ljava/lang/CharSequence;

.field public mTabView:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleSet:Z

.field public final mToolbar:Landroidx/appcompat/widget/Toolbar;

.field public mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 10
    move-result-object v1

    .line 13
    iput-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 16
    move-result-object v1

    .line 19
    iput-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 20
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 22
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v0

    .line 29
    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 30
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v1

    .line 35
    iput-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 41
    sget-object v3, Landroidx/appcompat/R$styleable;->ActionBar:[I

    .line 42
    const v4, 0x7f040038    # @attr/actionBarStyle

    .line 44
    const/4 v5, 0x0

    .line 47
    invoke-static {v1, v5, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    .line 48
    move-result-object v1

    .line 51
    const/16 v3, 0x28

    .line 52
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object v3

    .line 57
    iput-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    const/16 v3, 0x39

    .line 60
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 62
    move-result-object v3

    .line 65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v4

    .line 69
    if-nez v4, :cond_1

    .line 70
    iput-boolean v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 72
    iput-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 74
    iget v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 76
    and-int/lit8 v2, v2, 0x8

    .line 78
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    iget-boolean v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 85
    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 89
    move-result-object v2

    .line 92
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 93
    :cond_1
    const/16 v2, 0x36

    .line 96
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 98
    move-result-object v2

    .line 101
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    move-result v3

    .line 105
    if-nez v3, :cond_2

    .line 106
    iput-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 108
    iget v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 110
    and-int/lit8 v3, v3, 0x8

    .line 112
    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_2
    const/16 v2, 0x2d

    .line 119
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 121
    move-result-object v2

    .line 124
    if-eqz v2, :cond_3

    .line 125
    iput-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 129
    :cond_3
    const/16 v2, 0x2a

    .line 132
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 134
    move-result-object v2

    .line 137
    if-eqz v2, :cond_4

    .line 138
    iput-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 142
    :cond_4
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 145
    if-nez v2, :cond_6

    .line 147
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 149
    if-eqz v2, :cond_6

    .line 151
    iput-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 153
    iget v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 155
    and-int/lit8 v3, v3, 0x4

    .line 157
    if-eqz v3, :cond_5

    .line 159
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 161
    goto :goto_1

    .line 164
    :cond_5
    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_6
    :goto_1
    const/16 v2, 0x20

    .line 168
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 170
    move-result v2

    .line 173
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 174
    const/16 v2, 0x1e

    .line 177
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 179
    move-result v2

    .line 182
    if-eqz v2, :cond_9

    .line 183
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 185
    move-result-object v3

    .line 188
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 189
    move-result-object v3

    .line 192
    invoke-virtual {v3, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 193
    move-result-object v2

    .line 196
    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 197
    if-eqz v3, :cond_7

    .line 199
    iget v4, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 201
    and-int/lit8 v4, v4, 0x10

    .line 203
    if-eqz v4, :cond_7

    .line 205
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 207
    :cond_7
    iput-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 210
    if-eqz v2, :cond_8

    .line 212
    iget v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 214
    and-int/lit8 v3, v3, 0x10

    .line 216
    if-eqz v3, :cond_8

    .line 218
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    :cond_8
    iget v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 223
    or-int/lit8 v2, v2, 0x10

    .line 225
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 227
    :cond_9
    iget-object v2, v1, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 230
    const/16 v3, 0x26

    .line 232
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 234
    move-result v2

    .line 237
    if-lez v2, :cond_a

    .line 238
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 240
    move-result-object v3

    .line 243
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 244
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    :cond_a
    const/16 v2, 0x1c

    .line 249
    const/4 v3, -0x1

    .line 251
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    .line 252
    move-result v2

    .line 255
    const/16 v4, 0x18

    .line 256
    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    .line 258
    move-result v3

    .line 261
    if-gez v2, :cond_b

    .line 262
    if-ltz v3, :cond_c

    .line 264
    :cond_b
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 266
    move-result v2

    .line 269
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 270
    move-result v3

    .line 273
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 274
    :cond_c
    const/16 v2, 0x3c

    .line 277
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 279
    move-result v2

    .line 282
    if-eqz v2, :cond_d

    .line 283
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 285
    move-result-object v3

    .line 288
    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 289
    :cond_d
    const/16 v2, 0x37

    .line 292
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 294
    move-result v2

    .line 297
    if-eqz v2, :cond_e

    .line 298
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 300
    move-result-object v3

    .line 303
    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 304
    :cond_e
    const/16 v2, 0x31

    .line 307
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 309
    move-result v0

    .line 312
    if-eqz v0, :cond_f

    .line 313
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 315
    :cond_f
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 318
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 321
    const v1, 0x7f13000e    # @string/abc_action_bar_up_description 'Navigate up'

    .line 323
    if-ne v1, v0, :cond_10

    .line 326
    goto :goto_3

    .line 328
    :cond_10
    iput v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 329
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 331
    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 335
    move-result v0

    .line 338
    if-eqz v0, :cond_13

    .line 339
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 341
    if-nez v0, :cond_11

    .line 343
    goto :goto_2

    .line 345
    :cond_11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 346
    move-result-object v1

    .line 349
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 350
    move-result-object v5

    .line 353
    :goto_2
    iput-object v5, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 354
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 356
    and-int/lit8 v0, v0, 0x4

    .line 358
    if-eqz v0, :cond_13

    .line 360
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 362
    move-result v0

    .line 365
    if-eqz v0, :cond_12

    .line 366
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 368
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 370
    goto :goto_3

    .line 373
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 374
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 376
    :cond_13
    :goto_3
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 379
    move-result-object v0

    .line 382
    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 383
    new-instance v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;

    .line 385
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;-><init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;)V

    .line 387
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    return-void
    .line 393
.end method


# virtual methods
.method public final setDisplayOptions(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 2
    xor-int/2addr v0, p1

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 5
    if-eqz v0, :cond_9

    .line 7
    and-int/lit8 v1, v0, 0x4

    .line 9
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 12
    if-eqz v1, :cond_4

    .line 14
    and-int/lit8 v1, p1, 0x4

    .line 16
    if-eqz v1, :cond_1

    .line 18
    and-int/lit8 v1, p1, 0x4

    .line 20
    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 32
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 40
    :cond_1
    :goto_0
    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 43
    and-int/lit8 v1, v1, 0x4

    .line 45
    if-eqz v1, :cond_3

    .line 47
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 49
    if-eqz v1, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    :goto_1
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 56
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_4
    :goto_2
    and-int/lit8 v1, v0, 0x3

    .line 63
    if-eqz v1, :cond_5

    .line 65
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 67
    :cond_5
    and-int/lit8 v1, v0, 0x8

    .line 70
    if-eqz v1, :cond_7

    .line 72
    and-int/lit8 v1, p1, 0x8

    .line 74
    if-eqz v1, :cond_6

    .line 76
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 85
    goto :goto_3

    .line 88
    :cond_6
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 92
    :cond_7
    :goto_3
    and-int/lit8 v0, v0, 0x10

    .line 95
    if-eqz v0, :cond_9

    .line 97
    iget-object p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 99
    if-eqz p0, :cond_9

    .line 101
    and-int/lit8 p1, p1, 0x10

    .line 103
    if-eqz p1, :cond_8

    .line 105
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    goto :goto_4

    .line 110
    :cond_8
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    :cond_9
    :goto_4
    return-void
    .line 114
.end method

.method public final updateToolbarLogo()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 2
    and-int/lit8 v1, v0, 0x2

    .line 4
    if-eqz v1, :cond_2

    .line 6
    and-int/lit8 v0, v0, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    goto :goto_0

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 26
    return-void
    .line 29
.end method
