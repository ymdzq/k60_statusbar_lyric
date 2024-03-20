.class public final Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAsyncFontPending:Z

.field public final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field public mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field public mFontTypeface:Landroid/graphics/Typeface;

.field public mFontWeight:I

.field public mStyle:I

.field public final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 6
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 9
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 11
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 13
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    .line 15
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 18
    return-void
    .line 20
.end method

.method public static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 3
    invoke-virtual {v0, p2, p0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 5
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    new-instance p1, Landroidx/appcompat/widget/TintInfo;

    .line 12
    invoke-direct {p1}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    .line 14
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 18
    iput-object p0, p1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 20
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1

    .line 26
    throw p0
    .line 27
.end method


# virtual methods
.method public final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    .line 8
    move-result-object p0

    .line 11
    invoke-static {p1, p2, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final applyCompoundDrawablesTints()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 14
    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 28
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 30
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 36
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 38
    aget-object v4, v0, v1

    .line 41
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 43
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 45
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 51
    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 53
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 56
    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 60
    if-eqz v0, :cond_3

    .line 62
    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 64
    move-result-object v0

    .line 67
    aget-object v2, v0, v2

    .line 68
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 70
    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 72
    aget-object v0, v0, v1

    .line 75
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 77
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 79
    :cond_3
    return-void
    .line 82
.end method

.method public final getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
    .line 10
.end method

.method public final getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
    .line 10
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    move/from16 v9, p2

    .line 6
    iget-object v10, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v11

    .line 13
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 14
    move-result-object v12

    .line 17
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 18
    invoke-static {v11, v8, v3, v9}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    .line 20
    move-result-object v13

    .line 23
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 27
    iget-object v5, v13, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 28
    const/4 v7, 0x0

    .line 30
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 31
    move-object v1, v10

    .line 33
    move-object/from16 v4, p1

    .line 34
    move/from16 v6, p2

    .line 36
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 38
    const/4 v14, -0x1

    .line 41
    invoke-virtual {v13, v7, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 42
    move-result v1

    .line 45
    const/4 v15, 0x3

    .line 46
    invoke-virtual {v13, v15}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 47
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v13, v15, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 53
    move-result v2

    .line 56
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 57
    move-result-object v2

    .line 60
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 61
    :cond_0
    const/4 v6, 0x1

    .line 63
    invoke-virtual {v13, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v13, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 70
    move-result v2

    .line 73
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 74
    move-result-object v2

    .line 77
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 78
    :cond_1
    const/4 v5, 0x4

    .line 80
    invoke-virtual {v13, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 81
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v13, v5, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 87
    move-result v2

    .line 90
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 91
    move-result-object v2

    .line 94
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 95
    :cond_2
    const/4 v4, 0x2

    .line 97
    invoke-virtual {v13, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 98
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {v13, v4, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 104
    move-result v2

    .line 107
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 108
    move-result-object v2

    .line 111
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 112
    :cond_3
    const/4 v3, 0x5

    .line 114
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 115
    move-result v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    invoke-virtual {v13, v3, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 121
    move-result v2

    .line 124
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 125
    move-result-object v2

    .line 128
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 129
    :cond_4
    const/4 v2, 0x6

    .line 131
    invoke-virtual {v13, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 132
    move-result v16

    .line 135
    if-eqz v16, :cond_5

    .line 136
    invoke-virtual {v13, v2, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 138
    move-result v3

    .line 141
    invoke-static {v11, v12, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 142
    move-result-object v3

    .line 145
    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 146
    :cond_5
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 148
    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 151
    move-result-object v3

    .line 154
    instance-of v3, v3, Landroid/text/method/PasswordTransformationMethod;

    .line 155
    sget-object v13, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 157
    const/16 v15, 0xf

    .line 159
    const/4 v6, 0x0

    .line 161
    const/16 v2, 0xe

    .line 162
    if-eq v1, v14, :cond_9

    .line 164
    new-instance v4, Landroidx/appcompat/widget/TintTypedArray;

    .line 166
    invoke-virtual {v11, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 168
    move-result-object v1

    .line 171
    invoke-direct {v4, v11, v1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 172
    if-nez v3, :cond_6

    .line 175
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 177
    move-result v1

    .line 180
    if-eqz v1, :cond_6

    .line 181
    invoke-virtual {v4, v2, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 183
    move-result v1

    .line 186
    const/16 v18, 0x1

    .line 187
    goto :goto_0

    .line 189
    :cond_6
    move v1, v7

    .line 190
    move/from16 v18, v1

    .line 191
    :goto_0
    invoke-virtual {v0, v11, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 193
    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 196
    move-result v19

    .line 199
    if-eqz v19, :cond_7

    .line 200
    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 202
    move-result-object v19

    .line 205
    goto :goto_1

    .line 206
    :cond_7
    move-object/from16 v19, v6

    .line 207
    :goto_1
    const/16 v5, 0xd

    .line 209
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 211
    move-result v17

    .line 214
    if-eqz v17, :cond_8

    .line 215
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 217
    move-result-object v20

    .line 220
    goto :goto_2

    .line 221
    :cond_8
    move-object/from16 v20, v6

    .line 222
    :goto_2
    invoke-virtual {v4}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 224
    goto :goto_3

    .line 227
    :cond_9
    move-object/from16 v19, v6

    .line 228
    move-object/from16 v20, v19

    .line 230
    move v1, v7

    .line 232
    move/from16 v18, v1

    .line 233
    :goto_3
    new-instance v4, Landroidx/appcompat/widget/TintTypedArray;

    .line 235
    invoke-virtual {v11, v8, v13, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 237
    move-result-object v5

    .line 240
    invoke-direct {v4, v11, v5}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 241
    if-nez v3, :cond_a

    .line 244
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 246
    move-result v5

    .line 249
    if-eqz v5, :cond_a

    .line 250
    invoke-virtual {v4, v2, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 252
    move-result v1

    .line 255
    const/16 v18, 0x1

    .line 256
    :cond_a
    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 258
    move-result v2

    .line 261
    if-eqz v2, :cond_b

    .line 262
    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 264
    move-result-object v19

    .line 267
    :cond_b
    const/16 v13, 0xd

    .line 268
    invoke-virtual {v4, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 270
    move-result v2

    .line 273
    if-eqz v2, :cond_c

    .line 274
    invoke-virtual {v4, v13}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 276
    move-result-object v20

    .line 279
    :cond_c
    move-object/from16 v2, v20

    .line 280
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 282
    move-result v5

    .line 285
    if-eqz v5, :cond_d

    .line 286
    invoke-virtual {v4, v7, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 288
    move-result v5

    .line 291
    if-nez v5, :cond_d

    .line 292
    const/4 v5, 0x0

    .line 294
    invoke-virtual {v10, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 295
    :cond_d
    invoke-virtual {v0, v11, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 298
    invoke-virtual {v4}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 301
    if-nez v3, :cond_e

    .line 304
    if-eqz v18, :cond_e

    .line 306
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 308
    :cond_e
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 311
    if-eqz v1, :cond_10

    .line 313
    iget v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 315
    if-ne v3, v14, :cond_f

    .line 317
    iget v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 319
    invoke-virtual {v10, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 321
    goto :goto_4

    .line 324
    :cond_f
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 325
    :cond_10
    :goto_4
    if-eqz v2, :cond_11

    .line 328
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 330
    :cond_11
    if-eqz v19, :cond_12

    .line 333
    invoke-static/range {v19 .. v19}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 335
    move-result-object v1

    .line 338
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    .line 339
    :cond_12
    sget-object v5, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 342
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 344
    iget-object v3, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 346
    invoke-virtual {v3, v8, v5, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 348
    move-result-object v2

    .line 351
    iget-object v0, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 352
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 354
    move-result-object v1

    .line 357
    const/16 v17, 0x0

    .line 358
    move-object/from16 p0, v2

    .line 360
    const/4 v13, 0x6

    .line 362
    move-object v2, v5

    .line 363
    move-object/from16 v16, v3

    .line 364
    const/4 v15, 0x5

    .line 366
    move-object/from16 v3, p1

    .line 367
    move-object v14, v4

    .line 369
    const/4 v13, 0x2

    .line 370
    move-object/from16 v4, p0

    .line 371
    move-object/from16 v21, v5

    .line 373
    const/4 v13, 0x4

    .line 375
    move/from16 v5, p2

    .line 376
    const/4 v9, 0x1

    .line 378
    move/from16 v6, v17

    .line 379
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 381
    move-object/from16 v0, p0

    .line 384
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 386
    move-result v1

    .line 389
    if-eqz v1, :cond_13

    .line 390
    invoke-virtual {v0, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 392
    move-result v1

    .line 395
    iput v1, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 396
    :cond_13
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 398
    move-result v1

    .line 401
    const/high16 v2, -0x40800000    # -1.0f

    .line 402
    if-eqz v1, :cond_14

    .line 404
    invoke-virtual {v0, v13, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 406
    move-result v1

    .line 409
    goto :goto_5

    .line 410
    :cond_14
    move v1, v2

    .line 411
    :goto_5
    const/4 v3, 0x2

    .line 412
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 413
    move-result v4

    .line 416
    if-eqz v4, :cond_15

    .line 417
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 419
    move-result v4

    .line 422
    goto :goto_6

    .line 423
    :cond_15
    move v4, v2

    .line 424
    :goto_6
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 425
    move-result v3

    .line 428
    if-eqz v3, :cond_16

    .line 429
    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 431
    move-result v3

    .line 434
    goto :goto_7

    .line 435
    :cond_16
    move v3, v2

    .line 436
    :goto_7
    const/4 v5, 0x3

    .line 437
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 438
    move-result v6

    .line 441
    if-eqz v6, :cond_19

    .line 442
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 444
    move-result v6

    .line 447
    if-lez v6, :cond_19

    .line 448
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 450
    move-result-object v5

    .line 453
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 454
    move-result-object v5

    .line 457
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    .line 458
    move-result v6

    .line 461
    new-array v13, v6, [I

    .line 462
    if-lez v6, :cond_18

    .line 464
    move v15, v7

    .line 466
    :goto_8
    if-ge v15, v6, :cond_17

    .line 467
    const/4 v7, -0x1

    .line 469
    invoke-virtual {v5, v15, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 470
    move-result v20

    .line 473
    aput v20, v13, v15

    .line 474
    add-int/lit8 v15, v15, 0x1

    .line 476
    const/4 v7, 0x0

    .line 478
    goto :goto_8

    .line 479
    :cond_17
    invoke-static {v13}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    .line 480
    move-result-object v6

    .line 483
    iput-object v6, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 484
    invoke-virtual {v14}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    .line 486
    :cond_18
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 489
    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 492
    invoke-virtual {v14}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    .line 495
    move-result v0

    .line 498
    const/high16 v5, 0x3f800000    # 1.0f

    .line 499
    if-eqz v0, :cond_1e

    .line 501
    iget v0, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 503
    if-ne v0, v9, :cond_1f

    .line 505
    iget-boolean v0, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 507
    if-nez v0, :cond_1d

    .line 509
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 511
    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 515
    move-result-object v0

    .line 518
    cmpl-float v6, v4, v2

    .line 519
    if-nez v6, :cond_1a

    .line 521
    const/high16 v4, 0x41400000    # 12.0f

    .line 523
    const/4 v6, 0x2

    .line 525
    invoke-static {v6, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 526
    move-result v4

    .line 529
    goto :goto_9

    .line 530
    :cond_1a
    const/4 v6, 0x2

    .line 531
    :goto_9
    cmpl-float v7, v3, v2

    .line 532
    if-nez v7, :cond_1b

    .line 534
    const/high16 v3, 0x42e00000    # 112.0f

    .line 536
    invoke-static {v6, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 538
    move-result v3

    .line 541
    :cond_1b
    cmpl-float v0, v1, v2

    .line 542
    if-nez v0, :cond_1c

    .line 544
    move v1, v5

    .line 546
    :cond_1c
    invoke-virtual {v14, v4, v3, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 547
    :cond_1d
    invoke-virtual {v14}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    .line 550
    goto :goto_a

    .line 553
    :cond_1e
    const/4 v0, 0x0

    .line 554
    iput v0, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 555
    :cond_1f
    :goto_a
    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    .line 557
    iget v0, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 559
    if-eqz v0, :cond_21

    .line 561
    iget-object v0, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 563
    array-length v1, v0

    .line 565
    if-lez v1, :cond_21

    .line 566
    invoke-virtual {v10}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    .line 568
    move-result v1

    .line 571
    int-to-float v1, v1

    .line 572
    cmpl-float v1, v1, v2

    .line 573
    if-eqz v1, :cond_20

    .line 575
    iget v0, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 577
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 579
    move-result v0

    .line 582
    iget v1, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 583
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 585
    move-result v1

    .line 588
    iget v2, v14, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 589
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 591
    move-result v2

    .line 594
    const/4 v3, 0x0

    .line 595
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 596
    goto :goto_b

    .line 599
    :cond_20
    const/4 v3, 0x0

    .line 600
    invoke-virtual {v10, v0, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 601
    :cond_21
    :goto_b
    new-instance v0, Landroidx/appcompat/widget/TintTypedArray;

    .line 604
    move-object/from16 v1, v21

    .line 606
    invoke-virtual {v11, v8, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 608
    move-result-object v1

    .line 611
    invoke-direct {v0, v11, v1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 612
    const/16 v1, 0x8

    .line 615
    const/4 v2, -0x1

    .line 617
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 618
    move-result v1

    .line 621
    if-eq v1, v2, :cond_22

    .line 622
    invoke-virtual {v12, v1, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 624
    move-result-object v6

    .line 627
    const/16 v1, 0xd

    .line 628
    goto :goto_c

    .line 630
    :cond_22
    const/16 v1, 0xd

    .line 631
    const/4 v6, 0x0

    .line 633
    :goto_c
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 634
    move-result v1

    .line 637
    if-eq v1, v2, :cond_23

    .line 638
    invoke-virtual {v12, v1, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 640
    move-result-object v1

    .line 643
    goto :goto_d

    .line 644
    :cond_23
    const/4 v1, 0x0

    .line 645
    :goto_d
    const/16 v3, 0x9

    .line 646
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 648
    move-result v3

    .line 651
    if-eq v3, v2, :cond_24

    .line 652
    invoke-virtual {v12, v3, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 654
    move-result-object v3

    .line 657
    goto :goto_e

    .line 658
    :cond_24
    const/4 v3, 0x0

    .line 659
    :goto_e
    const/4 v4, 0x6

    .line 660
    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 661
    move-result v4

    .line 664
    if-eq v4, v2, :cond_25

    .line 665
    invoke-virtual {v12, v4, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 667
    move-result-object v4

    .line 670
    goto :goto_f

    .line 671
    :cond_25
    const/4 v4, 0x0

    .line 672
    :goto_f
    const/16 v7, 0xa

    .line 673
    invoke-virtual {v0, v7, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 675
    move-result v7

    .line 678
    if-eq v7, v2, :cond_26

    .line 679
    invoke-virtual {v12, v7, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 681
    move-result-object v7

    .line 684
    goto :goto_10

    .line 685
    :cond_26
    const/4 v7, 0x0

    .line 686
    :goto_10
    const/4 v8, 0x7

    .line 687
    invoke-virtual {v0, v8, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 688
    move-result v8

    .line 691
    if-eq v8, v2, :cond_27

    .line 692
    invoke-virtual {v12, v8, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 694
    move-result-object v2

    .line 697
    goto :goto_11

    .line 698
    :cond_27
    const/4 v2, 0x0

    .line 699
    :goto_11
    if-nez v7, :cond_32

    .line 700
    if-eqz v2, :cond_28

    .line 702
    goto :goto_19

    .line 704
    :cond_28
    if-nez v6, :cond_29

    .line 705
    if-nez v1, :cond_29

    .line 707
    if-nez v3, :cond_29

    .line 709
    if-eqz v4, :cond_37

    .line 711
    :cond_29
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 713
    move-result-object v2

    .line 716
    const/4 v7, 0x0

    .line 717
    aget-object v8, v2, v7

    .line 718
    if-nez v8, :cond_2f

    .line 720
    const/4 v11, 0x2

    .line 722
    aget-object v12, v2, v11

    .line 723
    if-eqz v12, :cond_2a

    .line 725
    goto :goto_16

    .line 727
    :cond_2a
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 728
    move-result-object v2

    .line 731
    if-eqz v6, :cond_2b

    .line 732
    goto :goto_12

    .line 734
    :cond_2b
    aget-object v6, v2, v7

    .line 735
    :goto_12
    if-eqz v1, :cond_2c

    .line 737
    goto :goto_13

    .line 739
    :cond_2c
    aget-object v1, v2, v9

    .line 740
    :goto_13
    if-eqz v3, :cond_2d

    .line 742
    goto :goto_14

    .line 744
    :cond_2d
    const/4 v3, 0x2

    .line 745
    aget-object v3, v2, v3

    .line 746
    :goto_14
    if-eqz v4, :cond_2e

    .line 748
    goto :goto_15

    .line 750
    :cond_2e
    const/4 v4, 0x3

    .line 751
    aget-object v4, v2, v4

    .line 752
    :goto_15
    invoke-virtual {v10, v6, v1, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 754
    goto :goto_1e

    .line 757
    :cond_2f
    :goto_16
    if-eqz v1, :cond_30

    .line 758
    goto :goto_17

    .line 760
    :cond_30
    aget-object v1, v2, v9

    .line 761
    :goto_17
    const/4 v3, 0x2

    .line 763
    aget-object v3, v2, v3

    .line 764
    if-eqz v4, :cond_31

    .line 766
    goto :goto_18

    .line 768
    :cond_31
    const/4 v4, 0x3

    .line 769
    aget-object v4, v2, v4

    .line 770
    :goto_18
    invoke-virtual {v10, v8, v1, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 772
    goto :goto_1e

    .line 775
    :cond_32
    :goto_19
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 776
    move-result-object v3

    .line 779
    if-eqz v7, :cond_33

    .line 780
    goto :goto_1a

    .line 782
    :cond_33
    const/4 v6, 0x0

    .line 783
    aget-object v7, v3, v6

    .line 784
    :goto_1a
    if-eqz v1, :cond_34

    .line 786
    goto :goto_1b

    .line 788
    :cond_34
    aget-object v1, v3, v9

    .line 789
    :goto_1b
    if-eqz v2, :cond_35

    .line 791
    goto :goto_1c

    .line 793
    :cond_35
    const/4 v2, 0x2

    .line 794
    aget-object v2, v3, v2

    .line 795
    :goto_1c
    if-eqz v4, :cond_36

    .line 797
    goto :goto_1d

    .line 799
    :cond_36
    const/4 v4, 0x3

    .line 800
    aget-object v4, v3, v4

    .line 801
    :goto_1d
    invoke-virtual {v10, v7, v1, v2, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 803
    :cond_37
    :goto_1e
    const/16 v1, 0xb

    .line 806
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 808
    move-result v2

    .line 811
    if-eqz v2, :cond_38

    .line 812
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 814
    move-result-object v1

    .line 817
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 818
    :cond_38
    const/16 v1, 0xc

    .line 821
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 823
    move-result v2

    .line 826
    if-eqz v2, :cond_39

    .line 827
    const/4 v2, -0x1

    .line 829
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 830
    move-result v1

    .line 833
    const/4 v3, 0x0

    .line 834
    invoke-static {v1, v3}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 835
    move-result-object v1

    .line 838
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 839
    goto :goto_1f

    .line 842
    :cond_39
    const/4 v2, -0x1

    .line 843
    :goto_1f
    const/16 v1, 0xf

    .line 844
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 846
    move-result v1

    .line 849
    const/16 v3, 0x12

    .line 850
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 852
    move-result v3

    .line 855
    const/16 v4, 0x13

    .line 856
    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 858
    move-result v4

    .line 861
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 862
    if-eq v1, v2, :cond_3a

    .line 865
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    .line 867
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 870
    :cond_3a
    if-eq v3, v2, :cond_3d

    .line 873
    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    .line 875
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 878
    move-result-object v0

    .line 881
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 882
    move-result-object v0

    .line 885
    invoke-virtual {v10}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 886
    move-result v1

    .line 889
    if-eqz v1, :cond_3b

    .line 890
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 892
    goto :goto_20

    .line 894
    :cond_3b
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 895
    :goto_20
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 897
    move-result v1

    .line 900
    if-le v3, v1, :cond_3c

    .line 901
    sub-int/2addr v3, v0

    .line 903
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 904
    move-result v0

    .line 907
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    .line 908
    move-result v1

    .line 911
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    .line 912
    move-result v2

    .line 915
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 916
    :cond_3c
    const/4 v0, -0x1

    .line 919
    goto :goto_21

    .line 920
    :cond_3d
    move v0, v2

    .line 921
    :goto_21
    if-eq v4, v0, :cond_3e

    .line 922
    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    .line 924
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 927
    move-result-object v0

    .line 930
    const/4 v1, 0x0

    .line 931
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 932
    move-result v0

    .line 935
    if-eq v4, v0, :cond_3e

    .line 936
    sub-int/2addr v4, v0

    .line 938
    int-to-float v0, v4

    .line 939
    invoke-virtual {v10, v0, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 940
    :cond_3e
    return-void
    .line 943
.end method

.method public final onSetTextAppearance(ILandroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 2
    new-instance v1, Landroidx/appcompat/widget/TintTypedArray;

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 9
    invoke-direct {v1, p2, p1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    const/16 p1, 0xe

    .line 13
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 15
    move-result v0

    .line 18
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 19
    const/4 v3, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v1, p1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 24
    move-result p1

    .line 27
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    :cond_0
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    const/4 p1, -0x1

    .line 37
    invoke-virtual {v1, v3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 38
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    const/4 p1, 0x0

    .line 44
    invoke-virtual {v2, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    :cond_1
    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 48
    const/16 p1, 0xd

    .line 51
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 53
    move-result p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 65
    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 68
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 71
    if-eqz p1, :cond_3

    .line 73
    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 75
    invoke-virtual {v2, p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 77
    :cond_3
    return-void
    .line 80
.end method

.method public final setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 13
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 22
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 24
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 26
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 28
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 30
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 32
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 34
    return-void
    .line 36
.end method

.method public final setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 13
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 22
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 24
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 26
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 28
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 30
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 32
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 34
    return-void
    .line 36
.end method

.method public final updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 5
    move-result v0

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 9
    const/16 v0, 0xb

    .line 11
    const/4 v2, -0x1

    .line 13
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 14
    move-result v0

    .line 17
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 18
    const/4 v3, 0x0

    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 23
    and-int/2addr v0, v1

    .line 25
    or-int/2addr v0, v3

    .line 26
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 27
    :cond_0
    const/16 v0, 0xa

    .line 29
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 31
    move-result v4

    .line 34
    const/16 v5, 0xc

    .line 35
    const/4 v6, 0x1

    .line 37
    if-nez v4, :cond_6

    .line 38
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 40
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 47
    move-result p1

    .line 50
    if-eqz p1, :cond_5

    .line 51
    iput-boolean v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 53
    invoke-virtual {p2, v6, v6}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 55
    move-result p1

    .line 58
    if-eq p1, v6, :cond_4

    .line 59
    if-eq p1, v1, :cond_3

    .line 61
    const/4 p2, 0x3

    .line 63
    if-eq p1, p2, :cond_2

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 67
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 72
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 77
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 79
    :cond_5
    :goto_0
    return-void

    .line 81
    :cond_6
    :goto_1
    const/4 v4, 0x0

    .line 82
    iput-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 83
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 85
    move-result v4

    .line 88
    if-eqz v4, :cond_7

    .line 89
    move v0, v5

    .line 91
    :cond_7
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 92
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 96
    move-result p1

    .line 99
    if-nez p1, :cond_c

    .line 100
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 102
    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 104
    invoke-direct {p1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 106
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    .line 109
    invoke-direct {v7, p0, v4, v5, p1}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    .line 111
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 114
    invoke-virtual {p2, v0, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/appcompat/widget/AppCompatTextHelper$1;)Landroid/graphics/Typeface;

    .line 116
    move-result-object p1

    .line 119
    if-eqz p1, :cond_a

    .line 120
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 122
    if-eq v4, v2, :cond_9

    .line 124
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 126
    move-result-object p1

    .line 129
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 130
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 132
    and-int/2addr v5, v1

    .line 134
    if-eqz v5, :cond_8

    .line 135
    move v5, v6

    .line 137
    goto :goto_2

    .line 138
    :cond_8
    move v5, v3

    .line 139
    :goto_2
    invoke-static {p1, v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 140
    move-result-object p1

    .line 143
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 144
    goto :goto_3

    .line 146
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 147
    :cond_a
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 149
    if-nez p1, :cond_b

    .line 151
    move p1, v6

    .line 153
    goto :goto_4

    .line 154
    :cond_b
    move p1, v3

    .line 155
    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 158
    if-nez p1, :cond_f

    .line 160
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 165
    if-eqz p1, :cond_f

    .line 166
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 168
    if-eq p2, v2, :cond_e

    .line 170
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 172
    move-result-object p1

    .line 175
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 176
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 178
    and-int/2addr v0, v1

    .line 180
    if-eqz v0, :cond_d

    .line 181
    move v3, v6

    .line 183
    :cond_d
    invoke-static {p1, p2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 184
    move-result-object p1

    .line 187
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 188
    goto :goto_5

    .line 190
    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 191
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 193
    move-result-object p1

    .line 196
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 197
    :cond_f
    :goto_5
    return-void
    .line 199
.end method
