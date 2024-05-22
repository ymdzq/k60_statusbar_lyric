.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_b

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 9
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;->f$1:I

    .line 11
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 13
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mUserManager:Landroid/os/UserManager;

    .line 15
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 17
    move-result-object v1

    .line 20
    const/4 v2, -0x1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    move-result v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v2

    .line 33
    :goto_0
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v5, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    .line 44
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 46
    move-result-object v5

    .line 49
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v5

    .line 53
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v6

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x1

    .line 59
    if-eqz v6, :cond_3

    .line 60
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v6

    .line 65
    check-cast v6, Lcom/android/wm/shell/bubbles/Bubble;

    .line 66
    iget-object v9, v6, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 68
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    .line 70
    move-result v9

    .line 73
    if-ne p0, v9, :cond_2

    .line 74
    move v7, v8

    .line 76
    :cond_2
    if-eqz v7, :cond_1

    .line 77
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_1

    .line 82
    :cond_3
    iget-object v5, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    .line 83
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 85
    move-result-object v5

    .line 88
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v5

    .line 92
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v6

    .line 96
    if-eqz v6, :cond_6

    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 102
    check-cast v6, Lcom/android/wm/shell/bubbles/Bubble;

    .line 103
    iget-object v9, v6, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 105
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    .line 107
    move-result v9

    .line 110
    if-ne p0, v9, :cond_5

    .line 111
    move v9, v8

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    move v9, v7

    .line 115
    :goto_3
    if-eqz v9, :cond_4

    .line 116
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_2

    .line 121
    :cond_6
    iget-object v5, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 122
    check-cast v5, Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object v5

    .line 129
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v6

    .line 133
    if-eqz v6, :cond_9

    .line 134
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v6

    .line 139
    check-cast v6, Lcom/android/wm/shell/bubbles/Bubble;

    .line 140
    iget-object v9, v6, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 142
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    .line 144
    move-result v9

    .line 147
    if-ne p0, v9, :cond_8

    .line 148
    move v9, v8

    .line 150
    goto :goto_5

    .line 151
    :cond_8
    move v9, v7

    .line 152
    :goto_5
    if-eqz v9, :cond_7

    .line 153
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_4

    .line 158
    :cond_9
    iget-object v5, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 159
    check-cast v5, Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 163
    move-result-object v5

    .line 166
    :cond_a
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    move-result v6

    .line 170
    if-eqz v6, :cond_c

    .line 171
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    move-result-object v6

    .line 176
    check-cast v6, Lcom/android/wm/shell/bubbles/Bubble;

    .line 177
    iget-object v9, v6, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 179
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    .line 181
    move-result v9

    .line 184
    if-ne p0, v9, :cond_b

    .line 185
    move v9, v8

    .line 187
    goto :goto_7

    .line 188
    :cond_b
    move v9, v7

    .line 189
    :goto_7
    if-eqz v9, :cond_a

    .line 190
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    goto :goto_6

    .line 195
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 196
    move-result-object v5

    .line 199
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    move-result v6

    .line 203
    if-eqz v6, :cond_d

    .line 204
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    move-result-object v6

    .line 209
    check-cast v6, Lcom/android/wm/shell/bubbles/Bubble;

    .line 210
    iget-object v6, v6, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 212
    const/16 v9, 0x10

    .line 214
    invoke-virtual {v3, v9, v6}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(ILjava/lang/String;)V

    .line 216
    goto :goto_8

    .line 219
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 220
    move-result v4

    .line 223
    if-nez v4, :cond_e

    .line 224
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    .line 226
    :cond_e
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 229
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 231
    monitor-enter v3

    .line 233
    if-eq v1, v2, :cond_10

    .line 234
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    :try_start_1
    iget-object v2, v3, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    .line 237
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 239
    move-result-object v2

    .line 242
    if-eqz v2, :cond_f

    .line 243
    iget-object v2, v3, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    .line 245
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object v1

    .line 250
    check-cast v1, Ljava/util/List;

    .line 251
    new-instance v2, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;

    .line 253
    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;-><init>(I)V

    .line 255
    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 258
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :try_start_2
    monitor-exit v3

    .line 262
    goto :goto_9

    .line 263
    :cond_f
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    :goto_9
    monitor-exit v3

    .line 265
    goto :goto_a

    .line 266
    :catchall_0
    move-exception p0

    .line 267
    :try_start_3
    monitor-exit v3

    .line 268
    throw p0

    .line 269
    :cond_10
    iget-object v1, v3, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    .line 270
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 272
    move-result-object v1

    .line 275
    check-cast v1, Ljava/util/List;

    .line 276
    iget-object v2, v3, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    .line 278
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    if-eqz v1, :cond_11

    .line 283
    move v7, v8

    .line 285
    :cond_11
    monitor-exit v3

    .line 286
    :goto_a
    if-eqz v7, :cond_12

    .line 287
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk()V

    .line 289
    :cond_12
    return-void

    .line 292
    :catchall_1
    move-exception p0

    .line 293
    monitor-exit v3

    .line 294
    throw p0

    .line 295
    :goto_b
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 296
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;->f$1:I

    .line 298
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 300
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->onUserChanged(I)V

    .line 302
    return-void

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 306
.end method
