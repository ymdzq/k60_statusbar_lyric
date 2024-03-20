.class public final Landroidx/recyclerview/widget/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 4
    iput-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->$r8$classId:I

    .line 4
    const/4 v3, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    goto/16 :goto_5

    .line 10
    :pswitch_0
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v4

    .line 21
    if-eqz v4, :cond_4

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 27
    check-cast v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 28
    iget-object v11, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 30
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    iget-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 35
    const/4 v6, 0x0

    .line 37
    if-nez v5, :cond_0

    .line 38
    move-object v9, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 42
    move-object v9, v5

    .line 44
    :goto_1
    iget-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 45
    if-eqz v5, :cond_1

    .line 47
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 49
    move-object v12, v5

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    move-object v12, v6

    .line 53
    :goto_2
    iget-object v13, v11, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 54
    iget-wide v14, v11, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 56
    if-eqz v9, :cond_2

    .line 58
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 60
    move-result-object v5

    .line 63
    invoke-virtual {v5, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 64
    move-result-object v8

    .line 67
    iget-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 68
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    .line 73
    iget v6, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    .line 75
    sub-int/2addr v5, v6

    .line 77
    int-to-float v5, v5

    .line 78
    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 79
    iget v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    .line 82
    iget v6, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    .line 84
    sub-int/2addr v5, v6

    .line 86
    int-to-float v5, v5

    .line 87
    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 88
    invoke-virtual {v8, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 91
    move-result-object v10

    .line 94
    new-instance v7, Landroidx/recyclerview/widget/DefaultItemAnimator$7;

    .line 95
    const/16 v16, 0x0

    .line 97
    move-object v5, v7

    .line 99
    move-object v6, v11

    .line 100
    move-object v2, v7

    .line 101
    move-object v7, v4

    .line 102
    move-object v3, v10

    .line 103
    move/from16 v10, v16

    .line 104
    invoke-direct/range {v5 .. v10}, Landroidx/recyclerview/widget/DefaultItemAnimator$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 106
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 109
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 113
    :cond_2
    if-eqz v12, :cond_3

    .line 116
    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 118
    move-result-object v8

    .line 121
    iget-object v2, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 122
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v2, 0x0

    .line 127
    invoke-virtual {v8, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 128
    move-result-object v3

    .line 131
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 132
    move-result-object v3

    .line 135
    invoke-virtual {v3, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 136
    move-result-object v2

    .line 139
    const/high16 v3, 0x3f800000    # 1.0f

    .line 140
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 142
    move-result-object v2

    .line 145
    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator$7;

    .line 146
    const/4 v10, 0x1

    .line 148
    move-object v5, v3

    .line 149
    move-object v6, v11

    .line 150
    move-object v7, v4

    .line 151
    move-object v9, v12

    .line 152
    invoke-direct/range {v5 .. v10}, Landroidx/recyclerview/widget/DefaultItemAnimator$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 153
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 156
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 160
    :cond_3
    const/4 v3, 0x0

    .line 163
    goto/16 :goto_0

    .line 164
    :cond_4
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 168
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 171
    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 173
    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    return-void

    .line 180
    :pswitch_1
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object v1

    .line 186
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v2

    .line 190
    if-eqz v2, :cond_7

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v2

    .line 196
    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 197
    iget-object v4, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 199
    iget-object v5, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 206
    iget v3, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toX:I

    .line 208
    iget v6, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 210
    sub-int v6, v3, v6

    .line 212
    iget v3, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 214
    iget v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 216
    sub-int v8, v3, v2

    .line 218
    if-eqz v6, :cond_5

    .line 220
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 222
    move-result-object v2

    .line 225
    const/4 v10, 0x0

    .line 226
    invoke-virtual {v2, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 227
    goto :goto_4

    .line 230
    :cond_5
    const/4 v10, 0x0

    .line 231
    :goto_4
    if-eqz v8, :cond_6

    .line 232
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 234
    move-result-object v2

    .line 237
    invoke-virtual {v2, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 238
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 241
    move-result-object v9

    .line 244
    iget-object v2, v4, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-wide v2, v4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 250
    invoke-virtual {v9, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 252
    move-result-object v2

    .line 255
    new-instance v11, Landroidx/recyclerview/widget/DefaultItemAnimator$6;

    .line 256
    move-object v3, v11

    .line 258
    invoke-direct/range {v3 .. v9}, Landroidx/recyclerview/widget/DefaultItemAnimator$6;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    .line 259
    invoke-virtual {v2, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 262
    move-result-object v2

    .line 265
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 266
    goto :goto_3

    .line 269
    :cond_7
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 275
    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 277
    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 279
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 281
    return-void

    .line 284
    :goto_5
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 287
    move-result-object v1

    .line 290
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    move-result v2

    .line 294
    if-eqz v2, :cond_8

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    move-result-object v2

    .line 300
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 301
    iget-object v3, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 303
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 308
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 310
    move-result-object v5

    .line 313
    iget-object v6, v3, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const/high16 v6, 0x3f800000    # 1.0f

    .line 319
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 321
    move-result-object v7

    .line 324
    iget-wide v8, v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 325
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 327
    move-result-object v7

    .line 330
    new-instance v8, Landroidx/recyclerview/widget/DefaultItemAnimator$4;

    .line 331
    invoke-direct {v8, v3, v2, v4, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$4;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 333
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 336
    move-result-object v2

    .line 339
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 340
    goto :goto_6

    .line 343
    :cond_8
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 344
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 349
    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 351
    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 355
    return-void

    .line 358
    nop

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 360
.end method
