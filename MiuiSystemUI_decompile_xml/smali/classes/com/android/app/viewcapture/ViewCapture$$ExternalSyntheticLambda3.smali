.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Landroid/view/View;

    .line 11
    check-cast p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    .line 13
    iget-object v0, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    .line 15
    if-ne p0, v0, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 23
    iput-object v1, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    .line 26
    :cond_0
    return-void

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 29
    check-cast p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    .line 31
    check-cast p1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    iget-wide v2, p1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->choreographerTimeNanos:J

    .line 38
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    .line 40
    const/4 v4, 0x1

    .line 42
    add-int/2addr v0, v4

    .line 43
    iput v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    .line 44
    iget-object v5, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 46
    iget v5, v5, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    .line 48
    const/4 v6, 0x0

    .line 50
    if-lt v0, v5, :cond_1

    .line 51
    iput v6, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameTimesNanosBg:[J

    .line 55
    iget v5, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    .line 57
    aput-wide v2, v0, v5

    .line 59
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 61
    aget-object v0, v0, v5

    .line 63
    move-object v2, p1

    .line 65
    move-object v3, v1

    .line 66
    move-object v5, v3

    .line 67
    :goto_1
    if-nez v0, :cond_2

    .line 68
    new-instance v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 70
    invoke-direct {v7}, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;-><init>()V

    .line 72
    move-object v12, v7

    .line 75
    move-object v7, v0

    .line 76
    move-object v0, v12

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    iget-object v7, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 79
    iput-object v1, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 81
    :goto_2
    iget v8, v2, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    .line 83
    if-gez v8, :cond_6

    .line 85
    iget-object v8, v2, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->view:Landroid/view/View;

    .line 87
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    .line 89
    move-result v8

    .line 92
    iget v9, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    .line 93
    if-nez v9, :cond_3

    .line 95
    iget-object v9, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 97
    iget v9, v9, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    .line 99
    :cond_3
    add-int/lit8 v9, v9, -0x1

    .line 101
    iget-object v10, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 103
    aget-object v9, v10, v9

    .line 105
    :goto_3
    if-eqz v9, :cond_4

    .line 107
    iget v10, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    .line 109
    if-eq v10, v8, :cond_4

    .line 111
    iget-object v9, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 113
    goto :goto_3

    .line 115
    :cond_4
    if-eqz v9, :cond_5

    .line 116
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    .line 118
    goto :goto_4

    .line 120
    :cond_5
    move v8, v6

    .line 121
    :goto_4
    iput v8, v2, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    .line 122
    goto :goto_5

    .line 124
    :cond_6
    move-object v9, v1

    .line 125
    :goto_5
    iget v8, v2, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    .line 126
    iput v8, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    .line 128
    iget-object v8, v2, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->view:Landroid/view/View;

    .line 130
    iput-object v1, v2, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->view:Landroid/view/View;

    .line 132
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    move-result-object v10

    .line 137
    iput-object v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    .line 138
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    .line 140
    move-result v10

    .line 143
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    .line 144
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 146
    move-result v10

    .line 149
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->id:I

    .line 150
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 152
    move-result v10

    .line 155
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    .line 156
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 158
    move-result v10

    .line 161
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    .line 162
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 164
    move-result v10

    .line 167
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->right:I

    .line 168
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 170
    move-result v10

    .line 173
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->bottom:I

    .line 174
    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    .line 176
    move-result v10

    .line 179
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollX:I

    .line 180
    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    .line 182
    move-result v10

    .line 185
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollY:I

    .line 186
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    .line 188
    move-result v10

    .line 191
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateX:F

    .line 192
    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    .line 194
    move-result v10

    .line 197
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateY:F

    .line 198
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    .line 200
    move-result v10

    .line 203
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleX:F

    .line 204
    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    .line 206
    move-result v10

    .line 209
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleY:F

    .line 210
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    .line 212
    move-result v10

    .line 215
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->alpha:F

    .line 216
    invoke-virtual {v8}, Landroid/view/View;->getElevation()F

    .line 218
    move-result v10

    .line 221
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->elevation:F

    .line 222
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 224
    move-result v10

    .line 227
    iput v10, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->visibility:I

    .line 228
    invoke-virtual {v8}, Landroid/view/View;->willNotDraw()Z

    .line 230
    move-result v8

    .line 233
    iput-boolean v8, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->willNotDraw:Z

    .line 234
    if-nez v3, :cond_7

    .line 236
    move-object v3, v0

    .line 238
    goto :goto_6

    .line 239
    :cond_7
    iput-object v0, v5, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 240
    :goto_6
    if-eqz v9, :cond_9

    .line 242
    iget v5, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    .line 244
    :goto_7
    if-lez v5, :cond_9

    .line 246
    iget-object v9, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 248
    add-int/lit8 v5, v5, -0x1

    .line 250
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    .line 252
    add-int/2addr v5, v8

    .line 254
    if-nez v7, :cond_8

    .line 255
    new-instance v10, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 257
    invoke-direct {v10}, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;-><init>()V

    .line 259
    move-object v12, v10

    .line 262
    move-object v10, v7

    .line 263
    move-object v7, v12

    .line 264
    goto :goto_8

    .line 265
    :cond_8
    iget-object v10, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 266
    iput-object v1, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 268
    :goto_8
    iget-object v11, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    .line 270
    iput-object v11, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    .line 272
    iget v11, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    .line 274
    iput v11, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    .line 276
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    .line 278
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->id:I

    .line 280
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->id:I

    .line 282
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    .line 284
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    .line 286
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    .line 288
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    .line 290
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->right:I

    .line 292
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->right:I

    .line 294
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->bottom:I

    .line 296
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->bottom:I

    .line 298
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollX:I

    .line 300
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollX:I

    .line 302
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollY:I

    .line 304
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollY:I

    .line 306
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleX:F

    .line 308
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleX:F

    .line 310
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleY:F

    .line 312
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleY:F

    .line 314
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateX:F

    .line 316
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateX:F

    .line 318
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateY:F

    .line 320
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateY:F

    .line 322
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->alpha:F

    .line 324
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->alpha:F

    .line 326
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->visibility:I

    .line 328
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->visibility:I

    .line 330
    iget-boolean v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->willNotDraw:Z

    .line 332
    iput-boolean v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->willNotDraw:Z

    .line 334
    iget-boolean v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clipChildren:Z

    .line 336
    iput-boolean v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clipChildren:Z

    .line 338
    iget v8, v9, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->elevation:F

    .line 340
    iput v8, v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->elevation:F

    .line 342
    iput-object v7, v0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 344
    move-object v0, v7

    .line 346
    move-object v7, v10

    .line 347
    goto :goto_7

    .line 348
    :cond_9
    move-object v5, v0

    .line 349
    move-object v0, v7

    .line 350
    iget-object v7, v2, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 351
    if-nez v7, :cond_a

    .line 353
    sget-object v0, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    .line 355
    new-instance v1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;

    .line 357
    invoke-direct {v1, p0, p1, v2, v4}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Lcom/android/app/viewcapture/ViewCapture$ViewRef;Lcom/android/app/viewcapture/ViewCapture$ViewRef;I)V

    .line 359
    invoke-virtual {v0, v1}, Lcom/android/app/viewcapture/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 362
    iget-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 365
    iget p0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    .line 367
    aput-object v3, p1, p0

    .line 369
    return-void

    .line 371
    :cond_a
    move-object v2, v7

    .line 372
    goto/16 :goto_1

    .line 373
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 376
.end method
