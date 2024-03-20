.class public final Landroidx/appcompat/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

.field public static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;


# instance fields
.field public final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field public final mActionViewConstructorArguments:[Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public mRealOwner:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 8
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 13
    return-void
    .line 15
.end method

.method public static findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroidx/appcompat/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
    .line 21
.end method


# virtual methods
.method public final inflate(ILandroid/view/Menu;)V
    .locals 6

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    instance-of v1, p2, Landroidx/core/internal/view/SupportMenu;

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 24
    move-result-object p1

    .line 27
    instance-of v3, p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 28
    if-eqz v3, :cond_1

    .line 30
    move-object v3, p2

    .line 32
    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 33
    iget-boolean v4, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 35
    const/4 v5, 0x1

    .line 37
    xor-int/2addr v4, v5

    .line 38
    if-eqz v4, :cond_1

    .line 39
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 41
    move v2, v5

    .line 44
    :cond_1
    invoke-virtual {p0, v1, p1, p2}, Landroidx/appcompat/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v2, :cond_2

    .line 48
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 50
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 52
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 55
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    :try_start_1
    new-instance p1, Landroid/view/InflateException;

    .line 62
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    throw p1

    .line 67
    :catch_1
    move-exception p0

    .line 68
    new-instance p1, Landroid/view/InflateException;

    .line 69
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    if-eqz v2, :cond_3

    .line 75
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 77
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 79
    :cond_3
    if-eqz v1, :cond_4

    .line 82
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 84
    :cond_4
    throw p0
    .line 87
.end method

.method public final parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    new-instance v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;

    .line 6
    move-object/from16 v3, p3

    .line 8
    invoke-direct {v2, v0, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;-><init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 10
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    move-result v3

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x2

    .line 18
    const-string v6, "menu"

    .line 19
    if-ne v3, v5, :cond_1

    .line 21
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    const-string v1, "Expecting menu, got "

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    move-result v3

    .line 53
    if-ne v3, v4, :cond_17

    .line 54
    :goto_1
    const/4 v7, 0x0

    .line 56
    move v9, v7

    .line 57
    move v10, v9

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_2
    if-nez v9, :cond_16

    .line 60
    if-eq v3, v4, :cond_15

    .line 62
    iget-object v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 64
    const-string v13, "item"

    .line 66
    const-string v14, "group"

    .line 68
    const/4 v15, 0x3

    .line 70
    if-eq v3, v5, :cond_7

    .line 71
    if-eq v3, v15, :cond_2

    .line 73
    goto/16 :goto_3

    .line 75
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 80
    if-eqz v10, :cond_3

    .line 81
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v15

    .line 86
    if-eqz v15, :cond_3

    .line 87
    move-object/from16 v8, p1

    .line 89
    move v10, v7

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v11, 0x0

    .line 93
    goto/16 :goto_b

    .line 94
    :cond_3
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v14

    .line 99
    if-eqz v14, :cond_4

    .line 100
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 102
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 104
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 106
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 108
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 110
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 112
    goto/16 :goto_3

    .line 114
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v13

    .line 119
    if-eqz v13, :cond_6

    .line 120
    iget-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 122
    if-nez v3, :cond_9

    .line 124
    iget-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 126
    if-eqz v3, :cond_5

    .line 128
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    .line 130
    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    .line 132
    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    .line 134
    move-result v3

    .line 137
    if-eqz v3, :cond_5

    .line 138
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 140
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 142
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 144
    iget v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 146
    iget-object v15, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 148
    invoke-interface {v12, v3, v13, v14, v15}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 150
    move-result-object v3

    .line 153
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 154
    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 158
    goto :goto_3

    .line 161
    :cond_5
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 162
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 164
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 166
    iget v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 168
    iget-object v15, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 170
    invoke-interface {v12, v3, v13, v14, v15}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 172
    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 176
    goto :goto_3

    .line 179
    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v3

    .line 183
    if-eqz v3, :cond_9

    .line 184
    move v9, v4

    .line 186
    goto :goto_3

    .line 187
    :cond_7
    if-eqz v10, :cond_8

    .line 188
    goto :goto_3

    .line 190
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 191
    move-result-object v3

    .line 194
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v14

    .line 198
    const/4 v5, 0x4

    .line 199
    iget-object v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    .line 200
    if-eqz v14, :cond_a

    .line 202
    iget-object v3, v8, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 204
    sget-object v8, Landroidx/appcompat/R$styleable;->MenuGroup:[I

    .line 206
    invoke-virtual {v3, v1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 208
    move-result-object v3

    .line 211
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 212
    move-result v8

    .line 215
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 216
    invoke-virtual {v3, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 218
    move-result v8

    .line 221
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 222
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 224
    move-result v5

    .line 227
    iput v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 228
    const/4 v5, 0x5

    .line 230
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 231
    move-result v5

    .line 234
    iput v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 235
    const/4 v5, 0x2

    .line 237
    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 238
    move-result v8

    .line 241
    iput-boolean v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 242
    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 244
    move-result v5

    .line 247
    iput-boolean v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 248
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    :cond_9
    :goto_3
    move-object/from16 v8, p1

    .line 253
    const/4 v5, 0x0

    .line 255
    goto/16 :goto_b

    .line 256
    :cond_a
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result v13

    .line 261
    if-eqz v13, :cond_13

    .line 262
    iget-object v3, v8, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 264
    sget-object v12, Landroidx/appcompat/R$styleable;->MenuItem:[I

    .line 266
    new-instance v13, Landroidx/appcompat/widget/TintTypedArray;

    .line 268
    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 270
    move-result-object v12

    .line 273
    invoke-direct {v13, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 274
    const/4 v14, 0x2

    .line 277
    invoke-virtual {v13, v14, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 278
    move-result v3

    .line 281
    iput v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 282
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 284
    const/4 v12, 0x5

    .line 286
    invoke-virtual {v13, v12, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 287
    move-result v3

    .line 290
    const/4 v12, 0x6

    .line 291
    iget v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 292
    invoke-virtual {v13, v12, v14}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 294
    move-result v12

    .line 297
    const/high16 v14, -0x10000

    .line 298
    and-int/2addr v3, v14

    .line 300
    const v14, 0xffff

    .line 301
    and-int/2addr v12, v14

    .line 304
    or-int/2addr v3, v12

    .line 305
    iput v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 306
    const/4 v3, 0x7

    .line 308
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 309
    move-result-object v3

    .line 312
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 313
    const/16 v3, 0x8

    .line 315
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 317
    move-result-object v3

    .line 320
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 321
    invoke-virtual {v13, v7, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 323
    move-result v3

    .line 326
    iput v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 327
    const/16 v3, 0x9

    .line 329
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 331
    move-result-object v3

    .line 334
    if-nez v3, :cond_b

    .line 335
    move v3, v7

    .line 337
    goto :goto_4

    .line 338
    :cond_b
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 339
    move-result v3

    .line 342
    :goto_4
    iput-char v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 343
    const/16 v3, 0x10

    .line 345
    const/16 v12, 0x1000

    .line 347
    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 349
    move-result v3

    .line 352
    iput v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 353
    const/16 v3, 0xa

    .line 355
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 357
    move-result-object v3

    .line 360
    if-nez v3, :cond_c

    .line 361
    move v3, v7

    .line 363
    goto :goto_5

    .line 364
    :cond_c
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 365
    move-result v3

    .line 368
    :goto_5
    iput-char v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 369
    const/16 v3, 0x14

    .line 371
    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 373
    move-result v3

    .line 376
    iput v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    .line 377
    const/16 v3, 0xb

    .line 379
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 381
    move-result v12

    .line 384
    if-eqz v12, :cond_d

    .line 385
    invoke-virtual {v13, v3, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 387
    move-result v3

    .line 390
    iput v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 391
    goto :goto_6

    .line 393
    :cond_d
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 394
    iput v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 396
    :goto_6
    invoke-virtual {v13, v15, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 398
    move-result v3

    .line 401
    iput-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 402
    iget-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 404
    invoke-virtual {v13, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 406
    move-result v3

    .line 409
    iput-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 410
    iget-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 412
    invoke-virtual {v13, v4, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 414
    move-result v3

    .line 417
    iput-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 418
    const/16 v3, 0x15

    .line 420
    const/4 v5, -0x1

    .line 422
    invoke-virtual {v13, v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 423
    move-result v3

    .line 426
    iput v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 427
    const/16 v3, 0xc

    .line 429
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 431
    move-result-object v3

    .line 434
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 435
    const/16 v3, 0xd

    .line 437
    invoke-virtual {v13, v3, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 439
    move-result v3

    .line 442
    iput v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 443
    const/16 v3, 0xf

    .line 445
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 447
    move-result-object v3

    .line 450
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 451
    const/16 v3, 0xe

    .line 453
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 455
    move-result-object v3

    .line 458
    if-eqz v3, :cond_e

    .line 459
    move v12, v4

    .line 461
    goto :goto_7

    .line 462
    :cond_e
    move v12, v7

    .line 463
    :goto_7
    if-eqz v12, :cond_f

    .line 464
    iget v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 466
    if-nez v14, :cond_f

    .line 468
    iget-object v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 470
    if-nez v14, :cond_f

    .line 472
    sget-object v12, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 474
    iget-object v8, v8, Landroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 476
    invoke-virtual {v2, v3, v12, v8}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    move-result-object v3

    .line 481
    check-cast v3, Landroidx/core/view/ActionProvider;

    .line 482
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 484
    goto :goto_8

    .line 486
    :cond_f
    if-eqz v12, :cond_10

    .line 487
    const-string v3, "SupportMenuInflater"

    .line 489
    const-string v8, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 491
    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_10
    const/4 v3, 0x0

    .line 496
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 497
    :goto_8
    const/16 v3, 0x11

    .line 499
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 501
    move-result-object v3

    .line 504
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 505
    const/16 v3, 0x16

    .line 507
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 509
    move-result-object v3

    .line 512
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 513
    const/16 v3, 0x13

    .line 515
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 517
    move-result v8

    .line 520
    if-eqz v8, :cond_11

    .line 521
    invoke-virtual {v13, v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 523
    move-result v3

    .line 526
    iget-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 527
    invoke-static {v3, v5}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 529
    move-result-object v3

    .line 532
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 533
    const/4 v5, 0x0

    .line 535
    goto :goto_9

    .line 536
    :cond_11
    const/4 v5, 0x0

    .line 537
    iput-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 538
    :goto_9
    const/16 v3, 0x12

    .line 540
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 542
    move-result v8

    .line 545
    if-eqz v8, :cond_12

    .line 546
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 548
    move-result-object v3

    .line 551
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 552
    goto :goto_a

    .line 554
    :cond_12
    iput-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 555
    :goto_a
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 557
    iput-boolean v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 560
    move-object/from16 v8, p1

    .line 562
    goto :goto_b

    .line 564
    :cond_13
    const/4 v5, 0x0

    .line 565
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 566
    move-result v8

    .line 569
    if-eqz v8, :cond_14

    .line 570
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 572
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 574
    iget v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 576
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 578
    iget-object v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 580
    invoke-interface {v12, v3, v8, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 582
    move-result-object v3

    .line 585
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 586
    move-result-object v8

    .line 589
    invoke-virtual {v2, v8}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 590
    move-object/from16 v8, p1

    .line 593
    invoke-virtual {v0, v8, v1, v3}, Landroidx/appcompat/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 595
    goto :goto_b

    .line 598
    :cond_14
    move-object/from16 v8, p1

    .line 599
    move-object v11, v3

    .line 601
    move v10, v4

    .line 602
    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 603
    move-result v3

    .line 606
    const/4 v5, 0x2

    .line 607
    goto/16 :goto_2

    .line 608
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    .line 610
    const-string v1, "Unexpected end of document"

    .line 612
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 614
    throw v0

    .line 617
    :cond_16
    return-void

    .line 618
    :cond_17
    move-object/from16 v8, p1

    .line 619
    goto/16 :goto_0
    .line 621
.end method
