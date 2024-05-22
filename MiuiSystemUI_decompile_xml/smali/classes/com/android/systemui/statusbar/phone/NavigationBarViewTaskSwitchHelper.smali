.class public final Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final ONE_HANDED_TRANSITION_DIRECTION_TRIGGER_LEFT:I

.field public final ONE_HANDED_TRANSITION_DIRECTION_TRIGGER_RIGHT:I

.field public final context:Landroid/content/Context;

.field public final mEventTracker:Lcom/miui/interfaces/IEventTracker;

.field public mIsVertical:Z

.field public final mMinFlingVelocity:I

.field public final mScrollTouchSlop:I

.field public final mTaskSwitcherDetector:Landroid/view/GestureDetector;

.field public mTouchDownX:I

.field public mTouchDownY:I

.field public final navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public final oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    .line 5
    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 15
    const v1, 0x7f070d15    # @dimen/navigation_bar_size '@android:dimen/notification_big_picture_max_height'

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    .line 23
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 29
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    .line 33
    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->ONE_HANDED_TRANSITION_DIRECTION_TRIGGER_LEFT:I

    .line 36
    const/4 v0, 0x4

    .line 38
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->ONE_HANDED_TRANSITION_DIRECTION_TRIGGER_RIGHT:I

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 45
    const-class p1, Lcom/miui/interfaces/IEventTracker;

    .line 47
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 52
    check-cast p1, Lcom/miui/interfaces/IEventTracker;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 55
    return-void
    .line 57
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    .line 3
    move-result v1

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 7
    move-result v2

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    move-result v3

    .line 14
    sub-float/2addr v2, v3

    .line 15
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 16
    move-result v2

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 20
    move-result v3

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 24
    move-result v4

    .line 27
    sub-float/2addr v3, v4

    .line 28
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 29
    move-result v3

    .line 32
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    .line 33
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-nez v4, :cond_0

    .line 37
    const/high16 v4, 0x40000000    # 2.0f

    .line 39
    mul-float/2addr v3, v4

    .line 41
    cmpl-float v3, v2, v3

    .line 42
    if-lez v3, :cond_0

    .line 44
    iget v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    .line 46
    int-to-float v3, v3

    .line 48
    cmpl-float v2, v2, v3

    .line 49
    if-lez v2, :cond_0

    .line 51
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    .line 53
    int-to-float v2, v2

    .line 55
    cmpl-float v1, v1, v2

    .line 56
    if-lez v1, :cond_0

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 60
    move-result v1

    .line 63
    const/4 v2, 0x0

    .line 64
    cmpl-float v1, v1, v2

    .line 65
    if-lez v1, :cond_0

    .line 67
    move v1, v6

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v1, v5

    .line 71
    :goto_0
    if-eqz v1, :cond_d

    .line 72
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 74
    const/4 v2, 0x0

    .line 76
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 79
    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    iget-object v1, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 85
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object v1

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-object v1, v2

    .line 94
    :goto_1
    check-cast v1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;

    .line 95
    const/4 v3, 0x2

    .line 97
    new-array v4, v3, [I

    .line 98
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 100
    if-eqz v7, :cond_2

    .line 102
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 104
    move-result-object v7

    .line 107
    if-eqz v7, :cond_2

    .line 108
    iget-object v7, v7, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 110
    if-eqz v7, :cond_2

    .line 112
    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 114
    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    .line 117
    aget v8, v4, v5

    .line 119
    aget v9, v4, v6

    .line 121
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 123
    if-eqz v10, :cond_3

    .line 125
    invoke-virtual {v10}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 127
    move-result-object v10

    .line 130
    if-eqz v10, :cond_3

    .line 131
    iget-object v10, v10, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 133
    if-eqz v10, :cond_3

    .line 135
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 137
    move-result v10

    .line 140
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v10

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    move-object v10, v2

    .line 146
    :goto_2
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 150
    move-result v10

    .line 153
    add-int/2addr v10, v8

    .line 154
    aget v11, v4, v6

    .line 155
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 157
    if-eqz v12, :cond_4

    .line 159
    invoke-virtual {v12}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 161
    move-result-object v12

    .line 164
    if-eqz v12, :cond_4

    .line 165
    iget-object v12, v12, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 167
    if-eqz v12, :cond_4

    .line 169
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 171
    move-result v12

    .line 174
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v12

    .line 178
    goto :goto_3

    .line 179
    :cond_4
    move-object v12, v2

    .line 180
    :goto_3
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 184
    move-result v12

    .line 187
    add-int/2addr v12, v11

    .line 188
    invoke-direct {v7, v8, v9, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 189
    sget-object v8, Lcom/android/systemui/statusbar/phone/KeyOrderObserver;->sKeyIdSet:Ljava/util/HashSet;

    .line 192
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->context:Landroid/content/Context;

    .line 194
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 196
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$Companion;->isReversed(Landroid/content/Context;)Z

    .line 199
    move-result v8

    .line 202
    if-eqz v8, :cond_6

    .line 203
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 205
    if-eqz v8, :cond_5

    .line 207
    invoke-virtual {v8}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 209
    move-result-object v8

    .line 212
    if-eqz v8, :cond_5

    .line 213
    iget-object v8, v8, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 215
    goto :goto_4

    .line 217
    :cond_5
    move-object v8, v2

    .line 218
    :goto_4
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 219
    if-eqz v9, :cond_8

    .line 221
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 223
    move-result-object v9

    .line 226
    if-eqz v9, :cond_8

    .line 227
    iget-object v9, v9, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 229
    goto :goto_6

    .line 231
    :cond_6
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 232
    if-eqz v8, :cond_7

    .line 234
    invoke-virtual {v8}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 236
    move-result-object v8

    .line 239
    if-eqz v8, :cond_7

    .line 240
    iget-object v8, v8, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 242
    goto :goto_5

    .line 244
    :cond_7
    move-object v8, v2

    .line 245
    :goto_5
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 246
    if-eqz v9, :cond_8

    .line 248
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 250
    move-result-object v9

    .line 253
    if-eqz v9, :cond_8

    .line 254
    iget-object v9, v9, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 256
    goto :goto_6

    .line 258
    :cond_8
    move-object v9, v2

    .line 259
    :goto_6
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v8, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 263
    new-instance v10, Landroid/graphics/Rect;

    .line 266
    aget v11, v4, v5

    .line 268
    aget v12, v4, v6

    .line 270
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 272
    move-result v13

    .line 275
    add-int/2addr v13, v11

    .line 276
    aget v14, v4, v6

    .line 277
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 279
    move-result v8

    .line 282
    add-int/2addr v8, v14

    .line 283
    invoke-direct {v10, v11, v12, v13, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 284
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v9, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 290
    new-instance v8, Landroid/graphics/Rect;

    .line 293
    aget v11, v4, v5

    .line 295
    aget v12, v4, v6

    .line 297
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 299
    move-result v13

    .line 302
    add-int/2addr v13, v11

    .line 303
    aget v4, v4, v6

    .line 304
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 306
    move-result v9

    .line 309
    add-int/2addr v9, v4

    .line 310
    invoke-direct {v8, v11, v12, v13, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 314
    move-result v4

    .line 317
    iget v9, v7, Landroid/graphics/Rect;->right:I

    .line 318
    int-to-float v9, v9

    .line 320
    cmpg-float v4, v4, v9

    .line 321
    if-gez v4, :cond_9

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 325
    move-result v4

    .line 328
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 329
    int-to-float v9, v9

    .line 331
    cmpl-float v4, v4, v9

    .line 332
    if-lez v4, :cond_9

    .line 334
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->ONE_HANDED_TRANSITION_DIRECTION_TRIGGER_RIGHT:I

    .line 336
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->startOneHandedModeByDirection(I)V

    .line 338
    invoke-virtual {v1, v7, v8}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->gestureSlideEffect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 341
    goto :goto_7

    .line 344
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 345
    move-result v4

    .line 348
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 349
    int-to-float v8, v8

    .line 351
    cmpl-float v4, v4, v8

    .line 352
    if-lez v4, :cond_a

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 356
    move-result v4

    .line 359
    iget v8, v10, Landroid/graphics/Rect;->right:I

    .line 360
    int-to-float v8, v8

    .line 362
    cmpg-float v4, v4, v8

    .line 363
    if-gez v4, :cond_a

    .line 365
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->ONE_HANDED_TRANSITION_DIRECTION_TRIGGER_LEFT:I

    .line 367
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->startOneHandedModeByDirection(I)V

    .line 369
    invoke-virtual {v1, v7, v10}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->gestureSlideEffect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 372
    goto :goto_7

    .line 375
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->context:Landroid/content/Context;

    .line 376
    if-eqz v1, :cond_b

    .line 378
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 380
    move-result-object v2

    .line 383
    :cond_b
    const-string v1, "handy_mode"

    .line 384
    invoke-static {v2, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 386
    move-result v1

    .line 389
    if-ne v1, v6, :cond_c

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 392
    move-result v2

    .line 395
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 396
    int-to-float v4, v4

    .line 398
    cmpg-float v2, v2, v4

    .line 399
    if-gez v2, :cond_c

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 403
    move-result v2

    .line 406
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 407
    int-to-float v4, v4

    .line 409
    cmpl-float v2, v2, v4

    .line 410
    if-lez v2, :cond_c

    .line 412
    iget v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->ONE_HANDED_TRANSITION_DIRECTION_TRIGGER_RIGHT:I

    .line 414
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->startOneHandedModeByDirection(I)V

    .line 416
    goto :goto_7

    .line 419
    :cond_c
    if-ne v1, v3, :cond_d

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 422
    move-result v1

    .line 425
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 426
    int-to-float v2, v2

    .line 428
    cmpl-float v1, v1, v2

    .line 429
    if-lez v1, :cond_d

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 433
    move-result v1

    .line 436
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 437
    int-to-float v2, v2

    .line 439
    cmpg-float v1, v1, v2

    .line 440
    if-gez v1, :cond_d

    .line 442
    iget v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->ONE_HANDED_TRANSITION_DIRECTION_TRIGGER_LEFT:I

    .line 444
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->startOneHandedModeByDirection(I)V

    .line 446
    :cond_d
    :goto_7
    return v6
    .line 449
.end method

.method public final startOneHandedModeByDirection(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->context:Landroid/content/Context;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    const-string v2, "one_handed_direction"

    .line 17
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHanded;->startOneHanded()V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 30
    new-instance p1, Lcom/miui/systemui/events/OneHandedEvent;

    .line 32
    const-string/jumbo v0, "\u7ecf\u5178\u5bfc\u822a"

    .line 34
    const/4 v2, 0x2

    .line 37
    invoke-direct {p1, v0, v1, v2, v1}, Lcom/miui/systemui/events/OneHandedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-interface {p0, p1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_1

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string p1, "NavigationBarViewTaskSwitchHelper"

    .line 46
    const-string v0, "Failed call startOneHandedMode"

    .line 48
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :cond_1
    :goto_1
    return-void
    .line 53
.end method
