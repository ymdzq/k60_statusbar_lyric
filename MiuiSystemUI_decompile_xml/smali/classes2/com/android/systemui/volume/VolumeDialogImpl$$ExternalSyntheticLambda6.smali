.class public final synthetic Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    const/16 v0, 0x8

    .line 4
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    goto/16 :goto_d

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideRingerDrawer()V

    .line 20
    goto/16 :goto_9

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    goto/16 :goto_9

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

    .line 29
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 31
    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 33
    const/4 v5, 0x4

    .line 35
    if-ne v4, v2, :cond_2

    .line 36
    move v4, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v4, v3

    .line 40
    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    .line 44
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 46
    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 48
    if-nez v4, :cond_3

    .line 50
    move v4, v5

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v4, v3

    .line 54
    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    .line 58
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 60
    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 62
    if-ne v4, v1, :cond_4

    .line 64
    goto :goto_2

    .line 66
    :cond_4
    move v5, v3

    .line 67
    :goto_2
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    .line 71
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 77
    move-result p1

    .line 80
    if-nez p1, :cond_5

    .line 81
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    .line 83
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 85
    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 87
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    .line 89
    move-result v4

    .line 92
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 93
    goto :goto_3

    .line 96
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    .line 97
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 99
    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 101
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    .line 103
    move-result v4

    .line 106
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 107
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 110
    move-result p1

    .line 113
    if-nez p1, :cond_6

    .line 114
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 116
    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    .line 118
    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    .line 120
    sub-int/2addr v5, v2

    .line 122
    mul-int/2addr v5, v4

    .line 123
    int-to-float v4, v5

    .line 124
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 125
    goto :goto_4

    .line 128
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 129
    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    .line 131
    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    .line 133
    sub-int/2addr v5, v2

    .line 135
    mul-int/2addr v5, v4

    .line 136
    int-to-float v4, v5

    .line 137
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 138
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 146
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 151
    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 153
    if-ne p1, v2, :cond_7

    .line 155
    const/16 p1, 0xaf

    .line 157
    goto :goto_5

    .line 159
    :cond_7
    const/16 p1, 0xfa

    .line 160
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 162
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 164
    move-result-object v3

    .line 167
    sget-object v4, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 168
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 170
    move-result-object v3

    .line 173
    int-to-long v5, p1

    .line 174
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 175
    move-result-object p1

    .line 178
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 179
    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 181
    if-ne v3, v2, :cond_8

    .line 183
    const-wide/16 v7, 0x4b

    .line 185
    goto :goto_6

    .line 187
    :cond_8
    const-wide/16 v7, 0x0

    .line 188
    :goto_6
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 190
    move-result-object p1

    .line 193
    const/high16 v3, 0x3f800000    # 1.0f

    .line 194
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 196
    move-result-object p1

    .line 199
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 200
    move-result-object p1

    .line 203
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 204
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 208
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    .line 211
    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 213
    move-result-object p1

    .line 216
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 217
    move-result-object p1

    .line 220
    const-wide/16 v7, 0xfa

    .line 221
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 223
    move-result-object p1

    .line 226
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    .line 227
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 229
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 232
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    .line 235
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    .line 240
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    .line 245
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 250
    move-result p1

    .line 253
    if-nez p1, :cond_9

    .line 254
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    .line 256
    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 258
    move-result-object p1

    .line 261
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 262
    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    .line 266
    move-result v0

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 270
    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 274
    goto :goto_7

    .line 277
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    .line 278
    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 280
    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 284
    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    .line 288
    move-result v0

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 292
    move-result-object p1

    .line 295
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 296
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 301
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 303
    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 305
    if-eqz v1, :cond_b

    .line 307
    if-eq v1, v2, :cond_a

    .line 309
    const v1, 0x7f130c54    # @string/volume_ringer_status_normal 'Ring'

    .line 311
    goto :goto_8

    .line 314
    :cond_a
    const v1, 0x7f130c56    # @string/volume_ringer_status_vibrate 'Vibrate'

    .line 315
    goto :goto_8

    .line 318
    :cond_b
    const v1, 0x7f130c55    # @string/volume_ringer_status_silent 'Mute'

    .line 319
    :goto_8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 322
    move-result-object v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 326
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    .line 329
    :goto_9
    return-void

    .line 331
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    new-array p1, v3, [Ljava/lang/Object;

    .line 337
    invoke-static {v0, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 339
    const/4 p1, 0x5

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 343
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 346
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    sget-object p1, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    .line 351
    if-eqz p1, :cond_c

    .line 353
    invoke-virtual {p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    .line 355
    :cond_c
    const/4 p1, 0x0

    .line 358
    sput-object p1, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    .line 359
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 361
    const-string/jumbo v0, "settings_volume_panel_in_systemui"

    .line 363
    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 366
    move-result p1

    .line 369
    if-eqz p1, :cond_d

    .line 370
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelFactory:Lcom/android/systemui/volume/VolumePanelFactory;

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelFactory;->create()V

    .line 374
    goto :goto_a

    .line 377
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 378
    new-instance p1, Landroid/content/Intent;

    .line 380
    const-string v0, "android.settings.panel.action.VOLUME"

    .line 382
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 387
    :goto_a
    return-void

    .line 390
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 391
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 393
    const-string v0, "TouchedRingerToggle"

    .line 395
    invoke-static {p1, v0, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 397
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 400
    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 402
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 404
    move-result-object p1

    .line 407
    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 408
    if-nez p1, :cond_e

    .line 410
    goto :goto_c

    .line 412
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 413
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    .line 415
    move-result v0

    .line 418
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 419
    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 421
    if-ne v4, v1, :cond_f

    .line 423
    if-eqz v0, :cond_10

    .line 425
    move v1, v2

    .line 427
    goto :goto_b

    .line 428
    :cond_f
    if-ne v4, v2, :cond_11

    .line 429
    :cond_10
    move v1, v3

    .line 431
    goto :goto_b

    .line 432
    :cond_11
    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 433
    if-nez p1, :cond_12

    .line 435
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 437
    invoke-interface {p1, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 439
    :cond_12
    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setRingerMode(I)V

    .line 442
    :goto_c
    return-void

    .line 445
    :goto_d
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    .line 448
    new-array p0, v3, [Ljava/lang/Object;

    .line 451
    const/16 p1, 0x16

    .line 453
    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 455
    return-void

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 460
.end method
