.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

.field public final synthetic val$animate:Z


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    iput-boolean p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;->val$animate:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 4
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 15
    iget-boolean v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    .line 17
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_0

    .line 20
    iput-boolean v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    .line 22
    goto/16 :goto_d

    .line 24
    :cond_0
    iget-boolean v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;->val$animate:Z

    .line 26
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v2

    .line 33
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 36
    const/4 v5, -0x1

    .line 38
    invoke-static {v5, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(ILandroid/view/View;)V

    .line 39
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    .line 42
    move-result v4

    .line 45
    invoke-virtual {v1, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateMediaControlVisibility(Z)V

    .line 46
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 49
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 53
    move-result-object v4

    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 57
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 61
    move-result-object v5

    .line 64
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 65
    const/high16 v6, 0x40000000    # 2.0f

    .line 67
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 69
    move-result v5

    .line 72
    const/4 v6, 0x0

    .line 73
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 74
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 77
    invoke-static {v2, v5}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(ILandroid/view/View;)V

    .line 79
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object v2

    .line 87
    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    if-eqz v2, :cond_3

    .line 90
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 94
    move-result-object v2

    .line 97
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 98
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 100
    move-result-object v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 106
    move-result v5

    .line 109
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 110
    move-result v7

    .line 113
    if-lt v5, v7, :cond_1

    .line 114
    iget v8, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    .line 116
    int-to-float v8, v8

    .line 118
    int-to-float v7, v7

    .line 119
    mul-float/2addr v8, v7

    .line 120
    int-to-float v5, v5

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    iget v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    .line 123
    int-to-float v5, v5

    .line 125
    const/high16 v7, 0x41100000    # 9.0f

    .line 126
    mul-float v8, v5, v7

    .line 128
    const/high16 v5, 0x41800000    # 16.0f

    .line 130
    :goto_0
    div-float/2addr v8, v5

    .line 132
    const/high16 v5, 0x3f000000    # 0.5f

    .line 133
    add-float/2addr v8, v5

    .line 135
    float-to-int v5, v8

    .line 136
    iget-object v7, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 137
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 139
    move-result v8

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 143
    move-result v2

    .line 146
    if-lt v8, v2, :cond_2

    .line 147
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 149
    goto :goto_1

    .line 151
    :cond_2
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 152
    :goto_1
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    goto :goto_2

    .line 157
    :cond_3
    move v5, v6

    .line 158
    :goto_2
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    .line 159
    move-result v2

    .line 162
    invoke-virtual {v1, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getMainControllerHeight(Z)I

    .line 163
    move-result v2

    .line 166
    iget-object v7, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 167
    check-cast v7, Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 171
    move-result v7

    .line 174
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isGroup()Z

    .line 175
    move-result v8

    .line 178
    if-eqz v8, :cond_4

    .line 179
    iget v8, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    .line 181
    iget-object v9, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 183
    invoke-virtual {v9}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 185
    move-result-object v9

    .line 188
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 189
    move-result v9

    .line 192
    mul-int/2addr v9, v8

    .line 193
    goto :goto_3

    .line 194
    :cond_4
    move v9, v6

    .line 195
    :goto_3
    if-lez v7, :cond_5

    .line 196
    iget v7, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListPaddingTop:I

    .line 198
    add-int/2addr v9, v7

    .line 200
    :cond_5
    iget v7, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListMaxHeight:I

    .line 201
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    .line 203
    move-result v7

    .line 206
    iget-boolean v8, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 207
    if-eqz v8, :cond_6

    .line 209
    goto :goto_4

    .line 211
    :cond_6
    move v7, v6

    .line 212
    :goto_4
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 213
    move-result v8

    .line 216
    add-int/2addr v8, v2

    .line 217
    new-instance v9, Landroid/graphics/Rect;

    .line 218
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 220
    invoke-virtual {v4, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 223
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    .line 226
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 228
    move-result v4

    .line 231
    iget-object v10, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 232
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 234
    move-result v10

    .line 237
    sub-int/2addr v4, v10

    .line 238
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 239
    move-result v10

    .line 242
    sub-int/2addr v10, v4

    .line 243
    const/16 v4, 0x8

    .line 244
    if-lez v5, :cond_7

    .line 246
    if-gt v8, v10, :cond_7

    .line 248
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 250
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 255
    invoke-static {v5, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(ILandroid/view/View;)V

    .line 257
    goto :goto_5

    .line 260
    :cond_7
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 261
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 263
    move-result-object v5

    .line 266
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    iget-object v8, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 269
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 271
    move-result v8

    .line 274
    add-int/2addr v8, v5

    .line 275
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 276
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 278
    move-result v5

    .line 281
    if-lt v8, v5, :cond_8

    .line 282
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 284
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    :cond_8
    add-int v8, v7, v2

    .line 289
    move v5, v6

    .line 291
    :goto_5
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    .line 292
    move-result v2

    .line 295
    if-eqz v2, :cond_9

    .line 296
    if-gt v8, v10, :cond_9

    .line 298
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 300
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    goto :goto_6

    .line 305
    :cond_9
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 306
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 308
    :goto_6
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 311
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 313
    move-result v2

    .line 316
    if-nez v2, :cond_a

    .line 317
    move v2, v3

    .line 319
    goto :goto_7

    .line 320
    :cond_a
    move v2, v6

    .line 321
    :goto_7
    invoke-virtual {v1, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateMediaControlVisibility(Z)V

    .line 322
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 325
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 327
    move-result v2

    .line 330
    if-nez v2, :cond_b

    .line 331
    move v2, v3

    .line 333
    goto :goto_8

    .line 334
    :cond_b
    move v2, v6

    .line 335
    :goto_8
    invoke-virtual {v1, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getMainControllerHeight(Z)I

    .line 336
    move-result v2

    .line 339
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 340
    move-result v4

    .line 343
    add-int/2addr v4, v2

    .line 344
    if-le v4, v10, :cond_c

    .line 345
    sub-int/2addr v4, v10

    .line 347
    sub-int/2addr v7, v4

    .line 348
    goto :goto_9

    .line 349
    :cond_c
    move v10, v4

    .line 350
    :goto_9
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 351
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 353
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 356
    invoke-virtual {v4}, Landroid/widget/ListView;->clearAnimation()V

    .line 358
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 361
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 363
    if-eqz v0, :cond_d

    .line 366
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 368
    invoke-virtual {v1, v2, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->animateLayoutHeight(ILandroid/view/View;)V

    .line 370
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 373
    invoke-virtual {v1, v7, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->animateLayoutHeight(ILandroid/view/View;)V

    .line 375
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 378
    invoke-virtual {v1, v10, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->animateLayoutHeight(ILandroid/view/View;)V

    .line 380
    goto :goto_a

    .line 383
    :cond_d
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 384
    invoke-static {v2, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(ILandroid/view/View;)V

    .line 386
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 389
    invoke-static {v7, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(ILandroid/view/View;)V

    .line 391
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 394
    invoke-static {v10, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(ILandroid/view/View;)V

    .line 396
    :goto_a
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    .line 399
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 401
    move-result v4

    .line 404
    invoke-static {v4, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(ILandroid/view/View;)V

    .line 405
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 408
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 410
    move-result-object v2

    .line 413
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 414
    move-result v4

    .line 417
    if-eqz v4, :cond_e

    .line 418
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 420
    check-cast v0, Ljava/util/ArrayList;

    .line 422
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 427
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 429
    goto/16 :goto_d

    .line 432
    :cond_e
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 434
    new-instance v5, Ljava/util/HashSet;

    .line 436
    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 438
    new-instance v4, Ljava/util/HashSet;

    .line 441
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 443
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    .line 446
    move-result v4

    .line 449
    if-eqz v4, :cond_f

    .line 450
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 452
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 454
    goto/16 :goto_d

    .line 457
    :cond_f
    if-eqz v0, :cond_10

    .line 459
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 461
    iget-object v7, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 463
    new-instance v8, Ljava/util/HashMap;

    .line 465
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 467
    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    .line 470
    move-result v9

    .line 473
    move v10, v6

    .line 474
    :goto_b
    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    .line 475
    move-result v11

    .line 478
    if-ge v10, v11, :cond_11

    .line 479
    add-int v11, v9, v10

    .line 481
    invoke-virtual {v7, v11}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 483
    move-result-object v11

    .line 486
    invoke-virtual {v5, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 487
    move-result-object v12

    .line 490
    new-instance v13, Landroid/graphics/Rect;

    .line 491
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    .line 493
    move-result v14

    .line 496
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    .line 497
    move-result v15

    .line 500
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    .line 501
    move-result v4

    .line 504
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    .line 505
    move-result v12

    .line 508
    invoke-direct {v13, v14, v15, v4, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 509
    invoke-virtual {v8, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    add-int/lit8 v10, v10, 0x1

    .line 515
    goto :goto_b

    .line 517
    :cond_10
    const/4 v8, 0x0

    .line 518
    :cond_11
    if-eqz v0, :cond_12

    .line 519
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 521
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 523
    iget-object v7, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 525
    new-instance v9, Ljava/util/HashMap;

    .line 527
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 529
    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    .line 532
    move-result v10

    .line 535
    move v11, v6

    .line 536
    :goto_c
    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    .line 537
    move-result v12

    .line 540
    if-ge v11, v12, :cond_13

    .line 541
    add-int v12, v10, v11

    .line 543
    invoke-virtual {v7, v12}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 545
    move-result-object v12

    .line 548
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 549
    move-result-object v13

    .line 552
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 553
    move-result v14

    .line 556
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    .line 557
    move-result v15

    .line 560
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 561
    invoke-static {v14, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 563
    move-result-object v3

    .line 566
    new-instance v14, Landroid/graphics/Canvas;

    .line 567
    invoke-direct {v14, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 569
    invoke-virtual {v13, v14}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 572
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 575
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 577
    move-result-object v14

    .line 580
    invoke-direct {v13, v14, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 581
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    add-int/lit8 v11, v11, 0x1

    .line 587
    const/4 v3, 0x1

    .line 589
    goto :goto_c

    .line 590
    :cond_12
    const/4 v9, 0x0

    .line 591
    :cond_13
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 592
    new-instance v4, Ljava/util/HashSet;

    .line 594
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 596
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 599
    iput-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 602
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 604
    new-instance v4, Ljava/util/HashSet;

    .line 606
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 608
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 611
    iput-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    .line 614
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 616
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 618
    check-cast v2, Ljava/util/ArrayList;

    .line 620
    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 622
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 625
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    .line 627
    check-cast v2, Ljava/util/ArrayList;

    .line 629
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 631
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 634
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 636
    if-eqz v0, :cond_14

    .line 639
    iget-boolean v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 641
    if-eqz v0, :cond_14

    .line 643
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 645
    check-cast v0, Ljava/util/HashSet;

    .line 647
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 649
    move-result v0

    .line 652
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    .line 653
    check-cast v2, Ljava/util/HashSet;

    .line 655
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 657
    move-result v2

    .line 660
    add-int/2addr v2, v0

    .line 661
    if-lez v2, :cond_14

    .line 662
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 664
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 666
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 669
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 671
    const/4 v0, 0x1

    .line 674
    iput-boolean v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    .line 675
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 677
    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 679
    move-result-object v0

    .line 682
    new-instance v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$8;

    .line 683
    invoke-direct {v2, v1, v8, v9}, Landroidx/mediarouter/app/MediaRouteControllerDialog$8;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Ljava/util/Map;Ljava/util/Map;)V

    .line 685
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 688
    goto :goto_d

    .line 691
    :cond_14
    const/4 v0, 0x0

    .line 692
    iput-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 693
    iput-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    .line 695
    :goto_d
    return-void
    .line 697
.end method
