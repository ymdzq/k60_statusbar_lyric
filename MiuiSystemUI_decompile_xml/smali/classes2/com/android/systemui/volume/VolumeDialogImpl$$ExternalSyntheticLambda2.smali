.class public final synthetic Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_3

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 15
    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getDrawerIconViewForMode(I)Landroid/widget/ImageView;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    return-void

    .line 26
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 31
    return-void

    .line 34
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 37
    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 44
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 48
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 51
    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 55
    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 59
    if-eqz v0, :cond_2

    .line 61
    const v1, 0x7f0a0a72    # @id/volume_dialog_container

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Landroid/view/ViewGroup;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 77
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideRingerDrawer()V

    .line 81
    return-void

    .line 84
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 87
    if-eqz v0, :cond_3

    .line 89
    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    .line 97
    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 101
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLocationOnScreen()[I

    .line 103
    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 109
    move-result v2

    .line 112
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 113
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getHeight()I

    .line 115
    move-result v4

    .line 118
    sub-int/2addr v2, v4

    .line 119
    int-to-float v2, v2

    .line 120
    const/high16 v4, 0x40000000    # 2.0f

    .line 121
    div-float/2addr v2, v4

    .line 123
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 124
    aget v1, v1, v3

    .line 126
    aget v0, v0, v3

    .line 128
    sub-int/2addr v1, v0

    .line 130
    int-to-float v0, v1

    .line 131
    sub-float/2addr v0, v2

    .line 132
    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 138
    move-result-object v0

    .line 141
    const/high16 v1, 0x3f800000    # 1.0f

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 144
    move-result-object v0

    .line 147
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogShowAnimationDurationMs:I

    .line 148
    int-to-long v1, v1

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 151
    move-result-object v0

    .line 154
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    .line 155
    const/16 v2, 0x9

    .line 157
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 162
    move-result-object p0

    .line 165
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 166
    :cond_3
    return-void

    .line 169
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 170
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 172
    if-eqz p0, :cond_4

    .line 174
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_4
    return-void

    .line 179
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 182
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    .line 184
    const/4 v2, 0x6

    .line 186
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 187
    const-wide/16 v2, 0x32

    .line 190
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    return-void

    .line 195
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 198
    const-string v1, "TouchedRingerToggle"

    .line 200
    invoke-static {v0, v1, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 202
    move-result v0

    .line 205
    if-nez v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 208
    if-eqz v0, :cond_5

    .line 210
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;

    .line 212
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageButton;)V

    .line 214
    const-wide/16 v2, 0x5dc

    .line 217
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 219
    :cond_5
    return-void

    .line 222
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 223
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 227
    move-result-object v0

    .line 230
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 231
    if-eqz v0, :cond_a

    .line 233
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 235
    move-result v1

    .line 238
    if-lez v1, :cond_a

    .line 239
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 241
    move-result-object v0

    .line 244
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainerBackground:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateBackgroundForDrawerClosedAmount()V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTopContainer:Landroid/view/View;

    .line 250
    if-nez v0, :cond_6

    .line 252
    goto :goto_2

    .line 254
    :cond_6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 255
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 257
    const v2, 0x112002f    # @android:^attr-private/colorSurface

    .line 259
    invoke-static {v1, v2, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 262
    move-result v1

    .line 265
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 266
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 269
    filled-new-array {v0}, [Landroid/graphics/drawable/Drawable;

    .line 271
    move-result-object v0

    .line 274
    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogWidth:I

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 280
    move-result v2

    .line 283
    if-nez v2, :cond_7

    .line 284
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 286
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 288
    move-result v2

    .line 291
    goto :goto_0

    .line 292
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 293
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 295
    move-result v2

    .line 298
    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogCornerRadius:I

    .line 299
    add-int/2addr v2, v5

    .line 301
    :goto_0
    invoke-virtual {v1, v4, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 305
    move-result v0

    .line 308
    if-nez v0, :cond_8

    .line 309
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsViewContainer:Landroid/view/ViewGroup;

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    .line 313
    move-result v0

    .line 316
    goto :goto_1

    .line 317
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsViewContainer:Landroid/view/ViewGroup;

    .line 318
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    .line 320
    move-result v0

    .line 323
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogCornerRadius:I

    .line 324
    sub-int/2addr v0, v2

    .line 326
    :goto_1
    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 327
    const/16 v0, 0x35

    .line 330
    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 335
    move-result v0

    .line 338
    if-eqz v0, :cond_9

    .line 339
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    .line 341
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogImpl$6;

    .line 343
    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 345
    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    .line 351
    invoke-virtual {v0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 353
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTopContainer:Landroid/view/View;

    .line 356
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    :cond_a
    :goto_2
    return-void

    .line 361
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 362
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 364
    monitor-enter v0

    .line 366
    :try_start_0
    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdDialog:Lcom/android/systemui/volume/CsdWarningDialog;

    .line 367
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 370
    return-void

    .line 373
    :catchall_0
    move-exception p0

    .line 374
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    throw p0

    .line 376
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 382
    if-eqz v0, :cond_b

    .line 384
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 386
    const-string/jumbo v1, "tool:checkODICaptionsTooltip() putBoolean true"

    .line 388
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 394
    const-string v1, "HasSeenODICaptionsTooltip"

    .line 396
    invoke-static {v0, v1, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 398
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 401
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 403
    if-eqz v0, :cond_c

    .line 405
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;

    .line 407
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageButton;)V

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 412
    :cond_c
    return-void

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 416
.end method
