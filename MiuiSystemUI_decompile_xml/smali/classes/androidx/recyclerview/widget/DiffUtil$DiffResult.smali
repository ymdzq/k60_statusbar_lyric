.class public final Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field public final mDetectMoves:Z

.field public final mDiagonals:Ljava/util/List;

.field public final mNewItemStatuses:[I

.field public final mNewListSize:I

.field public final mOldItemStatuses:[I

.field public final mOldListSize:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 5
    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 7
    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 12
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 15
    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    .line 20
    move-result p3

    .line 23
    iput p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    .line 26
    move-result p1

    .line 29
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 30
    const/4 p4, 0x1

    .line 32
    iput-boolean p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 33
    check-cast p2, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 49
    :goto_0
    if-eqz v1, :cond_1

    .line 51
    iget v2, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 53
    if-nez v2, :cond_1

    .line 55
    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 57
    if-eqz v1, :cond_2

    .line 59
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 61
    invoke-direct {v1, v0, v0, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 63
    invoke-virtual {p2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 66
    :cond_2
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 69
    invoke-direct {v1, p3, p1, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 71
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object p1

    .line 80
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result p3

    .line 84
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 85
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 87
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 89
    if-eqz p3, :cond_5

    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object p3

    .line 96
    check-cast p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 97
    move v4, v0

    .line 99
    :goto_1
    iget v5, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 100
    if-ge v4, v5, :cond_3

    .line 102
    iget v5, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 104
    add-int/2addr v5, v4

    .line 106
    iget v6, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 107
    add-int/2addr v6, v4

    .line 109
    invoke-virtual {v1, v5, v6}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    .line 110
    move-result v7

    .line 113
    if-eqz v7, :cond_4

    .line 114
    move v7, p4

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 v7, 0x2

    .line 118
    :goto_2
    shl-int/lit8 v8, v6, 0x4

    .line 119
    or-int/2addr v8, v7

    .line 121
    aput v8, v3, v5

    .line 122
    shl-int/lit8 v5, v5, 0x4

    .line 124
    or-int/2addr v5, v7

    .line 126
    aput v5, v2, v6

    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 129
    goto :goto_1

    .line 131
    :cond_5
    iget-boolean p0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 132
    if-eqz p0, :cond_b

    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object p0

    .line 139
    move p1, v0

    .line 140
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result p3

    .line 144
    if-eqz p3, :cond_b

    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object p3

    .line 150
    check-cast p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 151
    :goto_4
    iget p4, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 153
    if-ge p1, p4, :cond_a

    .line 155
    aget p4, v3, p1

    .line 157
    if-nez p4, :cond_9

    .line 159
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 161
    move-result p4

    .line 164
    move v4, v0

    .line 165
    move v5, v4

    .line 166
    :goto_5
    if-ge v4, p4, :cond_9

    .line 167
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v6

    .line 172
    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 173
    :goto_6
    iget v7, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 175
    if-ge v5, v7, :cond_8

    .line 177
    aget v7, v2, v5

    .line 179
    if-nez v7, :cond_7

    .line 181
    invoke-virtual {v1, p1, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    .line 183
    move-result v7

    .line 186
    if-eqz v7, :cond_7

    .line 187
    invoke-virtual {v1, p1, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    .line 189
    move-result p4

    .line 192
    if-eqz p4, :cond_6

    .line 193
    const/16 p4, 0x8

    .line 195
    goto :goto_7

    .line 197
    :cond_6
    const/4 p4, 0x4

    .line 198
    :goto_7
    shl-int/lit8 v4, v5, 0x4

    .line 199
    or-int/2addr v4, p4

    .line 201
    aput v4, v3, p1

    .line 202
    shl-int/lit8 v4, p1, 0x4

    .line 204
    or-int/2addr p4, v4

    .line 206
    aput p4, v2, v5

    .line 207
    goto :goto_8

    .line 209
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 210
    goto :goto_6

    .line 212
    :cond_8
    iget v5, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 213
    add-int/2addr v5, v7

    .line 215
    add-int/lit8 v4, v4, 0x1

    .line 216
    goto :goto_5

    .line 218
    :cond_9
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 219
    goto :goto_4

    .line 221
    :cond_a
    iget p1, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 222
    add-int/2addr p1, p4

    .line 224
    goto :goto_3

    .line 225
    :cond_b
    return-void
    .line 226
.end method

.method public static getPostponedUpdate(ZLjava/util/Collection;I)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 18
    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 20
    if-ne v1, p2, :cond_0

    .line 22
    iget-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    .line 24
    if-ne v1, p0, :cond_0

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result p2

    .line 36
    if-eqz p2, :cond_3

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 42
    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 43
    if-eqz p0, :cond_2

    .line 45
    iget v1, p2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 49
    iput v1, p2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    iget v1, p2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 56
    iput v1, p2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 58
    goto :goto_0

    .line 60
    :cond_3
    return-object v0
    .line 61
.end method


# virtual methods
.method public final dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    .line 4
    move-object/from16 v2, p1

    .line 6
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    instance-of v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    check-cast v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 18
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/AdapterListUpdateCallback;)V

    .line 20
    move-object v1, v2

    .line 23
    :goto_0
    new-instance v2, Ljava/util/ArrayDeque;

    .line 24
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 26
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 29
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 31
    move-result v4

    .line 34
    const/4 v5, 0x1

    .line 35
    sub-int/2addr v4, v5

    .line 36
    iget v6, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 37
    iget v7, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 39
    move v8, v7

    .line 41
    move v7, v6

    .line 42
    :goto_1
    if-ltz v4, :cond_b

    .line 43
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v9

    .line 48
    check-cast v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 49
    iget v10, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 51
    iget v11, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 53
    add-int/2addr v10, v11

    .line 55
    iget v12, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 56
    add-int v13, v11, v12

    .line 58
    :goto_2
    const/4 v15, 0x0

    .line 60
    iget-object v14, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 61
    iget-object v5, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 63
    if-le v7, v10, :cond_4

    .line 65
    add-int/lit8 v7, v7, -0x1

    .line 67
    aget v14, v14, v7

    .line 69
    and-int/lit8 v16, v14, 0xc

    .line 71
    if-eqz v16, :cond_2

    .line 73
    move-object/from16 v16, v3

    .line 75
    shr-int/lit8 v3, v14, 0x4

    .line 77
    invoke-static {v15, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(ZLjava/util/Collection;I)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 79
    move-result-object v3

    .line 82
    if-eqz v3, :cond_1

    .line 83
    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 85
    sub-int v3, v6, v3

    .line 87
    const/4 v15, 0x1

    .line 89
    sub-int/2addr v3, v15

    .line 90
    invoke-virtual {v1, v7, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 91
    and-int/lit8 v14, v14, 0x4

    .line 94
    if-eqz v14, :cond_3

    .line 96
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    const/4 v5, 0x0

    .line 101
    invoke-virtual {v1, v3, v15, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 102
    goto :goto_3

    .line 105
    :cond_1
    const/4 v15, 0x1

    .line 106
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 107
    sub-int v5, v6, v7

    .line 109
    sub-int/2addr v5, v15

    .line 111
    invoke-direct {v3, v7, v5, v15}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 112
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_3

    .line 118
    :cond_2
    move-object/from16 v16, v3

    .line 119
    const/4 v15, 0x1

    .line 121
    invoke-virtual {v1, v7, v15}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    .line 122
    add-int/lit8 v6, v6, -0x1

    .line 125
    :cond_3
    :goto_3
    move-object/from16 v3, v16

    .line 127
    const/4 v5, 0x1

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    move-object/from16 v16, v3

    .line 131
    :goto_4
    if-le v8, v13, :cond_8

    .line 133
    add-int/lit8 v8, v8, -0x1

    .line 135
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 137
    aget v3, v3, v8

    .line 139
    and-int/lit8 v10, v3, 0xc

    .line 141
    if-eqz v10, :cond_6

    .line 143
    shr-int/lit8 v10, v3, 0x4

    .line 145
    const/4 v15, 0x1

    .line 147
    invoke-static {v15, v2, v10}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(ZLjava/util/Collection;I)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 148
    move-result-object v10

    .line 151
    if-nez v10, :cond_5

    .line 152
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 154
    sub-int v10, v6, v7

    .line 156
    const/4 v15, 0x0

    .line 158
    invoke-direct {v3, v8, v10, v15}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 159
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 162
    const/4 v15, 0x1

    .line 165
    goto :goto_5

    .line 166
    :cond_5
    const/4 v15, 0x0

    .line 167
    iget v10, v10, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 168
    sub-int v10, v6, v10

    .line 170
    const/4 v15, 0x1

    .line 172
    sub-int/2addr v10, v15

    .line 173
    invoke-virtual {v1, v10, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 174
    and-int/lit8 v3, v3, 0x4

    .line 177
    if-eqz v3, :cond_7

    .line 179
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    const/4 v3, 0x0

    .line 184
    invoke-virtual {v1, v7, v15, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 185
    goto :goto_5

    .line 188
    :cond_6
    const/4 v15, 0x1

    .line 189
    invoke-virtual {v1, v7, v15}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    .line 190
    add-int/lit8 v6, v6, 0x1

    .line 193
    :cond_7
    :goto_5
    const/4 v15, 0x0

    .line 195
    goto :goto_4

    .line 196
    :cond_8
    iget v7, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 197
    move v3, v7

    .line 199
    const/4 v15, 0x0

    .line 200
    :goto_6
    if-ge v15, v11, :cond_a

    .line 201
    aget v8, v14, v3

    .line 203
    and-int/lit8 v8, v8, 0xf

    .line 205
    const/4 v9, 0x2

    .line 207
    if-ne v8, v9, :cond_9

    .line 208
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    const/4 v8, 0x0

    .line 213
    const/4 v9, 0x1

    .line 214
    invoke-virtual {v1, v3, v9, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 215
    goto :goto_7

    .line 218
    :cond_9
    const/4 v8, 0x0

    .line 219
    const/4 v9, 0x1

    .line 220
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 221
    add-int/lit8 v15, v15, 0x1

    .line 223
    goto :goto_6

    .line 225
    :cond_a
    const/4 v9, 0x1

    .line 226
    add-int/lit8 v4, v4, -0x1

    .line 227
    move v5, v9

    .line 229
    move v8, v12

    .line 230
    move-object/from16 v3, v16

    .line 231
    goto/16 :goto_1

    .line 233
    :cond_b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 235
    return-void
    .line 238
.end method
