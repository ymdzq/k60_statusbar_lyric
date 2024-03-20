.class public final Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;

    .line 16
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 18
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;

    .line 26
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPressed:Z

    .line 28
    if-nez p1, :cond_0

    .line 30
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mVisible:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 36
    :cond_0
    return-void

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;

    .line 40
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;

    .line 47
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->cancelAnimations()V

    .line 49
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 53
    iget v0, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondLeftStart:F

    .line 55
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 61
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 67
    goto :goto_1

    .line 69
    :cond_1
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 70
    :goto_1
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    .line 74
    move-result-object v2

    .line 77
    iget v3, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondLeftEnd:F

    .line 78
    invoke-direct {v0, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 80
    const-wide/16 v2, 0xfa

    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 85
    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSineInterpolator:Lcom/android/systemui/statusbar/phone/SineInterpolator;

    .line 88
    invoke-virtual {v0, v4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 93
    invoke-virtual {v0, v4}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 98
    invoke-virtual {v0, v4}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 100
    iget v4, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondRightStart:F

    .line 103
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 105
    move-result-object v4

    .line 108
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 109
    move-result v5

    .line 112
    if-eqz v5, :cond_2

    .line 113
    iput-object v4, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 115
    goto :goto_2

    .line 117
    :cond_2
    iput-object v4, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 118
    :goto_2
    new-instance v4, Landroid/view/RenderNodeAnimator;

    .line 120
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    .line 122
    move-result-object v5

    .line 125
    iget v6, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondRightEnd:F

    .line 126
    invoke-direct {v4, v5, v6}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 128
    invoke-virtual {v4, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 131
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSineInterpolator:Lcom/android/systemui/statusbar/phone/SineInterpolator;

    .line 134
    invoke-virtual {v4, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 139
    invoke-virtual {v4, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 144
    invoke-virtual {v4, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 146
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 149
    move-result v2

    .line 152
    const/4 v3, 0x0

    .line 153
    const/high16 v5, 0x40000000    # 2.0f

    .line 154
    if-eqz v2, :cond_3

    .line 156
    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 158
    move-result-object v2

    .line 161
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 164
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 168
    move-result v2

    .line 171
    int-to-float v2, v2

    .line 172
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 173
    move-result-object v2

    .line 176
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 177
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 179
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 183
    move-result v2

    .line 186
    int-to-float v2, v2

    .line 187
    div-float/2addr v2, v5

    .line 188
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 189
    move-result-object v2

    .line 192
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 193
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 195
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 199
    move-result v2

    .line 202
    int-to-float v2, v2

    .line 203
    div-float/2addr v2, v5

    .line 204
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 205
    move-result-object v2

    .line 208
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 209
    goto :goto_3

    .line 211
    :cond_3
    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 212
    move-result-object v2

    .line 215
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 216
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 218
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 222
    move-result v2

    .line 225
    int-to-float v2, v2

    .line 226
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 227
    move-result-object v2

    .line 230
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 231
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 233
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 237
    move-result v2

    .line 240
    int-to-float v2, v2

    .line 241
    div-float/2addr v2, v5

    .line 242
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 243
    move-result-object v2

    .line 246
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 247
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 249
    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 253
    move-result v2

    .line 256
    int-to-float v2, v2

    .line 257
    div-float/2addr v2, v5

    .line 258
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 259
    move-result-object v2

    .line 262
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 263
    :goto_3
    const v2, 0x3faccccd    # 1.35f

    .line 265
    iput v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowScale:F

    .line 268
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    .line 270
    move-result-object v2

    .line 273
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 274
    iget v3, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowAlpha:F

    .line 276
    const/16 v5, 0xff

    .line 278
    int-to-float v5, v5

    .line 280
    mul-float/2addr v3, v5

    .line 281
    float-to-int v3, v3

    .line 282
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 286
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    .line 288
    move-result-object v2

    .line 291
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 292
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 294
    invoke-virtual {v4}, Landroid/view/RenderNodeAnimator;->start()V

    .line 297
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 300
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 305
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 310
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;

    .line 313
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 315
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 317
    move-result p1

    .line 320
    if-eqz p1, :cond_4

    .line 321
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;

    .line 323
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPressed:Z

    .line 325
    if-nez p1, :cond_4

    .line 327
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 329
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 331
    :cond_4
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 336
.end method
