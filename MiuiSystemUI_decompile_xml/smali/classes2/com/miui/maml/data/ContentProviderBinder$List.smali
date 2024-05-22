.class Lcom/miui/maml/data/ContentProviderBinder$List;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mList:Lcom/miui/maml/elements/ListScreenElement;

.field private mMaxCount:I

.field private mName:Ljava/lang/String;

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "name"

    .line 5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    .line 11
    const-string v0, "maxCount"

    .line 13
    const v1, 0x7fffffff

    .line 15
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 18
    move-result p1

    .line 21
    iput p1, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    .line 22
    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public fill(Landroid/database/Cursor;)V
    .locals 13

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 5
    const-string v1, "ContentProviderBinder"

    .line 7
    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 11
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 15
    move-result-object v0

    .line 18
    instance-of v2, v0, Lcom/miui/maml/elements/ListScreenElement;

    .line 19
    if-eqz v2, :cond_1

    .line 21
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement;

    .line 23
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 27
    if-nez v0, :cond_2

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    const-string v0, "fail to find list: "

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    .line 38
    invoke-static {p1, p0, v1}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 44
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 46
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 49
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v2

    .line 58
    new-array v3, v2, [I

    .line 59
    new-array v4, v2, [Ljava/lang/Object;

    .line 61
    const/4 v5, 0x0

    .line 63
    move v6, v5

    .line 64
    :goto_0
    if-ge v6, v2, :cond_3

    .line 65
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v7

    .line 70
    check-cast v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 71
    iget-object v7, v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 73
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 75
    move-result v7

    .line 78
    aput v7, v3, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 81
    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "illegal column:"

    .line 87
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 95
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 96
    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, " "

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 122
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 126
    move-result v1

    .line 129
    iget v6, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    .line 130
    if-le v1, v6, :cond_4

    .line 132
    move v1, v6

    .line 134
    :cond_4
    move v6, v5

    .line 135
    :goto_1
    if-ge v6, v1, :cond_d

    .line 136
    move v7, v5

    .line 138
    :goto_2
    if-ge v7, v2, :cond_c

    .line 139
    const/4 v8, 0x0

    .line 141
    aput-object v8, v4, v7

    .line 142
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object v8

    .line 147
    check-cast v8, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 148
    aget v9, v3, v7

    .line 150
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 152
    move-result v10

    .line 155
    if-nez v10, :cond_b

    .line 156
    sget-object v10, Lcom/miui/maml/data/ContentProviderBinder$2;->$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    .line 158
    iget-object v11, v8, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 160
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 162
    move-result v11

    .line 165
    aget v11, v10, v11

    .line 166
    const/4 v12, 0x5

    .line 168
    if-eq v11, v12, :cond_a

    .line 169
    const/4 v12, 0x6

    .line 171
    if-eq v11, v12, :cond_9

    .line 172
    iget-object v8, v8, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 174
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 176
    move-result v8

    .line 179
    aget v8, v10, v8

    .line 180
    const/4 v10, 0x1

    .line 182
    if-eq v8, v10, :cond_8

    .line 183
    const/4 v10, 0x2

    .line 185
    if-eq v8, v10, :cond_7

    .line 186
    const/4 v10, 0x3

    .line 188
    if-eq v8, v10, :cond_6

    .line 189
    const/4 v10, 0x4

    .line 191
    if-eq v8, v10, :cond_5

    .line 192
    goto :goto_3

    .line 194
    :cond_5
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 195
    move-result-wide v8

    .line 198
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    move-result-object v8

    .line 202
    aput-object v8, v4, v7

    .line 203
    goto :goto_3

    .line 205
    :cond_6
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 206
    move-result v8

    .line 209
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v8

    .line 213
    aput-object v8, v4, v7

    .line 214
    goto :goto_3

    .line 216
    :cond_7
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getFloat(I)F

    .line 217
    move-result v8

    .line 220
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    move-result-object v8

    .line 224
    aput-object v8, v4, v7

    .line 225
    goto :goto_3

    .line 227
    :cond_8
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getDouble(I)D

    .line 228
    move-result-wide v8

    .line 231
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 232
    move-result-object v8

    .line 235
    aput-object v8, v4, v7

    .line 236
    goto :goto_3

    .line 238
    :cond_9
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 239
    move-result-object v8

    .line 242
    if-eqz v8, :cond_b

    .line 243
    array-length v9, v8

    .line 245
    invoke-static {v8, v5, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 246
    move-result-object v8

    .line 249
    aput-object v8, v4, v7

    .line 250
    goto :goto_3

    .line 252
    :cond_a
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 253
    move-result-object v8

    .line 256
    aput-object v8, v4, v7

    .line 257
    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 259
    goto :goto_2

    .line 261
    :cond_c
    iget-object v7, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 262
    invoke-virtual {v7, v4}, Lcom/miui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    .line 264
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 267
    add-int/lit8 v6, v6, 0x1

    .line 270
    goto/16 :goto_1

    .line 272
    :cond_d
    return-void
    .line 274
.end method
