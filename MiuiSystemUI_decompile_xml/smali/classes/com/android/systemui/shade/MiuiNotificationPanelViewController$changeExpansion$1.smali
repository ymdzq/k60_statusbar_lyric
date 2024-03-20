.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_1

    .line 9
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 21
    check-cast v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 23
    const/4 v3, 0x6

    .line 25
    invoke-static {v0, p1, v1, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 26
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 29
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 31
    int-to-float v0, v2

    .line 33
    sub-float/2addr v0, p1

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateKeyguardElementsExpansionInternal(F)V

    .line 35
    return-void

    .line 38
    :pswitch_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/Float;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 45
    move-result p1

    .line 48
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 49
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 51
    const/4 v0, 0x4

    .line 53
    invoke-static {p0, p1, v1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 54
    return-void

    .line 57
    :pswitch_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/Float;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 64
    move-result p1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 68
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 70
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->doBlurAndDim(FZZ)V

    .line 72
    return-void

    .line 75
    :pswitch_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 79
    check-cast p1, Ljava/lang/Float;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 82
    move-result p1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 86
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 92
    return-void

    .line 95
    :pswitch_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/Float;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 102
    move-result p1

    .line 105
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 106
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 108
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeviceRadius:F

    .line 110
    iget v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mFinalRadius:F

    .line 112
    sub-float/2addr v1, v0

    .line 114
    mul-float/2addr v1, p1

    .line 115
    add-float/2addr v1, v0

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setViewRadius(F)V

    .line 117
    return-void

    .line 120
    :pswitch_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 124
    check-cast p1, Ljava/lang/Float;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 127
    move-result p1

    .line 130
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 131
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 133
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mFinalRadius:F

    .line 135
    iget v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeviceRadius:F

    .line 137
    sub-float v1, v0, v1

    .line 139
    mul-float/2addr v1, p1

    .line 141
    sub-float/2addr v0, v1

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setViewRadius(F)V

    .line 143
    return-void

    .line 146
    :pswitch_6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 147
    move-result-object p1

    .line 150
    check-cast p1, Ljava/lang/Float;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 153
    move-result p1

    .line 156
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 157
    check-cast v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 159
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 161
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 163
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 166
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 168
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 172
    return-void

    .line 175
    :pswitch_7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 176
    move-result-object p1

    .line 179
    check-cast p1, Ljava/lang/Float;

    .line 180
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 182
    move-result p1

    .line 185
    int-to-float v0, v2

    .line 186
    sub-float v3, v0, p1

    .line 187
    const v4, 0x3dcccccd    # 0.1f

    .line 189
    mul-float/2addr v3, v4

    .line 192
    sub-float/2addr v0, v3

    .line 193
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 194
    check-cast v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 196
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 198
    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 202
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 208
    check-cast v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 210
    iget-object v3, v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 212
    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 216
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 219
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 222
    check-cast v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 224
    iget-object v3, v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 226
    iget-object v3, v3, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 228
    if-eqz v3, :cond_2

    .line 230
    iget-boolean v4, v3, Lcom/android/keyguard/clock/KeyguardClockContainer;->mClockCanScale:Z

    .line 232
    if-ne v4, v2, :cond_2

    .line 234
    move v1, v2

    .line 236
    :cond_2
    if-eqz v1, :cond_3

    .line 237
    if-eqz v3, :cond_3

    .line 239
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 241
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 244
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 247
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 249
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 251
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 253
    return-void

    .line 256
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 257
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 259
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 261
    move-result-object p1

    .line 264
    check-cast p1, Ljava/lang/Float;

    .line 265
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 267
    move-result p1

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateScrollerTopPadding(F)V

    .line 271
    return-void

    .line 274
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 275
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 277
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 279
    if-nez p0, :cond_4

    .line 281
    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 284
    move-result-object p1

    .line 287
    check-cast p1, Ljava/lang/Float;

    .line 288
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 290
    move-result p1

    .line 293
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 294
    :goto_0
    return-void

    .line 297
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 298
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 300
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 302
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 304
    move-result-object p1

    .line 307
    check-cast p1, Ljava/lang/Float;

    .line 308
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 310
    move-result p1

    .line 313
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 314
    return-void

    .line 317
    :pswitch_b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 318
    move-result-object p1

    .line 321
    check-cast p1, Ljava/lang/Float;

    .line 322
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 324
    move-result p1

    .line 327
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 328
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setAnimatingHeight(F)V

    .line 332
    return-void

    .line 335
    :goto_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 336
    move-result-object p1

    .line 339
    check-cast p1, Ljava/lang/Float;

    .line 340
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 342
    move-result p1

    .line 345
    const v0, 0x3fb33333    # 1.4f

    .line 346
    mul-float/2addr p1, v0

    .line 349
    const/high16 v0, 0x3f800000    # 1.0f

    .line 350
    add-float/2addr p1, v0

    .line 352
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 353
    check-cast v0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 355
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 360
    check-cast v0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 362
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 364
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;->this$0:Ljava/lang/Object;

    .line 367
    check-cast p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 371
    return-void

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 376
.end method
