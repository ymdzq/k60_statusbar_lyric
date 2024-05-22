.class public final synthetic Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    const v2, 0x3f666666    # 0.9f

    .line 6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 11
    goto/16 :goto_0

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 16
    sget v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->$r8$clinit:I

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 23
    move-result v0

    .line 26
    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 27
    move-result v0

    .line 30
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 33
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    .line 36
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 38
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 41
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleX(F)V

    .line 43
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 46
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    .line 48
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    .line 51
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleX(F)V

    .line 53
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    .line 56
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 63
    move-result v0

    .line 66
    int-to-float v0, v0

    .line 67
    div-float/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    .line 71
    move-result v1

    .line 74
    add-float/2addr v1, v0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 78
    move-result v4

    .line 81
    sub-float v4, v1, v4

    .line 82
    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 87
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 89
    move-result-object v4

    .line 92
    check-cast v4, Landroid/view/View;

    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    .line 95
    move-result v4

    .line 98
    sub-float/2addr v1, v4

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 100
    const v0, 0x3f333333    # 0.7f

    .line 103
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 106
    move-result v1

    .line 109
    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 110
    move-result v0

    .line 113
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 114
    move-result p1

    .line 117
    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 118
    move-result p1

    .line 121
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 127
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 132
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 134
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 137
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 139
    return-void

    .line 142
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 143
    sget v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->$r8$clinit:I

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 150
    move-result p1

    .line 153
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 154
    return-void

    .line 157
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 158
    sget v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->$r8$clinit:I

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 165
    move-result p1

    .line 168
    sub-float/2addr v3, p1

    .line 169
    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    .line 170
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 172
    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 175
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 177
    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    .line 180
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 182
    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDismissButton:Landroid/view/View;

    .line 185
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 190
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 192
    return-void

    .line 195
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 196
    sget v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->$r8$clinit:I

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 203
    move-result v0

    .line 206
    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 207
    move-result v0

    .line 210
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    .line 211
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 213
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    .line 216
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 218
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 221
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleX(F)V

    .line 223
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 226
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    .line 228
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    .line 231
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleX(F)V

    .line 233
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    .line 236
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 243
    move-result v0

    .line 246
    int-to-float v0, v0

    .line 247
    div-float/2addr v0, v1

    .line 248
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 249
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    .line 251
    move-result v1

    .line 254
    add-float/2addr v1, v0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 258
    move-result v4

    .line 261
    sub-float v4, v1, v4

    .line 262
    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 267
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 269
    move-result-object v4

    .line 272
    check-cast v4, Landroid/view/View;

    .line 273
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    .line 275
    move-result v4

    .line 278
    sub-float/2addr v1, v4

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 280
    const v0, 0x3f4ccccd    # 0.8f

    .line 283
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 286
    move-result v1

    .line 289
    invoke-static {v3, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 290
    move-result v0

    .line 293
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 294
    move-result p1

    .line 297
    invoke-static {v3, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 298
    move-result p1

    .line 301
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 302
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 307
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 309
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 312
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 314
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 317
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 319
    return-void

    .line 322
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 323
    sget v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->$r8$clinit:I

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 330
    move-result p1

    .line 333
    sub-float/2addr v3, p1

    .line 334
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 335
    return-void

    .line 338
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 339
    sget v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->$r8$clinit:I

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 346
    move-result p1

    .line 349
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    .line 350
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    .line 355
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    .line 360
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDismissButton:Landroid/view/View;

    .line 365
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 367
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 370
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 372
    return-void

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 376
.end method
