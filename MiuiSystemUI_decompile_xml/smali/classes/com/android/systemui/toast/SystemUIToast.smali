.class public final Lcom/android/systemui/toast/SystemUIToast;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ToastPlugin$Toast;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultGravity:I

.field public mDefaultY:I

.field public final mInAnimator:Landroid/animation/Animator;

.field public mIsToastShowing:Z

.field public final mOutAnimator:Landroid/animation/Animator;

.field public final mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

.field public final mSupportMiBlur:Z

.field public final mText:Ljava/lang/CharSequence;

.field public final mToastView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v3, p5

    .line 8
    move/from16 v4, p6

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v5, 0x1

    .line 15
    iput-boolean v5, v0, Lcom/android/systemui/toast/SystemUIToast;->mIsToastShowing:Z

    .line 16
    iput-object v1, v0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 18
    iput-object v2, v0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    .line 20
    move-object/from16 v6, p4

    .line 22
    iput-object v6, v0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 24
    sget-boolean v7, Lcom/miui/utils/configs/MiuiConfigs;->SHADOW_SUPPORTED:Z

    .line 26
    const/4 v8, 0x0

    .line 28
    if-eqz v7, :cond_0

    .line 29
    sget-boolean v7, Lcom/miui/utils/configs/MiuiConfigs;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 31
    if-eqz v7, :cond_0

    .line 33
    move v7, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v7, v8

    .line 37
    :goto_0
    iput-boolean v7, v0, Lcom/android/systemui/toast/SystemUIToast;->mSupportMiBlur:Z

    .line 38
    const-string v9, "SystemUIToast"

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    .line 42
    move-result v10

    .line 45
    const v11, 0x7f0a0966    # @id/text

    .line 46
    const v12, 0x7f0a0412    # @id/icon

    .line 49
    const/4 v13, 0x0

    .line 52
    if-eqz v10, :cond_1

    .line 53
    invoke-interface/range {p4 .. p4}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    .line 55
    move-result-object v10

    .line 58
    if-eqz v10, :cond_1

    .line 59
    invoke-interface/range {p4 .. p4}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    .line 61
    move-result-object v1

    .line 64
    goto/16 :goto_8

    .line 65
    :cond_1
    const v6, 0x7f0d03c1    # @layout/text_toast 'res/layout/text_toast.xml'

    .line 67
    move-object/from16 v10, p1

    .line 70
    invoke-virtual {v10, v6, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    move-result-object v6

    .line 75
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v10

    .line 79
    check-cast v10, Landroid/widget/TextView;

    .line 80
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v14

    .line 85
    check-cast v14, Landroid/widget/ImageView;

    .line 86
    if-eqz v7, :cond_2

    .line 88
    const v7, 0x7f081976    # @drawable/toast_frame_new 'res/drawable/toast_frame_new.xml'

    .line 90
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    const v7, 0x7f0603c6    # @color/miui_shadow_toast_text_color '#cc000000'

    .line 96
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    .line 99
    move-result v7

    .line 102
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    :cond_2
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 109
    move-result-object v2

    .line 112
    invoke-virtual {v2, v3, v8, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 113
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_1

    .line 117
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    const-string v7, "Package name not found package="

    .line 120
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v7, " user="

    .line 128
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 139
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object v2, v13

    .line 143
    :goto_1
    const/16 v7, 0x8

    .line 144
    if-eqz v2, :cond_3

    .line 146
    iget v15, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 148
    const/16 v13, 0x1f

    .line 150
    if-ge v15, v13, :cond_3

    .line 152
    const v1, 0x7fffffff

    .line 154
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 157
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v1

    .line 163
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 164
    goto/16 :goto_7

    .line 167
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 169
    move-result-object v10

    .line 172
    instance-of v10, v10, Landroid/app/Application;

    .line 173
    if-nez v10, :cond_4

    .line 175
    goto :goto_5

    .line 177
    :cond_4
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 178
    move-result-object v10

    .line 181
    const-wide/16 v16, 0x80

    .line 182
    invoke-static/range {v16 .. v17}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 184
    move-result-object v13

    .line 187
    invoke-virtual {v10, v3, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    .line 188
    move-result-object v13

    .line 191
    if-eqz v13, :cond_9

    .line 192
    iget v15, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 194
    and-int/lit16 v15, v15, 0x81

    .line 196
    if-eqz v15, :cond_5

    .line 198
    move v15, v5

    .line 200
    goto :goto_2

    .line 201
    :cond_5
    move v15, v8

    .line 202
    :goto_2
    if-eqz v15, :cond_7

    .line 203
    iget-object v15, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 205
    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    move-result-object v10

    .line 210
    if-eqz v10, :cond_6

    .line 211
    goto :goto_3

    .line 213
    :cond_6
    move v10, v8

    .line 214
    goto :goto_4

    .line 215
    :cond_7
    :goto_3
    move v10, v5

    .line 216
    :goto_4
    if-nez v10, :cond_8

    .line 217
    goto :goto_5

    .line 219
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    .line 220
    move-result-object v10

    .line 223
    iget v15, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 224
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 226
    move-result v15

    .line 229
    invoke-virtual {v10, v13, v15}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    .line 230
    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    goto :goto_6

    .line 234
    :catch_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 235
    const-string v13, "Couldn\'t find application info for packageName="

    .line 237
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v13, " userId="

    .line 245
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v10

    .line 256
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_9
    :goto_5
    const/4 v10, 0x0

    .line 260
    :goto_6
    if-nez v10, :cond_a

    .line 261
    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    goto :goto_7

    .line 266
    :cond_a
    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    if-nez v2, :cond_b

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    const-string v2, "No appInfo for pkg="

    .line 274
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v2, " usr="

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object v1

    .line 293
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    goto :goto_7

    .line 297
    :cond_b
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 298
    if-eqz v3, :cond_c

    .line 300
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 302
    move-result-object v3

    .line 305
    new-instance v4, Landroid/content/res/Configuration;

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 308
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 312
    move-result-object v1

    .line 315
    invoke-direct {v4, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 316
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    .line 319
    move-result-object v1

    .line 322
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 323
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 325
    move-result-object v1

    .line 328
    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 329
    goto :goto_7

    .line 332
    :catch_2
    const-string v1, "Cannot find application resources for icon label."

    .line 333
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_c
    :goto_7
    move-object v1, v6

    .line 338
    :goto_8
    iput-object v1, v0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    .line 341
    move-result v2

    .line 344
    const/high16 v3, 0x3f800000    # 1.0f

    .line 345
    const/4 v4, 0x2

    .line 347
    const-string v6, "alpha"

    .line 348
    const-string/jumbo v7, "scaleY"

    .line 350
    const-string/jumbo v9, "scaleX"

    .line 353
    const/4 v10, 0x0

    .line 356
    if-eqz v2, :cond_d

    .line 357
    iget-object v2, v0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 359
    invoke-interface {v2}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    .line 361
    move-result-object v13

    .line 364
    if-eqz v13, :cond_d

    .line 365
    invoke-interface {v2}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    .line 367
    move-result-object v2

    .line 370
    move-object/from16 p1, v9

    .line 371
    goto/16 :goto_a

    .line 373
    :cond_d
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 375
    move-result-object v2

    .line 378
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 379
    move-result-object v13

    .line 382
    if-eqz v2, :cond_f

    .line 383
    if-nez v13, :cond_e

    .line 385
    goto/16 :goto_9

    .line 387
    :cond_e
    new-instance v14, Landroid/view/animation/LinearInterpolator;

    .line 389
    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 391
    new-instance v15, Landroid/view/animation/PathInterpolator;

    .line 394
    invoke-direct {v15, v10, v10, v10, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 396
    new-array v5, v4, [F

    .line 399
    fill-array-data v5, :array_0

    .line 401
    invoke-static {v1, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 404
    move-result-object v5

    .line 407
    invoke-virtual {v5, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 408
    move-object/from16 p1, v9

    .line 411
    const-wide/16 v8, 0x14d

    .line 413
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 415
    sput-object v5, Lcom/android/systemui/toast/ToastDefaultAnimation;->sX:Landroid/animation/ValueAnimator;

    .line 418
    new-array v5, v4, [F

    .line 420
    fill-array-data v5, :array_1

    .line 422
    invoke-static {v1, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 425
    move-result-object v5

    .line 428
    invoke-virtual {v5, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 429
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 432
    new-array v8, v4, [F

    .line 435
    fill-array-data v8, :array_2

    .line 437
    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 440
    move-result-object v8

    .line 443
    invoke-virtual {v8, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 444
    const-wide/16 v11, 0x42

    .line 447
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 449
    invoke-virtual {v13, v10}, Landroid/view/View;->setAlpha(F)V

    .line 452
    new-array v11, v4, [F

    .line 455
    fill-array-data v11, :array_3

    .line 457
    invoke-static {v13, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 460
    move-result-object v11

    .line 463
    invoke-virtual {v11, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 464
    const-wide/16 v12, 0x11b

    .line 467
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 469
    const-wide/16 v12, 0x32

    .line 472
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 474
    invoke-virtual {v2, v10}, Landroid/view/View;->setAlpha(F)V

    .line 477
    new-array v9, v4, [F

    .line 480
    fill-array-data v9, :array_4

    .line 482
    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 485
    move-result-object v2

    .line 488
    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    const-wide/16 v3, 0x11b

    .line 492
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 494
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 497
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 500
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 502
    sget-object v4, Lcom/android/systemui/toast/ToastDefaultAnimation;->sX:Landroid/animation/ValueAnimator;

    .line 505
    filled-new-array {v4, v5, v8, v11, v2}, [Landroid/animation/Animator;

    .line 507
    move-result-object v2

    .line 510
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 511
    move-object v2, v3

    .line 514
    goto :goto_a

    .line 515
    :cond_f
    :goto_9
    move-object/from16 p1, v9

    .line 516
    const/4 v2, 0x0

    .line 518
    :goto_a
    iput-object v2, v0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    .line 521
    move-result v2

    .line 524
    if-eqz v2, :cond_10

    .line 525
    iget-object v2, v0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 527
    invoke-interface {v2}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    .line 529
    move-result-object v3

    .line 532
    if-eqz v3, :cond_10

    .line 533
    invoke-interface {v2}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    .line 535
    move-result-object v1

    .line 538
    goto/16 :goto_d

    .line 539
    :cond_10
    const v2, 0x7f0a0412    # @id/icon

    .line 541
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 544
    move-result-object v2

    .line 547
    const v3, 0x7f0a0966    # @id/text

    .line 548
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 551
    move-result-object v3

    .line 554
    if-eqz v2, :cond_12

    .line 555
    if-nez v3, :cond_11

    .line 557
    goto/16 :goto_b

    .line 559
    :cond_11
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 561
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 563
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 566
    const v8, 0x3e99999a    # 0.3f

    .line 568
    const/high16 v9, 0x3f800000    # 1.0f

    .line 571
    invoke-direct {v5, v8, v10, v9, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 573
    const/4 v8, 0x2

    .line 576
    new-array v9, v8, [F

    .line 577
    fill-array-data v9, :array_5

    .line 579
    move-object/from16 v11, p1

    .line 582
    invoke-static {v1, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 584
    move-result-object v9

    .line 587
    invoke-virtual {v9, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 588
    const-wide/16 v11, 0xfa

    .line 591
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 593
    sput-object v9, Lcom/android/systemui/toast/ToastDefaultAnimation;->viewScaleX:Landroid/animation/ValueAnimator;

    .line 596
    new-array v9, v8, [F

    .line 598
    fill-array-data v9, :array_6

    .line 600
    invoke-static {v1, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 603
    move-result-object v7

    .line 606
    invoke-virtual {v7, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 607
    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 610
    new-array v5, v8, [F

    .line 613
    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    .line 615
    move-result v9

    .line 618
    const/4 v11, 0x0

    .line 619
    aput v9, v5, v11

    .line 620
    const/4 v9, 0x1

    .line 622
    aput v10, v5, v9

    .line 623
    const-string v9, "elevation"

    .line 625
    invoke-static {v1, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 627
    move-result-object v5

    .line 630
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 631
    const-wide/16 v9, 0x28

    .line 634
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 636
    const-wide/16 v9, 0x96

    .line 639
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 641
    new-array v11, v8, [F

    .line 644
    fill-array-data v11, :array_7

    .line 646
    invoke-static {v1, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 649
    move-result-object v1

    .line 652
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 653
    const-wide/16 v11, 0x64

    .line 656
    invoke-virtual {v1, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 658
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 661
    new-array v9, v8, [F

    .line 664
    fill-array-data v9, :array_8

    .line 666
    invoke-static {v3, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 669
    move-result-object v3

    .line 672
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 673
    const-wide/16 v9, 0xa6

    .line 676
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 678
    new-array v8, v8, [F

    .line 681
    fill-array-data v8, :array_9

    .line 683
    invoke-static {v2, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 686
    move-result-object v2

    .line 689
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 693
    new-instance v13, Landroid/animation/AnimatorSet;

    .line 696
    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 698
    sget-object v4, Lcom/android/systemui/toast/ToastDefaultAnimation;->viewScaleX:Landroid/animation/ValueAnimator;

    .line 701
    move-object/from16 p1, v4

    .line 703
    move-object/from16 p2, v7

    .line 705
    move-object/from16 p3, v5

    .line 707
    move-object/from16 p4, v1

    .line 709
    move-object/from16 p5, v3

    .line 711
    move-object/from16 p6, v2

    .line 713
    filled-new-array/range {p1 .. p6}, [Landroid/animation/Animator;

    .line 715
    move-result-object v1

    .line 718
    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 719
    goto :goto_c

    .line 722
    :cond_12
    :goto_b
    const/4 v13, 0x0

    .line 723
    :goto_c
    move-object v1, v13

    .line 724
    :goto_d
    iput-object v1, v0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    .line 725
    move/from16 v1, p7

    .line 727
    invoke-virtual {v0, v1}, Lcom/android/systemui/toast/SystemUIToast;->onOrientationChange(I)V

    .line 729
    return-void

    .line 732
    nop

    .line 733
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 734
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 742
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 750
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 758
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 766
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    .line 774
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    .line 782
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 790
    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 798
    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 806
.end method


# virtual methods
.method public final getGravity()Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 8
    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final getHorizontalMargin()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 8
    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method public final getInAnimation()Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getOutAnimation()Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getVerticalMargin()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 8
    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getXOffset()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 8
    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method public final getYOffset()Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 8
    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final isPluginToast()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final onOrientationChange(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->onOrientationChange(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 14
    const v1, 0x10502fc

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/toast/SystemUIToast;->mSupportMiBlur:Z

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v1

    .line 31
    const v2, 0x7f071202    # @dimen/toast_y_offset_new '92.0dp'

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result v1

    .line 38
    add-int/2addr v1, v0

    .line 39
    iput v1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p1

    .line 45
    const v0, 0x10e0112    # @android:integer/config_windowOutsetBottom

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 49
    move-result p1

    .line 52
    iput p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    .line 53
    return-void
    .line 55
.end method

.method public final onUIModeChange(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->onUIModeChange(Z)V

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mSupportMiBlur:Z

    .line 9
    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    .line 13
    const v0, 0x7f0a0966    # @id/text

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Landroid/widget/TextView;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 24
    const v0, 0x7f0603c6    # @color/miui_shadow_toast_text_color '#cc000000'

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 29
    move-result p0

    .line 32
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    :cond_1
    return-void
    .line 36
.end method
