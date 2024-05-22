.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/MenuView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/MenuView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 9
    goto/16 :goto_2

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuAnimationController:Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->fadeInNowIfEnabled()V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewAppearance:Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;

    .line 25
    iput p1, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSizeType:I

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->isMenuOnLeftSide()Z

    .line 29
    move-result p1

    .line 32
    iget v1, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mTargetFeaturesSize:I

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->getMenuRadius(I)I

    .line 35
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    invoke-static {v1, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->createRadii(FZ)[F

    .line 40
    move-result-object p1

    .line 43
    iput-object p1, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mRadii:[F

    .line 44
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewAppearance:Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;

    .line 48
    iget v1, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSizeType:I

    .line 50
    if-nez v1, :cond_0

    .line 52
    iget v2, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSmallPadding:I

    .line 54
    goto :goto_0

    .line 56
    :cond_0
    iget v2, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mLargePadding:I

    .line 57
    :goto_0
    iput v2, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mItemPadding:I

    .line 59
    if-nez v1, :cond_1

    .line 61
    iget v0, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSmallIconSize:I

    .line 63
    goto :goto_1

    .line 65
    :cond_1
    iget v0, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mLargeIconSize:I

    .line 66
    :goto_1
    iput v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mIconWidthHeight:I

    .line 68
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->onSizeChanged()V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->onEdgeChanged()V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->onPositionChanged()V

    .line 79
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuAnimationController:Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->fadeOutIfEnabled()V

    .line 84
    return-void

    .line 87
    :pswitch_1
    check-cast p1, Lcom/android/systemui/accessibility/floatingmenu/Position;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewAppearance:Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;

    .line 90
    invoke-virtual {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->setPercentagePosition(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->onPositionChanged()V

    .line 95
    return-void

    .line 98
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    move-result p1

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mIsMoveToTucked:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->onPositionChanged()V

    .line 107
    return-void

    .line 110
    :pswitch_3
    check-cast p1, Lcom/android/systemui/accessibility/floatingmenu/MenuFadeEffectInfo;

    .line 111
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuAnimationController:Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;

    .line 113
    iget-boolean v1, p1, Lcom/android/systemui/accessibility/floatingmenu/MenuFadeEffectInfo;->isFadeEffectEnabled:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mIsFadeEffectEnabled:Z

    .line 117
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mHandler:Landroid/os/Handler;

    .line 119
    const/4 v4, 0x0

    .line 121
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 125
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 127
    new-array v0, v0, [F

    .line 130
    const/high16 v5, 0x3f800000    # 1.0f

    .line 132
    aput v5, v0, v3

    .line 134
    iget p1, p1, Lcom/android/systemui/accessibility/floatingmenu/MenuFadeEffectInfo;->opacity:F

    .line 136
    aput p1, v0, v2

    .line 138
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 140
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda2;

    .line 143
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;F)V

    .line 145
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void

    .line 151
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuAnimationController:Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;

    .line 154
    invoke-virtual {v1}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->fadeInNowIfEnabled()V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mTargetFeatures:Ljava/util/List;

    .line 159
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 161
    move-result-object v1

    .line 164
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 165
    move-result-object v1

    .line 168
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 169
    move-result-object v1

    .line 172
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mTargetFeatures:Ljava/util/List;

    .line 173
    check-cast v4, Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mTargetFeatures:Ljava/util/List;

    .line 180
    check-cast v4, Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewAppearance:Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 189
    move-result v5

    .line 192
    iput v5, v4, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mTargetFeaturesSize:I

    .line 193
    invoke-virtual {v4}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->isMenuOnLeftSide()Z

    .line 195
    move-result v6

    .line 198
    invoke-virtual {v4, v5}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->getMenuRadius(I)I

    .line 199
    move-result v5

    .line 202
    int-to-float v5, v5

    .line 203
    invoke-static {v5, v6}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->createRadii(FZ)[F

    .line 204
    move-result-object v5

    .line 207
    iput-object v5, v4, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mRadii:[F

    .line 208
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mTargetFeaturesView:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    iget-object v5, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewAppearance:Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;

    .line 212
    iget v6, v5, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSizeType:I

    .line 214
    if-nez v6, :cond_2

    .line 216
    iget v7, v5, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSmallPadding:I

    .line 218
    goto :goto_3

    .line 220
    :cond_2
    iget v7, v5, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mLargePadding:I

    .line 221
    :goto_3
    if-nez v6, :cond_3

    .line 223
    iget v6, v5, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSmallIconSize:I

    .line 225
    goto :goto_4

    .line 227
    :cond_3
    iget v6, v5, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mLargeIconSize:I

    .line 228
    :goto_4
    add-int/2addr v6, v7

    .line 230
    iget v8, v5, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mTargetFeaturesSize:I

    .line 231
    mul-int/2addr v6, v8

    .line 233
    add-int/2addr v6, v7

    .line 234
    invoke-virtual {v5}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->getWindowAvailableBounds()Landroid/graphics/Rect;

    .line 235
    move-result-object v5

    .line 238
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 239
    move-result v5

    .line 242
    if-le v6, v5, :cond_4

    .line 243
    move v5, v2

    .line 245
    goto :goto_5

    .line 246
    :cond_4
    move v5, v3

    .line 247
    :goto_5
    if-eqz v5, :cond_5

    .line 248
    move v0, v3

    .line 250
    :cond_5
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 251
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/MenuTargetsCallback;

    .line 254
    invoke-direct {v0, v1, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuTargetsCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 256
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 259
    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    .line 263
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->onSizeChanged()V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->onEdgeChanged()V

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->onPositionChanged()V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mFeaturesChangeListener:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda3;

    .line 277
    if-eqz v0, :cond_a

    .line 279
    iget-object v0, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 286
    move-result v1

    .line 289
    if-ge v1, v2, :cond_6

    .line 290
    goto :goto_8

    .line 292
    :cond_6
    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mMessageView:Lcom/android/systemui/accessibility/floatingmenu/MenuMessageView;

    .line 293
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 295
    move-result v1

    .line 298
    if-nez v1, :cond_7

    .line 299
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->undo()V

    .line 301
    :cond_7
    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mMessageView:Lcom/android/systemui/accessibility/floatingmenu/MenuMessageView;

    .line 304
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 306
    move-result-object v1

    .line 309
    check-cast v1, Landroid/widget/TextView;

    .line 310
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 312
    move-result v4

    .line 315
    if-lez v4, :cond_8

    .line 316
    move v4, v2

    .line 318
    goto :goto_6

    .line 319
    :cond_8
    move v4, v3

    .line 320
    :goto_6
    const-string v5, "The list should at least have one feature."

    .line 321
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 323
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 326
    move-result v4

    .line 329
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 330
    move-result-object v0

    .line 333
    if-ne v4, v2, :cond_9

    .line 334
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    move-result-object p1

    .line 339
    check-cast p1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 340
    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    .line 342
    move-result-object p1

    .line 345
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 346
    move-result-object p1

    .line 349
    const v2, 0x7f13008b    # @string/accessibility_floating_button_undo_message_label_text '%s shortcut removed'

    .line 350
    invoke-virtual {v0, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    move-result-object p1

    .line 356
    goto :goto_7

    .line 357
    :cond_9
    const p1, 0x7f13008c    # @string/accessibility_floating_button_undo_message_number_text '{count, plural, =1 {# shortcut removed} other {# shortcuts removed} }'

    .line 358
    invoke-static {v0, p1, v4}, Lcom/android/systemui/util/PluralMessageFormaterKt;->icuMessageFormat(Landroid/content/res/Resources;II)Ljava/lang/String;

    .line 361
    move-result-object p1

    .line 364
    :goto_7
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :cond_a
    :goto_8
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuAnimationController:Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->fadeOutIfEnabled()V

    .line 370
    return-void

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 374
.end method
