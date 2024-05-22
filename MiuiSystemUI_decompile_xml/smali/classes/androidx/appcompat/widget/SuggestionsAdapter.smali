.class public final Landroidx/appcompat/widget/SuggestionsAdapter;
.super Landroidx/cursoradapter/widget/CursorAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCommitIconResId:I

.field public final mDropDownLayout:I

.field public mFlagsCol:I

.field public mIconName1Col:I

.field public mIconName2Col:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mLayout:I

.field public final mOutsideDrawablesCache:Ljava/util/WeakHashMap;

.field public final mProviderContext:Landroid/content/Context;

.field public mQueryRefinement:I

.field public final mSearchView:Landroidx/appcompat/widget/SearchView;

.field public final mSearchable:Landroid/app/SearchableInfo;

.field public mText1Col:I

.field public mText2Col:I

.field public mText2UrlCol:I

.field public mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionRowLayout()I

    .line 2
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;)V

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mDropDownLayout:I

    .line 9
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mLayout:I

    .line 11
    const-string v0, "layout_inflater"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/LayoutInflater;

    .line 19
    iput-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 21
    const/4 v0, 0x1

    .line 23
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 24
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    .line 27
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    .line 29
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 31
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 33
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 35
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I

    .line 37
    iput-object p2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 39
    iput-object p3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 41
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionCommitIconResId()I

    .line 43
    move-result p2

    .line 46
    iput p2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mCommitIconResId:I

    .line 47
    iput-object p1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 49
    iput-object p4, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 51
    return-void
    .line 53
.end method

.method public static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    return-object v1

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "SuggestionsAdapter"

    .line 13
    const-string/jumbo v0, "unexpected error retrieving valid column from cursor, did the remote process die?"

    .line 15
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    return-object v1
    .line 21
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v2, p2

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    move-object v3, v0

    .line 10
    check-cast v3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    .line 11
    iget v0, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I

    .line 13
    const/4 v4, 0x0

    .line 15
    const/4 v5, -0x1

    .line 16
    if-eq v0, v5, :cond_0

    .line 17
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 19
    move-result v0

    .line 22
    move v5, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v5, v4

    .line 25
    :goto_0
    iget-object v6, v3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 26
    const/16 v7, 0x8

    .line 28
    if-eqz v6, :cond_2

    .line 30
    iget v0, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    .line 32
    invoke-static {v2, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 54
    const/4 v0, 0x2

    .line 55
    iget-object v9, v3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    .line 56
    if-eqz v9, :cond_8

    .line 58
    iget v10, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 60
    invoke-static {v2, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 62
    move-result-object v10

    .line 65
    if-eqz v10, :cond_4

    .line 66
    iget-object v11, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 68
    if-nez v11, :cond_3

    .line 70
    new-instance v11, Landroid/util/TypedValue;

    .line 72
    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 74
    iget-object v12, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 79
    move-result-object v12

    .line 82
    const v13, 0x7f04081a    # @attr/textColorSearchUrl

    .line 83
    invoke-virtual {v12, v13, v11, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 86
    iget-object v12, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v12

    .line 94
    iget v11, v11, Landroid/util/TypedValue;->resourceId:I

    .line 95
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 97
    move-result-object v11

    .line 100
    iput-object v11, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 101
    :cond_3
    new-instance v11, Landroid/text/SpannableString;

    .line 103
    invoke-direct {v11, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v15, Landroid/text/style/TextAppearanceSpan;

    .line 108
    const/4 v13, 0x0

    .line 110
    const/4 v14, 0x0

    .line 111
    const/16 v16, 0x0

    .line 112
    iget-object v12, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 114
    const/16 v17, 0x0

    .line 116
    move-object/from16 v18, v12

    .line 118
    move-object v12, v15

    .line 120
    move-object v7, v15

    .line 121
    move/from16 v15, v16

    .line 122
    move-object/from16 v16, v18

    .line 124
    invoke-direct/range {v12 .. v17}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 126
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 129
    move-result v10

    .line 132
    const/16 v12, 0x21

    .line 133
    invoke-virtual {v11, v7, v4, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 135
    goto :goto_2

    .line 138
    :cond_4
    iget v7, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    .line 139
    invoke-static {v2, v7}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 141
    move-result-object v11

    .line 144
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v7

    .line 148
    if-eqz v7, :cond_5

    .line 149
    if-eqz v6, :cond_6

    .line 151
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 153
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 156
    goto :goto_3

    .line 159
    :cond_5
    if-eqz v6, :cond_6

    .line 160
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 162
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 165
    :cond_6
    :goto_3
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v0

    .line 174
    if-eqz v0, :cond_7

    .line 175
    const/16 v7, 0x8

    .line 177
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    goto :goto_4

    .line 182
    :cond_7
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_8
    :goto_4
    iget-object v7, v3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    .line 186
    if-eqz v7, :cond_12

    .line 188
    iget v0, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 190
    const/4 v9, -0x1

    .line 192
    if-ne v0, v9, :cond_9

    .line 193
    const/4 v0, 0x0

    .line 195
    goto/16 :goto_8

    .line 196
    :cond_9
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 201
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 202
    move-result-object v0

    .line 205
    if-eqz v0, :cond_a

    .line 206
    goto/16 :goto_8

    .line 208
    :cond_a
    iget-object v0, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 210
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 212
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 216
    move-result-object v9

    .line 219
    iget-object v10, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 220
    invoke-virtual {v10, v9}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 222
    move-result v10

    .line 225
    if-eqz v10, :cond_c

    .line 226
    iget-object v0, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 228
    invoke-virtual {v0, v9}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-result-object v0

    .line 233
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 234
    if-nez v0, :cond_b

    .line 236
    const/4 v0, 0x0

    .line 238
    goto :goto_7

    .line 239
    :cond_b
    iget-object v9, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 240
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 242
    move-result-object v9

    .line 245
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 246
    move-result-object v0

    .line 249
    goto :goto_7

    .line 250
    :cond_c
    const-string v10, "SuggestionsAdapter"

    .line 251
    iget-object v11, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 253
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 255
    move-result-object v11

    .line 258
    const/16 v12, 0x80

    .line 259
    :try_start_0
    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 261
    move-result-object v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    .line 265
    move-result v13

    .line 268
    if-nez v13, :cond_d

    .line 269
    goto :goto_5

    .line 271
    :cond_d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 272
    move-result-object v14

    .line 275
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 276
    invoke-virtual {v11, v14, v13, v12}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 278
    move-result-object v11

    .line 281
    if-nez v11, :cond_e

    .line 282
    const-string v11, "Invalid icon resource "

    .line 284
    const-string v12, " for "

    .line 286
    invoke-static {v11, v13, v12}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    move-result-object v11

    .line 291
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 292
    move-result-object v0

    .line 295
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v0

    .line 302
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    goto :goto_5

    .line 306
    :catch_0
    move-exception v0

    .line 307
    move-object v11, v0

    .line 308
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    .line 309
    move-result-object v0

    .line 312
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_5
    const/4 v11, 0x0

    .line 316
    :cond_e
    if-nez v11, :cond_f

    .line 317
    const/4 v0, 0x0

    .line 319
    goto :goto_6

    .line 320
    :cond_f
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 321
    move-result-object v0

    .line 324
    :goto_6
    iget-object v10, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 325
    invoke-virtual {v10, v9, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    move-object v0, v11

    .line 330
    :goto_7
    if-eqz v0, :cond_10

    .line 331
    goto :goto_8

    .line 333
    :cond_10
    iget-object v0, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 336
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 340
    move-result-object v0

    .line 343
    :goto_8
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    if-nez v0, :cond_11

    .line 347
    const/4 v0, 0x4

    .line 349
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    goto :goto_9

    .line 353
    :cond_11
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 357
    invoke-virtual {v0, v8, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 360
    :cond_12
    :goto_9
    iget-object v0, v3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    .line 363
    if-eqz v0, :cond_15

    .line 365
    iget v7, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 367
    const/4 v9, -0x1

    .line 369
    if-ne v7, v9, :cond_13

    .line 370
    const/4 v2, 0x0

    .line 372
    goto :goto_a

    .line 373
    :cond_13
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 374
    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 378
    move-result-object v2

    .line 381
    :goto_a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    if-nez v2, :cond_14

    .line 385
    const/16 v7, 0x8

    .line 387
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    goto :goto_b

    .line 392
    :cond_14
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    invoke-virtual {v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 396
    invoke-virtual {v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 399
    :cond_15
    :goto_b
    iget v0, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 402
    iget-object v2, v3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    .line 404
    const/4 v3, 0x2

    .line 406
    if-eq v0, v3, :cond_17

    .line 407
    if-ne v0, v8, :cond_16

    .line 409
    and-int/lit8 v0, v5, 0x1

    .line 411
    if-eqz v0, :cond_16

    .line 413
    goto :goto_c

    .line 415
    :cond_16
    const/16 v1, 0x8

    .line 416
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    goto :goto_d

    .line 421
    :cond_17
    :goto_c
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 425
    move-result-object v0

    .line 428
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 429
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    :goto_d
    return-void
    .line 435
.end method

.method public final changeCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    const-string/jumbo v0, "suggest_text_1"

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 13
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    .line 14
    const-string/jumbo v0, "suggest_text_2"

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 22
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    .line 23
    const-string/jumbo v0, "suggest_text_2_url"

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 31
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 32
    const-string/jumbo v0, "suggest_icon_1"

    .line 34
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 37
    move-result v0

    .line 40
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 41
    const-string/jumbo v0, "suggest_icon_2"

    .line 43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    move-result v0

    .line 49
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 50
    const-string/jumbo v0, "suggest_flags"

    .line 52
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    move-result p1

    .line 58
    iput p1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    const-string p1, "SuggestionsAdapter"

    .line 63
    const-string v0, "error changing cursor and caching columns"

    .line 65
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_0
    :goto_0
    return-void
    .line 70
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    const-string/jumbo v1, "suggest_intent_query"

    .line 6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 9
    move-result v1

    .line 12
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    return-object v1

    .line 19
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 20
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    const-string/jumbo v1, "suggest_intent_data"

    .line 28
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 31
    move-result v1

    .line 34
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    return-object v1

    .line 41
    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 42
    invoke-virtual {p0}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    .line 44
    move-result p0

    .line 47
    if-eqz p0, :cond_3

    .line 48
    const-string/jumbo p0, "suggest_text_1"

    .line 50
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    move-result p0

    .line 56
    invoke-static {p1, p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    return-object p0

    .line 63
    :cond_3
    return-object v0
    .line 64
.end method

.method public final getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 18
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 22
    move-result-object v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-ne v2, v4, :cond_0

    .line 34
    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "Single path segment is not a resource ID: "

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 66
    :cond_0
    const/4 v5, 0x2

    .line 67
    if-ne v2, v5, :cond_2

    .line 68
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/String;

    .line 80
    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-result v0

    .line 85
    :goto_0
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 88
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "No resource found for: "

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0

    .line 112
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "More than two path segments: "

    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0

    .line 132
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "No path: "

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 148
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p0

    .line 152
    :catch_1
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "No package found for authority: "

    .line 157
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0

    .line 172
    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "No authority: "

    .line 177
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 188
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 189
    throw p0
    .line 192
.end method

.method public final getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    const-string v0, "SuggestionsAdapter"

    .line 2
    const-string v1, "android.resource://"

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_8

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    move-result v3

    .line 12
    if-nez v3, :cond_8

    .line 13
    const-string v3, "0"

    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    goto/16 :goto_5

    .line 23
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result v3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "/"

    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 54
    iget-object v4, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 55
    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 60
    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 61
    if-nez v4, :cond_1

    .line 63
    move-object v4, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object v4

    .line 70
    :goto_0
    if-eqz v4, :cond_2

    .line 71
    return-object v4

    .line 73
    :cond_2
    iget-object v4, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 74
    sget-object v5, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 76
    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    iget-object v4, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 84
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 86
    move-result-object v5

    .line 89
    invoke-virtual {v4, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_3
    return-object v3

    .line 93
    :catch_0
    const-string p0, "Icon resource not found: "

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v2

    .line 103
    :catch_1
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 104
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 109
    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 110
    if-nez v1, :cond_4

    .line 112
    move-object v1, v2

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 116
    move-result-object v1

    .line 119
    :goto_1
    if-eqz v1, :cond_5

    .line 120
    return-object v1

    .line 122
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    move-result-object v1

    .line 126
    const-string v3, "Error closing icon stream for "

    .line 127
    const-string v4, "Failed to open "

    .line 129
    const-string v5, "Resource does not exist: "

    .line 131
    :try_start_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 133
    move-result-object v6

    .line 136
    const-string v7, "android.resource"

    .line 137
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 142
    if-eqz v6, :cond_6

    .line 143
    :try_start_2
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    .line 145
    move-result-object v0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    .line 148
    move-object v2, v0

    .line 149
    goto/16 :goto_4

    .line 150
    :catch_2
    :try_start_3
    new-instance v3, Ljava/io/FileNotFoundException;

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v4

    .line 165
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 166
    throw v3

    .line 169
    :cond_6
    iget-object v5, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 172
    move-result-object v5

    .line 175
    invoke-virtual {v5, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 176
    move-result-object v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 179
    if-eqz v5, :cond_7

    .line 180
    :try_start_4
    invoke-static {v5, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 182
    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 186
    goto :goto_2

    .line 189
    :catch_3
    move-exception v5

    .line 190
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v3

    .line 202
    invoke-static {v0, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 203
    :goto_2
    move-object v2, v4

    .line 206
    goto :goto_4

    .line 207
    :catchall_0
    move-exception v4

    .line 208
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 209
    goto :goto_3

    .line 212
    :catch_4
    move-exception v5

    .line 213
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v3

    .line 225
    invoke-static {v0, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_3
    throw v4

    .line 229
    :cond_7
    new-instance v3, Ljava/io/FileNotFoundException;

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v4

    .line 243
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 244
    throw v3
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    .line 247
    :catch_5
    move-exception v3

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    .line 249
    const-string v5, "Icon not found: "

    .line 251
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ", "

    .line 259
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    .line 264
    move-result-object v1

    .line 267
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 274
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_4
    if-eqz v2, :cond_8

    .line 278
    iget-object p0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 280
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 282
    move-result-object v0

    .line 285
    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_8
    :goto_5
    return-object v2
    .line 289
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p1

    .line 7
    const-string p2, "SuggestionsAdapter"

    .line 8
    const-string v0, "Search suggestions cursor threw exception."

    .line 10
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    iget-object p2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 15
    iget p0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mDropDownLayout:I

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, p0, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 29
    check-cast p2, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    .line 30
    iget-object p2, p2, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-object p0
    .line 41
.end method

.method public final getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    return-object v0

    .line 12
    :cond_1
    new-instance v2, Landroid/net/Uri$Builder;

    .line 13
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 15
    const-string v3, "content"

    .line 18
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 24
    move-result-object v1

    .line 27
    const-string v2, ""

    .line 28
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    :cond_2
    const-string/jumbo v2, "search_suggest_query"

    .line 47
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 56
    if-eqz v6, :cond_3

    .line 57
    filled-new-array {p2}, [Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    :goto_0
    move-object v7, v0

    .line 67
    const-string p1, "limit"

    .line 68
    const/16 p2, 0x32

    .line 70
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 75
    invoke-virtual {v1, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 79
    move-result-object v4

    .line 82
    iget-object p0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    move-result-object v3

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 91
    move-result-object p0

    .line 94
    return-object p0
    .line 95
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p1

    .line 7
    const-string p2, "SuggestionsAdapter"

    .line 8
    const-string v0, "Search suggestions cursor threw exception."

    .line 10
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/SuggestionsAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    move-result-object p2

    .line 22
    check-cast p2, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    .line 23
    iget-object p2, p2, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-object p0
    .line 34
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2
    iget v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mLayout:I

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 10
    new-instance v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    .line 11
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    const v0, 0x7f0a0312    # @id/edit_query

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    iget p0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mCommitIconResId:I

    .line 28
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    return-object p1
    .line 33
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 9
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    const-string v0, "in_progress"

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method public final notifyDataSetInvalidated()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 2
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 9
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    const-string v0, "in_progress"

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/lang/CharSequence;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 10
    check-cast p1, Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
