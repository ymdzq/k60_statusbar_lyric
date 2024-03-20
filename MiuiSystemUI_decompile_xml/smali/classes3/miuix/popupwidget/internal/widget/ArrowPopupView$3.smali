.class public final Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;
.super Landroid/view/ViewOutlineProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 4
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto/16 :goto_5

    .line 8
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_c

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    goto/16 :goto_4

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 28
    move-result p1

    .line 31
    new-instance v2, Landroid/graphics/Rect;

    .line 32
    invoke-direct {v2, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    if-le v0, p1, :cond_1

    .line 37
    sub-int/2addr v0, p1

    .line 39
    div-int/lit8 v0, v0, 0x2

    .line 40
    iget p1, v2, Landroid/graphics/Rect;->left:I

    .line 42
    add-int/2addr p1, v0

    .line 44
    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 45
    iget p1, v2, Landroid/graphics/Rect;->right:I

    .line 47
    sub-int/2addr p1, v0

    .line 49
    iput p1, v2, Landroid/graphics/Rect;->right:I

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    sub-int/2addr p1, v0

    .line 53
    div-int/lit8 p1, p1, 0x2

    .line 54
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 56
    add-int/2addr v0, p1

    .line 58
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 59
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 61
    sub-int/2addr v0, p1

    .line 63
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 64
    :goto_0
    new-instance p1, Landroid/graphics/Path;

    .line 66
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 68
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 71
    iget v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 73
    const/high16 v4, 0x40000000    # 2.0f

    .line 75
    const/16 v5, 0x40

    .line 77
    const/16 v6, 0x20

    .line 79
    const/4 v7, 0x1

    .line 81
    if-eq v3, v6, :cond_6

    .line 82
    if-eq v3, v5, :cond_6

    .line 84
    packed-switch v3, :pswitch_data_1

    .line 86
    goto/16 :goto_3

    .line 89
    :pswitch_1
    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 91
    if-eq v4, v7, :cond_2

    .line 93
    const/16 v5, 0x9

    .line 95
    if-eq v3, v5, :cond_3

    .line 97
    :cond_2
    if-ne v4, v7, :cond_4

    .line 99
    const/16 v4, 0xa

    .line 101
    if-ne v3, v4, :cond_4

    .line 103
    :cond_3
    move v1, v7

    .line 105
    :cond_4
    iget-object v0, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 108
    move-result v0

    .line 111
    int-to-float v0, v0

    .line 112
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 114
    const v0, 0x3f333333    # 0.7f

    .line 117
    if-eqz v1, :cond_5

    .line 120
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 122
    iget-object v1, v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 126
    move-result v1

    .line 129
    neg-int v1, v1

    .line 130
    int-to-float v1, v1

    .line 131
    mul-float/2addr v1, v0

    .line 132
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 133
    int-to-float v0, v0

    .line 135
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 136
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 140
    move-result p0

    .line 143
    int-to-float p0, p0

    .line 144
    invoke-virtual {p1, v3, v1, v0, p0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 145
    goto :goto_1

    .line 148
    :cond_5
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 149
    int-to-float v1, v1

    .line 151
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 152
    iget-object v3, v3, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 156
    move-result v3

    .line 159
    neg-int v3, v3

    .line 160
    int-to-float v3, v3

    .line 161
    mul-float/2addr v3, v0

    .line 162
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 163
    int-to-float v0, v0

    .line 165
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 166
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 170
    move-result p0

    .line 173
    int-to-float p0, p0

    .line 174
    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 175
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 178
    goto :goto_3

    .line 181
    :pswitch_2
    iget p0, v2, Landroid/graphics/Rect;->right:I

    .line 182
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 184
    add-int/2addr p0, v0

    .line 186
    int-to-float p0, p0

    .line 187
    div-float/2addr p0, v4

    .line 188
    int-to-float v0, v0

    .line 189
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 190
    int-to-float v1, v1

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 193
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 196
    move-result v0

    .line 199
    neg-int v0, v0

    .line 200
    int-to-float v0, v0

    .line 201
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 202
    int-to-float v1, v1

    .line 204
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 205
    int-to-float v3, v3

    .line 207
    invoke-virtual {p1, p0, v0, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 211
    goto :goto_3

    .line 214
    :cond_6
    iget p0, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 215
    if-eq p0, v7, :cond_7

    .line 217
    if-eq v3, v6, :cond_8

    .line 219
    :cond_7
    if-ne p0, v7, :cond_9

    .line 221
    if-ne v3, v5, :cond_9

    .line 223
    :cond_8
    move v1, v7

    .line 225
    :cond_9
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 226
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 228
    add-int/2addr p0, v0

    .line 230
    int-to-float p0, p0

    .line 231
    div-float/2addr p0, v4

    .line 232
    if-eqz v1, :cond_a

    .line 233
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 235
    int-to-float v1, v1

    .line 237
    int-to-float v0, v0

    .line 238
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 239
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 242
    move-result v0

    .line 245
    neg-int v0, v0

    .line 246
    int-to-float v0, v0

    .line 247
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 248
    int-to-float v1, v1

    .line 250
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 251
    int-to-float v3, v3

    .line 253
    invoke-virtual {p1, v0, p0, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 254
    goto :goto_2

    .line 257
    :cond_a
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 258
    int-to-float v1, v1

    .line 260
    int-to-float v0, v0

    .line 261
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 262
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 265
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 267
    move-result v1

    .line 270
    add-int/2addr v1, v0

    .line 271
    int-to-float v0, v1

    .line 272
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 273
    int-to-float v1, v1

    .line 275
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 276
    int-to-float v3, v3

    .line 278
    invoke-virtual {p1, v0, p0, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 279
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 282
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    .line 285
    move-result p0

    .line 288
    if-eqz p0, :cond_b

    .line 289
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 291
    goto :goto_4

    .line 294
    :cond_b
    const-string p0, "ArrowPopupView"

    .line 295
    const-string p1, "outline path is not convex"

    .line 297
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p2, v2}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 302
    :cond_c
    :goto_4
    return-void

    .line 305
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 306
    move-result v0

    .line 309
    if-eqz v0, :cond_e

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 312
    move-result v0

    .line 315
    if-nez v0, :cond_d

    .line 316
    goto :goto_6

    .line 318
    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 321
    move-result v2

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 325
    move-result v3

    .line 328
    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 334
    move-result v2

    .line 337
    sub-int/2addr v1, v2

    .line 338
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 339
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 343
    move-result v2

    .line 346
    add-int/2addr v2, v1

    .line 347
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 348
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 352
    move-result v2

    .line 355
    sub-int/2addr v1, v2

    .line 356
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 357
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 361
    move-result p1

    .line 364
    add-int/2addr p1, v1

    .line 365
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 366
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 370
    move-result-object p0

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 374
    move-result-object p0

    .line 377
    const p1, 0x7f070a39    # @dimen/miuix_appcompat_arrow_popup_view_round_corners '14.0dp'

    .line 378
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 381
    move-result p0

    .line 384
    int-to-float p0, p0

    .line 385
    invoke-virtual {p2, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 386
    :cond_e
    :goto_6
    return-void

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 390
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
    .line 396
.end method
