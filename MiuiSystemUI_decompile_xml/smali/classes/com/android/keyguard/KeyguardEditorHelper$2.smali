.class public final Lcom/android/keyguard/KeyguardEditorHelper$2;
.super Landroid/os/CountDownTimer;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardEditorHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardEditorHelper;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$2;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    const-wide/16 v0, 0x4b0

    .line 4
    const-wide/16 v2, 0x64

    .line 6
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$2;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownOver500:Z

    .line 5
    return-void
    .line 7
.end method

.method public final onTick(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper$2;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    iput-wide p1, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownMill:J

    .line 4
    sget-boolean v0, Lcom/android/keyguard/KeyguardEditorHelper;->DEBUG:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "keyguard loading mLoadingCountDownMill = "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper$2;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 19
    iget-wide v2, v2, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownMill:J

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 33
    cmp-long p1, p1, v0

    .line 35
    if-gtz p1, :cond_6

    .line 37
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$2;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 39
    iget-boolean p2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->isFirst:Z

    .line 41
    if-eqz p2, :cond_6

    .line 43
    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->isFirst:Z

    .line 46
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownFinish:Z

    .line 49
    iget-object p1, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 51
    if-eqz p1, :cond_6

    .line 53
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 55
    const-string v1, "keyguard loading show"

    .line 57
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$2;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 64
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardEditLoadingContainer:Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

    .line 66
    if-eqz p0, :cond_6

    .line 68
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 71
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 77
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    move-result-object v1

    .line 84
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v2

    .line 90
    const v3, 0x7f070473    # @dimen/keyguard_edit_loading_progress_height '22.0dp'

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    move-result v2

    .line 97
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 98
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object v2

    .line 103
    const v3, 0x7f070474    # @dimen/keyguard_edit_loading_progress_margin_bottom '8.0dp'

    .line 104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    move-result v2

    .line 110
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 111
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView;->mLoadingMsg:Landroid/widget/TextView;

    .line 116
    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 120
    move-result-object v1

    .line 123
    const v2, 0x7f1305e2    # @string/keyguard_loading_to_editor_tips 'Opening Lock screen editor…'

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 127
    move-result-object v1

    .line 130
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object v1

    .line 137
    const v2, 0x7f070475    # @dimen/keyguard_edit_loading_text_size '17.0dp'

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 141
    move-result v1

    .line 144
    int-to-float v1, v1

    .line 145
    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView;->mLoadingView:Landroid/widget/LinearLayout;

    .line 149
    if-eqz p1, :cond_3

    .line 151
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    move-result-object v1

    .line 156
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 157
    move-result-object v2

    .line 160
    const v3, 0x7f070476    # @dimen/keyguard_edit_loading_width '214.0dp'

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 164
    move-result v2

    .line 167
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 170
    move-result-object v1

    .line 173
    const v2, 0x7f070471    # @dimen/keyguard_edit_loading_padding_horizontal '19.0dp'

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 177
    move-result v1

    .line 180
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 181
    move-result-object v2

    .line 184
    const v3, 0x7f070472    # @dimen/keyguard_edit_loading_padding_vertical '24.0dp'

    .line 185
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 188
    move-result v2

    .line 191
    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 192
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView;->mLoadingView:Landroid/widget/LinearLayout;

    .line 195
    if-eqz p1, :cond_6

    .line 197
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 199
    move-result-object v1

    .line 202
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 203
    move-result v1

    .line 206
    const/4 v2, 0x0

    .line 207
    if-eqz v1, :cond_5

    .line 208
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 216
    move-result-object p2

    .line 219
    const v1, 0x7f070470    # @dimen/keyguard_edit_loading_bg_radius '24.0dp'

    .line 220
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 223
    move-result p2

    .line 226
    int-to-float p2, p2

    .line 227
    new-instance v1, Lcom/android/keyguard/widget/KeyguardLoadingRoundView$showEditLoadingAnim$1$1;

    .line 228
    invoke-direct {v1, p2}, Lcom/android/keyguard/widget/KeyguardLoadingRoundView$showEditLoadingAnim$1$1;-><init>(F)V

    .line 230
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 233
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 236
    move-result-object p2

    .line 239
    const v1, 0x7f07046f    # @dimen/keyguard_edit_loading_bg_blur_radius '52.0dp'

    .line 240
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 243
    move-result p2

    .line 246
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 247
    move-result-object v1

    .line 250
    const v2, 0x7f030089    # @array/keyguard_edit_loading_bg_blend_colors

    .line 251
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 254
    move-result-object v1

    .line 257
    invoke-static {p1}, Lcom/miui/systemui/util/MiBlurCompat;->getPassWindowBlurEnabledCompat(Landroid/view/View;)Z

    .line 258
    move-result v2

    .line 261
    if-nez v2, :cond_4

    .line 262
    invoke-static {p1, v0}, Lcom/miui/systemui/util/MiBlurCompat;->setPassWindowBlurEnabledCompat(Landroid/view/View;Z)V

    .line 264
    invoke-static {v0, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurModeCompat(ILandroid/view/View;)V

    .line 267
    :cond_4
    invoke-static {p2, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurRadiusCompat(ILandroid/view/View;)V

    .line 270
    invoke-static {v0, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiViewBlurModeCompat(ILandroid/view/View;)V

    .line 273
    const/high16 p2, 0x3f800000    # 1.0f

    .line 276
    invoke-static {p1, v1, p2}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlendColors(Landroid/view/View;[IF)V

    .line 278
    goto :goto_0

    .line 281
    :cond_5
    invoke-static {p1, p2}, Lcom/miui/systemui/util/MiBlurCompat;->setPassWindowBlurEnabledCompat(Landroid/view/View;Z)V

    .line 282
    invoke-static {p2, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurModeCompat(ILandroid/view/View;)V

    .line 285
    invoke-static {p2, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiViewBlurModeCompat(ILandroid/view/View;)V

    .line 288
    invoke-static {p1}, Lcom/miui/systemui/util/MiBlurCompat;->clearMiBackgroundBlendColorCompat(Landroid/view/View;)V

    .line 291
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 294
    move-result-object p2

    .line 297
    const v0, 0x7f081239    # @drawable/keyguard_edit_loading_bg 'res/drawable/keyguard_edit_loading_bg.xml'

    .line 298
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 301
    move-result-object p2

    .line 304
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    :goto_0
    filled-new-array {p0}, [Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

    .line 308
    move-result-object p2

    .line 311
    invoke-static {p2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 312
    filled-new-array {p1}, [Landroid/widget/LinearLayout;

    .line 315
    move-result-object p2

    .line 318
    invoke-static {p2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 319
    new-instance p2, Lmiuix/animation/controller/AnimState;

    .line 322
    const-string v0, "alpha_from"

    .line 324
    invoke-direct {p2, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 326
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 329
    const-wide/16 v1, 0x0

    .line 331
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 333
    move-result-object p2

    .line 336
    const-string v3, "alpha_to"

    .line 337
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 339
    invoke-static {v3, v0, v4, v5}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 341
    move-result-object v3

    .line 344
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    .line 345
    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 347
    iget-object v7, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView;->alphaShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 350
    invoke-virtual {v6, v7}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 352
    move-result-object v6

    .line 355
    filled-new-array {p0}, [Landroid/view/View;

    .line 356
    move-result-object v7

    .line 359
    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 360
    move-result-object v7

    .line 363
    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 364
    move-result-object v7

    .line 367
    invoke-interface {v7, p2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 368
    move-result-object p2

    .line 371
    filled-new-array {v6}, [Lmiuix/animation/base/AnimConfig;

    .line 372
    move-result-object v6

    .line 375
    invoke-interface {p2, v3, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 376
    new-instance p2, Lmiuix/animation/controller/AnimState;

    .line 379
    const-string/jumbo v3, "view_alpha_scale_from"

    .line 381
    invoke-direct {p2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 384
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 387
    move-result-object p2

    .line 390
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 391
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 393
    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 398
    move-result-object p2

    .line 401
    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 402
    invoke-virtual {p2, v6, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 404
    move-result-object p2

    .line 407
    const-string/jumbo v2, "view_alpha_scale_to"

    .line 408
    invoke-static {v2, v0, v4, v5}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 411
    move-result-object v0

    .line 414
    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 415
    move-result-object v0

    .line 418
    invoke-virtual {v0, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 419
    move-result-object v0

    .line 422
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 423
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 425
    iget-object p0, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView;->loadingViewEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 428
    invoke-virtual {v1, p0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 430
    move-result-object p0

    .line 433
    filled-new-array {p1}, [Landroid/view/View;

    .line 434
    move-result-object p1

    .line 437
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 438
    move-result-object p1

    .line 441
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 442
    move-result-object p1

    .line 445
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 446
    move-result-object p1

    .line 449
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 450
    move-result-object p0

    .line 453
    invoke-interface {p1, v0, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 454
    :cond_6
    return-void
    .line 457
.end method
