.class public Lcom/miui/maml/elements/ListScreenElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static ACC:D = -800.0

.field private static DATA_TYPE_BITMAP:Ljava/lang/String; = "bitmap"

.field private static DATA_TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static DATA_TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static DATA_TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static DATA_TYPE_INTEGER1:Ljava/lang/String; = "integer"

.field private static DATA_TYPE_LONG:Ljava/lang/String; = "long"

.field private static DATA_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final LOG_TAG:Ljava/lang/String; = "ListScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "List"


# instance fields
.field protected mAttrDataBinders:Lcom/miui/maml/elements/AttrDataBinders;

.field private mBottomIndex:I

.field private mCachedItemCount:I

.field private mClearOnFinish:Z

.field private mColumnsInfo:Ljava/util/ArrayList;

.field private mCurrentIndex:I

.field private mCurrentTime:J

.field private mDataList:Ljava/util/ArrayList;

.field private mIndexOrder:Ljava/util/ArrayList;

.field private mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

.field private mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

.field private mIsChildScroll:Z

.field private mIsScroll:Z

.field private mIsUpDirection:Z

.field private mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

.field private mItemCount:I

.field private mLastTime:J

.field protected mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

.field private final mLock:Ljava/lang/Object;

.field private mMaxHeight:Lcom/miui/maml/data/Expression;

.field private mMoving:Z

.field private mOffsetX:D

.field private mOffsetY:D

.field private mPressed:Z

.field private mReuseIndex:Ljava/util/ArrayList;

.field private mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

.field private mSelectedId:I

.field private mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

.field private mSpeed:D

.field private mStartAnimTime:J

.field private mStartAnimY:F

.field private mTopIndex:I

.field private mTouchStartX:D

.field private mTouchStartY:D

.field private mVisibleItemCount:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/lang/Object;

    .line 5
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 26
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 31
    const/4 p2, -0x1

    .line 33
    iput p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 34
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 36
    const-string v0, "ListScreenElement"

    .line 38
    if-eqz p2, :cond_5

    .line 40
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->setClip(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 46
    move-result-object v1

    .line 49
    const-string v2, "maxHeight"

    .line 50
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 56
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    .line 60
    const-string v1, "clearOnFinish"

    .line 62
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 71
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    .line 72
    const-string v1, "data"

    .line 74
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v2

    .line 83
    if-nez v2, :cond_4

    .line 84
    invoke-static {v1}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 86
    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 90
    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 94
    move-result v1

    .line 97
    new-array v1, v1, [Lcom/miui/maml/data/IndexedVariable;

    .line 98
    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

    .line 100
    const-string v1, "AttrDataBinders"

    .line 102
    invoke-static {p1, v1}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 104
    move-result-object v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    new-instance v0, Lcom/miui/maml/elements/AttrDataBinders;

    .line 110
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 112
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 114
    move-result-object v2

    .line 117
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContextVariables:Lcom/miui/maml/data/ContextVariables;

    .line 118
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V

    .line 120
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mAttrDataBinders:Lcom/miui/maml/elements/AttrDataBinders;

    .line 123
    const-string v0, "Data"

    .line 125
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 127
    move-result-object p1

    .line 130
    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 133
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 135
    invoke-direct {v0, p1, v1, p0}, Lcom/miui/maml/elements/ListScreenElement$ListData;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V

    .line 137
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 140
    :cond_0
    const-string p1, "scrollbar"

    .line 142
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ListScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 144
    move-result-object p1

    .line 147
    instance-of v0, p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 148
    if-eqz v0, :cond_1

    .line 150
    move-object v0, p1

    .line 152
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 153
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 155
    sget-object v1, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 157
    iput-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 159
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->removeElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 161
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 166
    :cond_1
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 176
    const-string v2, ".selectedId"

    .line 178
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 184
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 186
    move-result-object v1

    .line 189
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 190
    invoke-direct {p1, v0, v1, p2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 192
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 195
    return-void

    .line 197
    :cond_2
    const-string p0, "no attr data binder"

    .line 198
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 203
    const-string p1, "List: no attr data binder"

    .line 205
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    throw p0

    .line 210
    :cond_3
    const-string p0, "invalid item data"

    .line 211
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 216
    const-string p1, "List: invalid item data"

    .line 218
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 220
    throw p0

    .line 223
    :cond_4
    const-string p0, "no data"

    .line 224
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 229
    const-string p1, "List: no data"

    .line 231
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 233
    throw p0

    .line 236
    :cond_5
    const-string p0, "no item"

    .line 237
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 242
    const-string p1, "List: no item"

    .line 244
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    throw p0
    .line 249
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/ListScreenElement;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;->addColumn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method private addColumn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_8

    .line 2
    if-nez p2, :cond_0

    .line 4
    goto/16 :goto_5

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_2

    .line 16
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 24
    iget-object v3, v3, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    const/4 v2, -0x1

    .line 38
    :goto_1
    if-gez v2, :cond_3

    .line 39
    return-void

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter p1

    .line 44
    :try_start_0
    array-length v0, p2

    .line 45
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v3

    .line 51
    :goto_2
    if-ge v1, v3, :cond_6

    .line 52
    if-ge v1, v0, :cond_4

    .line 54
    aget-object v4, p2, v1

    .line 56
    goto :goto_3

    .line 58
    :cond_4
    const/4 v4, 0x0

    .line 59
    :goto_3
    iget-object v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 65
    check-cast v5, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 66
    invoke-virtual {v5, v2, v4}, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->setData(ILjava/lang/Object;)V

    .line 68
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 76
    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 77
    iget v4, v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 79
    if-ltz v4, :cond_5

    .line 81
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/ListScreenElement;->getItem(I)Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 83
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_2

    .line 88
    :cond_6
    :goto_4
    if-ge v3, v0, :cond_7

    .line 89
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result v1

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    aget-object v4, p2, v3

    .line 99
    aput-object v4, v1, v2

    .line 101
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_4

    .line 108
    :cond_7
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->clearEmptyRowLocked()V

    .line 109
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 113
    return-void

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p0

    .line 119
    :cond_8
    :goto_5
    return-void
    .line 120
.end method

.method private bindDataLocked(Lcom/miui/maml/elements/ListScreenElement$ListItemElement;II)V
    .locals 4

    .line 1
    if-ltz p3, :cond_3

    .line 2
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 4
    if-lt p3, v0, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 15
    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 17
    invoke-virtual {p1, p3}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 28
    iput p2, v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 30
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 37
    check-cast p2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 38
    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    .line 41
    int-to-float p2, p3

    .line 43
    iget-object p3, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 44
    invoke-virtual {p3}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 46
    move-result p3

    .line 49
    mul-float/2addr p3, p2

    .line 50
    float-to-double p2, p3

    .line 51
    double-to-float p2, p2

    .line 52
    float-to-double p2, p2

    .line 53
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 54
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result p2

    .line 62
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 63
    move-result-object p3

    .line 66
    iget-object p3, p3, Lcom/miui/maml/ScreenContext;->mContextVariables:Lcom/miui/maml/data/ContextVariables;

    .line 67
    :goto_0
    if-ge v1, p2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 76
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 77
    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 79
    aget-object v3, v0, v1

    .line 81
    invoke-virtual {p3, v2, v3}, Lcom/miui/maml/data/ContextVariables;->setVar(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement;->mAttrDataBinders:Lcom/miui/maml/elements/AttrDataBinders;

    .line 89
    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AttrDataBinders;->bind(Lcom/miui/maml/elements/ElementGroup;)V

    .line 93
    :cond_2
    return-void

    .line 96
    :cond_3
    :goto_1
    const-string p0, "ListScreenElement"

    .line 97
    const-string p1, "invalid item data"

    .line 99
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
    .line 104
.end method

.method private checkVisibility()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 5
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 7
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v4

    .line 16
    if-ge v3, v4, :cond_2

    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 22
    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 23
    invoke-virtual {v4}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 25
    move-result v5

    .line 28
    if-ltz v5, :cond_0

    .line 29
    iget v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 31
    if-lt v5, v6, :cond_0

    .line 33
    iget v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mBottomIndex:I

    .line 35
    if-gt v5, v6, :cond_0

    .line 37
    invoke-virtual {v4}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 39
    move-result v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    const/4 v5, 0x1

    .line 45
    invoke-virtual {v4, v5}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 46
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v4}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 50
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v4, v2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
    .line 66
.end method

.method private clearEmptyRowLocked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_3

    .line 10
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 18
    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 20
    array-length v3, v2

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    :goto_1
    if-ge v5, v3, :cond_1

    .line 25
    aget-object v6, v2, v5

    .line 27
    if-eqz v6, :cond_0

    .line 29
    goto :goto_2

    .line 31
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    move v4, v1

    .line 35
    :goto_2
    if-nez v4, :cond_2

    .line 36
    goto :goto_3

    .line 38
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ListScreenElement;->removeItemLocked(I)V

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_3
    :goto_3
    return-void
    .line 45
.end method

.method private getItem(I)Lcom/miui/maml/elements/ListScreenElement$ListItemElement;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ltz p1, :cond_6

    .line 6
    :try_start_0
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 8
    if-lt p1, v2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 19
    iget v2, v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 21
    if-ltz v2, :cond_1

    .line 23
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 25
    invoke-virtual {v3}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 27
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v3

    .line 34
    if-ge v2, v3, :cond_1

    .line 35
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 37
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 47
    :cond_1
    if-ltz v2, :cond_2

    .line 49
    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 53
    move-result v3

    .line 56
    if-eq v3, p1, :cond_3

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->getUseableElementIndex()I

    .line 59
    move-result v2

    .line 62
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 63
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 65
    move-result-object v1

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 72
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 73
    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 77
    move-result v3

    .line 80
    if-gez v3, :cond_3

    .line 81
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->reset()V

    .line 83
    :cond_3
    if-eqz v1, :cond_5

    .line 86
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 88
    move-result v3

    .line 91
    if-ne v3, p1, :cond_4

    .line 92
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 99
    check-cast v3, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 100
    iget-boolean v3, v3, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    .line 102
    if-eqz v3, :cond_5

    .line 104
    :cond_4
    invoke-direct {p0, v1, v2, p1}, Lcom/miui/maml/elements/ListScreenElement;->bindDataLocked(Lcom/miui/maml/elements/ListScreenElement$ListItemElement;II)V

    .line 106
    :cond_5
    monitor-exit v0

    .line 109
    return-object v1

    .line 110
    :cond_6
    :goto_0
    monitor-exit v0

    .line 111
    return-object v1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0
    .line 115
.end method

.method private getUseableElementIndex()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v2

    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result v0

    .line 58
    :goto_0
    iget-boolean v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 59
    if-eqz v2, :cond_2

    .line 61
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v1

    .line 68
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_1

    .line 72
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {p0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    :goto_1
    return v0
    .line 82
.end method

.method private moveTo(D)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 6
    int-to-float v1, v1

    .line 8
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 9
    invoke-virtual {v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 11
    move-result v2

    .line 14
    mul-float/2addr v2, v1

    .line 15
    sub-float/2addr v0, v2

    .line 16
    float-to-double v0, v0

    .line 17
    cmpg-double v0, p1, v0

    .line 18
    const-wide/16 v1, 0x0

    .line 20
    if-gez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 24
    move-result p1

    .line 27
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 28
    int-to-float p2, p2

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 31
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 33
    move-result v0

    .line 36
    mul-float/2addr v0, p2

    .line 37
    sub-float/2addr p1, v0

    .line 38
    float-to-double p1, p1

    .line 39
    iput-wide v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 40
    :cond_0
    const-wide/16 v3, 0x0

    .line 42
    cmpl-double v0, p1, v3

    .line 44
    if-lez v0, :cond_1

    .line 46
    iput-wide v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 48
    move-wide p1, v3

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 51
    double-to-float v1, p1

    .line 53
    float-to-double v1, v1

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 55
    neg-double p1, p1

    .line 58
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 59
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 61
    move-result v0

    .line 64
    float-to-double v0, v0

    .line 65
    div-double/2addr p1, v0

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    .line 67
    move-result-wide p1

    .line 70
    double-to-int p1, p1

    .line 71
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 72
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 74
    move-result v0

    .line 77
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 78
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 80
    move-result v1

    .line 83
    div-float/2addr v0, v1

    .line 84
    float-to-int v0, v0

    .line 85
    sub-int/2addr p2, v0

    .line 86
    add-int/lit8 p2, p2, -0x1

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 89
    move-result p1

    .line 92
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 93
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 95
    move-result p1

    .line 98
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 99
    invoke-virtual {p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 101
    move-result p2

    .line 104
    div-float/2addr p1, p2

    .line 105
    float-to-int p1, p1

    .line 106
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 107
    add-int/2addr p1, p2

    .line 109
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 110
    add-int/lit8 p2, p2, -0x1

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 114
    move-result p1

    .line 117
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mBottomIndex:I

    .line 118
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 120
    :goto_0
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mBottomIndex:I

    .line 122
    if-gt p1, p2, :cond_2

    .line 124
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ListScreenElement;->getItem(I)Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 126
    add-int/lit8 p1, p1, 0x1

    .line 129
    goto :goto_0

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->checkVisibility()V

    .line 132
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->updateScorllBar()V

    .line 135
    return-void
    .line 138
.end method

.method private removeItemLocked(I)V
    .locals 7

    .line 1
    if-ltz p1, :cond_5

    .line 2
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 4
    if-lt p1, v0, :cond_0

    .line 6
    goto/16 :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 17
    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 19
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 21
    move-result v0

    .line 24
    float-to-double v0, v0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 26
    move-result-wide v0

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    move v2, v1

    .line 40
    move v3, v2

    .line 41
    :goto_0
    if-ge v2, v0, :cond_3

    .line 42
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 44
    invoke-virtual {v4}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 46
    move-result-object v4

    .line 49
    iget-object v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/Integer;

    .line 56
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 65
    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 66
    invoke-virtual {v4}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    .line 68
    move-result v5

    .line 71
    if-ne v5, p1, :cond_1

    .line 72
    const/4 v3, -0x1

    .line 74
    invoke-virtual {v4, v3}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 75
    const-wide v5, -0x10000000000001L

    .line 78
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 83
    invoke-virtual {v4, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 86
    move v3, v2

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    if-le v5, p1, :cond_2

    .line 91
    add-int/lit8 v5, v5, -0x1

    .line 93
    invoke-virtual {v4, v5}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 95
    int-to-float v5, v5

    .line 98
    iget-object v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 99
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 101
    move-result v6

    .line 104
    mul-float/2addr v6, v5

    .line 105
    float-to-double v5, v6

    .line 106
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 107
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 110
    goto :goto_0

    .line 112
    :cond_3
    if-lez v0, :cond_4

    .line 113
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 120
    check-cast p1, Ljava/lang/Integer;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 123
    move-result p1

    .line 126
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 127
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 129
    move-result v0

    .line 132
    float-to-double v0, v0

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 134
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 146
    :cond_5
    :goto_2
    return-void
    .line 149
.end method

.method private resetInner()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 10
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 12
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 14
    const-wide/16 v0, -0x1

    .line 16
    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 18
    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 22
    return-void
    .line 24
.end method

.method private setVariables()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_3

    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 17
    iget-object v3, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 19
    sget-object v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 21
    if-eq v3, v4, :cond_2

    .line 23
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

    .line 25
    aget-object v4, v3, v1

    .line 27
    if-nez v4, :cond_0

    .line 29
    new-instance v4, Lcom/miui/maml/data/IndexedVariable;

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    iget-object v6, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v6, "."

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v6, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 56
    iget-object v6, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 57
    invoke-virtual {v6}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 59
    move-result-object v6

    .line 62
    iget-object v6, v6, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 63
    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 65
    invoke-virtual {v2}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->isNumber()Z

    .line 67
    move-result v2

    .line 70
    invoke-direct {v4, v5, v6, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 71
    aput-object v4, v3, v1

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 76
    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

    .line 79
    aget-object v3, v3, v1

    .line 81
    iget v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 83
    if-ltz v4, :cond_1

    .line 85
    iget-object v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result v5

    .line 92
    if-ge v4, v5, :cond_1

    .line 93
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 95
    iget v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 97
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v4

    .line 102
    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 103
    iget-object v4, v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 105
    aget-object v4, v4, v1

    .line 107
    goto :goto_1

    .line 109
    :cond_1
    const/4 v4, 0x0

    .line 110
    :goto_1
    invoke-virtual {v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v2

    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0

    .line 118
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 119
    goto :goto_0

    .line 121
    :cond_3
    return-void
    .line 122
.end method

.method private startAnimation()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 10
    move-result v0

    .line 13
    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimY:F

    .line 14
    return-void
    .line 16
.end method

.method private updateScorllBar()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 6
    if-eqz v0, :cond_2

    .line 8
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 10
    int-to-float v0, v0

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 13
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 15
    move-result v1

    .line 18
    mul-float/2addr v1, v0

    .line 19
    float-to-double v0, v1

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 21
    move-result v2

    .line 24
    float-to-double v2, v2

    .line 25
    div-double v4, v2, v0

    .line 26
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 28
    cmpl-double v8, v4, v6

    .line 30
    if-ltz v8, :cond_0

    .line 32
    const-wide/16 v4, 0x0

    .line 34
    const/4 v8, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v8, 0x1

    .line 38
    :goto_0
    iget-object v9, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 39
    invoke-virtual {v9}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 41
    move-result v9

    .line 44
    float-to-double v9, v9

    .line 45
    sub-double v0, v2, v0

    .line 46
    div-double/2addr v9, v0

    .line 48
    cmpl-double v0, v9, v6

    .line 49
    if-lez v0, :cond_1

    .line 51
    move-wide v9, v6

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 54
    sub-double/2addr v6, v4

    .line 56
    mul-double/2addr v6, v2

    .line 57
    mul-double/2addr v6, v9

    .line 58
    double-to-float v1, v6

    .line 59
    float-to-double v6, v1

    .line 60
    invoke-virtual {v0, v6, v7}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 64
    mul-double/2addr v2, v4

    .line 66
    double-to-float v1, v2

    .line 67
    float-to-double v1, v1

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setHeight(D)V

    .line 69
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 72
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 74
    move-result v0

    .line 77
    if-eq v0, v8, :cond_2

    .line 78
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 80
    invoke-virtual {p0, v8}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 82
    :cond_2
    return-void
    .line 85
.end method


# virtual methods
.method public varargs addItem([Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    array-length v0, p1

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    const-string p0, "ListScreenElement"

    .line 14
    const-string p1, "invalid item data count"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 21
    :cond_1
    array-length v0, p1

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_3

    .line 24
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 32
    aget-object v3, p1, v1

    .line 34
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->validate(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    const-string p0, "ListScreenElement"

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "invalid item data type: "

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    aget-object p1, p1, v1

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 67
    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 70
    new-instance v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 72
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 77
    check-cast p1, [Ljava/lang/Object;

    .line 78
    invoke-direct {v2, p1}, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 86
    add-int/lit8 p1, p1, 0x1

    .line 88
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 90
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 92
    add-int/lit8 p1, p1, 0x1

    .line 94
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 96
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 98
    move-result p1

    .line 101
    float-to-double v1, p1

    .line 102
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 103
    move-result-wide v1

    .line 106
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 107
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 110
    move-result p1

    .line 113
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    .line 114
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 116
    move-result-wide v1

    .line 119
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 120
    move-result v1

    .line 123
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    .line 124
    move-result p1

    .line 127
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 128
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 130
    move-result v1

    .line 133
    div-float/2addr p1, v1

    .line 134
    float-to-int p1, p1

    .line 135
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mVisibleItemCount:I

    .line 136
    mul-int/lit8 p1, p1, 0x2

    .line 138
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCachedItemCount:I

    .line 140
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 142
    invoke-virtual {p1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 144
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 148
    move-result p1

    .line 151
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCachedItemCount:I

    .line 152
    if-ge p1, v1, :cond_4

    .line 154
    new-instance v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 156
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 158
    iget-object v3, v2, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    .line 160
    iget-object v2, v2, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 162
    invoke-direct {v1, v3, v2}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 164
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 167
    invoke-virtual {v2, v1}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 169
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 172
    iget v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 174
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v2

    .line 179
    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 180
    iput p1, v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 182
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 184
    iput v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 186
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 188
    const/4 v2, -0x1

    .line 191
    iput v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 192
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 194
    invoke-direct {p0, v1, p1, v2}, Lcom/miui/maml/elements/ListScreenElement;->bindDataLocked(Lcom/miui/maml/elements/ListScreenElement$ListItemElement;II)V

    .line 196
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 199
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object v1

    .line 206
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 211
    return-void

    .line 214
    :catchall_0
    move-exception p0

    .line 215
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    throw p0
    .line 217
.end method

.method public doTick(J)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 2
    iget-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v4, v0, v2

    .line 9
    if-ltz v4, :cond_3

    .line 11
    iget-boolean v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 13
    if-nez v4, :cond_3

    .line 15
    sub-long/2addr p1, v0

    .line 17
    cmp-long v0, v0, v2

    .line 18
    if-eqz v0, :cond_2

    .line 20
    iget-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 22
    sget-wide v2, Lcom/miui/maml/elements/ListScreenElement;->ACC:D

    .line 24
    long-to-double p1, p1

    .line 26
    mul-double v4, v2, p1

    .line 27
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 29
    div-double/2addr v4, v6

    .line 34
    add-double/2addr v4, v0

    .line 35
    const-wide/16 v8, 0x0

    .line 36
    cmpg-double v4, v4, v8

    .line 38
    if-gez v4, :cond_0

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    mul-double/2addr v0, p1

    .line 43
    div-double/2addr v0, v6

    .line 44
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 45
    mul-double/2addr v2, v4

    .line 47
    mul-double/2addr v2, p1

    .line 48
    mul-double/2addr v2, p1

    .line 49
    const-wide p1, 0x412e848000000000L    # 1000000.0

    .line 50
    div-double/2addr v2, p1

    .line 55
    add-double/2addr v2, v0

    .line 56
    iput-wide v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 57
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimY:F

    .line 59
    float-to-double p1, p1

    .line 61
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 62
    if-eqz v0, :cond_1

    .line 64
    neg-double v2, v2

    .line 66
    :cond_1
    add-double/2addr p1, v2

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 68
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 72
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 75
    :cond_3
    return-void
    .line 78
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 5
    if-ltz v1, :cond_0

    .line 7
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 9
    if-ge v1, v2, :cond_0

    .line 11
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 19
    iget v1, v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 21
    if-ltz v1, :cond_0

    .line 23
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 25
    invoke-virtual {v2}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 35
    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 37
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 46
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
    .line 53
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement;->mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement$ListData;->finish()V

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public getColumnsInfo()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getHeight()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 11
    int-to-float v0, v0

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 14
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 16
    move-result v1

    .line 19
    mul-float/2addr v1, v0

    .line 20
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    .line 21
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 23
    move-result-wide v2

    .line 26
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 27
    move-result p0

    .line 30
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    .line 31
    move-result p0

    .line 34
    :goto_0
    return p0
    .line 35
.end method

.method public init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 8
    const-wide/16 v1, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 15
    move-result v0

    .line 18
    float-to-double v0, v0

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 20
    move-result-wide v0

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 24
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 28
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 30
    int-to-double v2, v0

    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 33
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->setVariables()V

    .line 36
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement;->mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 39
    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement$ListData;->init()V

    .line 43
    :cond_0
    return-void
    .line 46
.end method

.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "Item"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 14
    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 18
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 20
    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 22
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 25
    new-instance p1, Lcom/miui/maml/elements/ElementGroup;

    .line 27
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 30
    invoke-direct {p1, v0, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 32
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 35
    return-object p1

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 38
    move-result-object p0

    .line 41
    return-object p0
    .line 42
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    return v2

    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    move-result v1

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    move-result v3

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 20
    move-result v4

    .line 23
    const-wide/16 v5, 0x0

    .line 24
    const-wide/16 v7, -0x1

    .line 26
    const/4 v9, 0x1

    .line 28
    if-eqz v4, :cond_c

    .line 29
    if-eq v4, v9, :cond_a

    .line 31
    const/4 v10, 0x2

    .line 33
    const/4 v11, 0x3

    .line 34
    if-eq v4, v10, :cond_3

    .line 35
    if-eq v4, v11, :cond_2

    .line 37
    :cond_1
    move v3, v2

    .line 39
    move-object/from16 v2, p1

    .line 40
    goto/16 :goto_5

    .line 42
    :cond_2
    iput-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 44
    iget-boolean v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 46
    if-eqz v1, :cond_1

    .line 48
    const-string v1, "cancel"

    .line 50
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 52
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 55
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 58
    move v3, v2

    .line 60
    move/from16 v16, v9

    .line 61
    move-object/from16 v2, p1

    .line 63
    goto/16 :goto_6

    .line 65
    :cond_3
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 67
    if-eqz v4, :cond_9

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 71
    move-result-wide v7

    .line 74
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentTime:J

    .line 75
    float-to-double v7, v3

    .line 77
    iget-wide v12, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 78
    sub-double v12, v7, v12

    .line 80
    iput-wide v12, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 82
    float-to-double v14, v1

    .line 84
    move v10, v3

    .line 85
    iget-wide v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartX:D

    .line 86
    sub-double/2addr v14, v2

    .line 88
    iput-wide v14, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetX:D

    .line 89
    iget-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 91
    if-nez v2, :cond_5

    .line 93
    iget-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 95
    if-nez v2, :cond_5

    .line 97
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 99
    move-result-wide v2

    .line 102
    iget-wide v12, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetX:D

    .line 103
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 105
    move-result-wide v12

    .line 108
    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    .line 109
    cmpl-double v16, v2, v14

    .line 111
    if-lez v16, :cond_4

    .line 113
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 115
    if-nez v4, :cond_4

    .line 117
    cmpl-double v4, v2, v12

    .line 119
    if-ltz v4, :cond_4

    .line 121
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 123
    goto :goto_0

    .line 125
    :cond_4
    cmpl-double v4, v12, v14

    .line 126
    if-lez v4, :cond_5

    .line 128
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 130
    if-nez v4, :cond_5

    .line 132
    cmpg-double v2, v2, v12

    .line 134
    if-gez v2, :cond_5

    .line 136
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 138
    :cond_5
    :goto_0
    iget-wide v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 140
    cmpg-double v2, v2, v5

    .line 142
    if-ltz v2, :cond_7

    .line 144
    iget-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 146
    if-eqz v2, :cond_6

    .line 148
    goto :goto_1

    .line 150
    :cond_6
    const/4 v2, 0x0

    .line 151
    goto :goto_2

    .line 152
    :cond_7
    :goto_1
    move v2, v9

    .line 153
    :goto_2
    iput-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 154
    iget-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 156
    if-eqz v2, :cond_8

    .line 158
    move-object/from16 v2, p1

    .line 160
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 162
    const-string v3, "move"

    .line 165
    invoke-virtual {v0, v3}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v1, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    .line 170
    iget-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 173
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 175
    move-result-wide v3

    .line 178
    iget-wide v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentTime:J

    .line 179
    iget-wide v10, v0, Lcom/miui/maml/elements/ListScreenElement;->mLastTime:J

    .line 181
    sub-long/2addr v5, v10

    .line 183
    long-to-double v5, v5

    .line 184
    div-double/2addr v3, v5

    .line 185
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 186
    mul-double/2addr v3, v5

    .line 191
    iput-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 192
    iget-object v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 194
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 196
    move-result v1

    .line 199
    float-to-double v3, v1

    .line 200
    iget-wide v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 201
    add-double/2addr v3, v5

    .line 203
    invoke-direct {v0, v3, v4}, Lcom/miui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 204
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 207
    iget-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentTime:J

    .line 209
    iput-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mLastTime:J

    .line 211
    goto :goto_3

    .line 213
    :cond_8
    move-object/from16 v2, p1

    .line 214
    :goto_3
    move/from16 v16, v9

    .line 216
    const/4 v3, 0x0

    .line 218
    goto/16 :goto_6

    .line 219
    :cond_9
    move-object/from16 v2, p1

    .line 221
    const/4 v3, 0x0

    .line 223
    goto/16 :goto_5

    .line 224
    :cond_a
    move v3, v2

    .line 226
    move-object/from16 v2, p1

    .line 227
    iput-boolean v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 229
    iget-boolean v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 231
    if-eqz v1, :cond_d

    .line 233
    const-string v1, "ListScreenElement"

    .line 235
    const-string/jumbo v4, "unlock touch up"

    .line 237
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string/jumbo v1, "up"

    .line 243
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    .line 249
    iget-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 252
    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    .line 254
    cmpg-double v1, v4, v6

    .line 256
    if-gez v1, :cond_b

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 260
    goto :goto_4

    .line 263
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->startAnimation()V

    .line 264
    goto :goto_4

    .line 267
    :cond_c
    move v10, v3

    .line 268
    move v3, v2

    .line 269
    move-object/from16 v2, p1

    .line 270
    invoke-virtual {v0, v1, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 272
    move-result v4

    .line 275
    if-eqz v4, :cond_d

    .line 276
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 278
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 280
    const-string v4, "down"

    .line 282
    invoke-virtual {v0, v4}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, v1, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 287
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 290
    iput-wide v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 294
    move-result-wide v4

    .line 297
    iput-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mLastTime:J

    .line 298
    iget-object v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 300
    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 302
    move-result v4

    .line 305
    sub-float v4, v10, v4

    .line 306
    iget-object v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 308
    invoke-virtual {v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 310
    move-result v5

    .line 313
    div-float/2addr v4, v5

    .line 314
    float-to-double v4, v4

    .line 315
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 316
    move-result-wide v4

    .line 319
    double-to-int v4, v4

    .line 320
    iput v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 321
    iget-object v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 323
    int-to-double v6, v4

    .line 325
    invoke-virtual {v5, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->setVariables()V

    .line 329
    float-to-double v4, v1

    .line 332
    iput-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartX:D

    .line 333
    float-to-double v4, v10

    .line 335
    iput-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->updateScorllBar()V

    .line 338
    :goto_4
    move/from16 v16, v9

    .line 341
    goto :goto_6

    .line 343
    :cond_d
    :goto_5
    move/from16 v16, v3

    .line 344
    :goto_6
    invoke-super/range {p0 .. p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    .line 346
    move-result v1

    .line 349
    if-nez v1, :cond_f

    .line 350
    if-eqz v16, :cond_e

    .line 352
    iget-boolean v0, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 354
    if-eqz v0, :cond_e

    .line 356
    goto :goto_7

    .line 358
    :cond_e
    move v2, v3

    .line 359
    goto :goto_8

    .line 360
    :cond_f
    :goto_7
    move v2, v9

    .line 361
    :goto_8
    return v2
    .line 362
.end method

.method public removeAllItems()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 5
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->removeAllElements()V

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 29
    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 33
    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    .line 38
    move-result v1

    .line 41
    float-to-double v1, v1

    .line 42
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 43
    move-result-wide v1

    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 47
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
    .line 54
.end method
