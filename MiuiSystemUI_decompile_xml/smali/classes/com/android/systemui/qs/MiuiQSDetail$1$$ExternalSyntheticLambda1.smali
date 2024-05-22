.class public final synthetic Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/MiuiQSDetail$1;

.field public final synthetic f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiQSDetail$1;Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 7
    iput p3, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    iput p4, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 4
    iget v2, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    iget p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSDetail$1;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 10
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 12
    move-result v3

    .line 15
    if-eqz v3, :cond_14

    .line 16
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    move v5, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v5, v4

    .line 24
    :goto_0
    iput-boolean v5, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mIsShowingDetail:Z

    .line 25
    iget-object v6, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContainer:Landroid/view/View;

    .line 27
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object v6

    .line 32
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 33
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 35
    add-int/2addr v2, v7

    .line 37
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 38
    move-result v7

    .line 41
    add-int/2addr v7, p0

    .line 42
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 43
    if-eqz v5, :cond_5

    .line 46
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getContainerHeight()I

    .line 48
    move-result p0

    .line 51
    iput p0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 52
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContainer:Landroid/view/View;

    .line 54
    invoke-virtual {p0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 59
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    .line 61
    move-result-object v6

    .line 64
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 68
    move-result-object p0

    .line 71
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleVisible()Z

    .line 72
    move-result v6

    .line 75
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    move-result-object v6

    .line 79
    const/4 v8, 0x4

    .line 80
    if-nez p0, :cond_1

    .line 81
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 83
    if-eqz p0, :cond_4

    .line 85
    invoke-virtual {p0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 87
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 90
    invoke-virtual {p0, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 92
    goto :goto_1

    .line 95
    :cond_1
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 96
    if-nez v9, :cond_2

    .line 98
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    .line 100
    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 102
    move-result-object v9

    .line 105
    check-cast v9, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 106
    iput-object v9, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 108
    :cond_2
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 110
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    move-result v10

    .line 115
    if-eqz v10, :cond_3

    .line 116
    move v8, v4

    .line 118
    :cond_3
    invoke-virtual {v9, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 119
    iget-object v8, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 122
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    move-result v6

    .line 127
    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    move-result p0

    .line 134
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    .line 135
    move-result v6

    .line 138
    invoke-virtual {v0, p0, v6}, Lcom/android/systemui/qs/MiuiQSDetail;->handleToggleStateChanged(ZZ)V

    .line 139
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 142
    new-instance v6, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda1;

    .line 144
    invoke-direct {v6, v1}, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 146
    invoke-virtual {p0, v6}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    :cond_4
    :goto_1
    iput v2, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mOpenX:I

    .line 152
    iput v7, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mOpenY:I

    .line 154
    goto :goto_2

    .line 156
    :cond_5
    iget v2, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mOpenX:I

    .line 157
    iget v7, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mOpenY:I

    .line 159
    :goto_2
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 161
    if-eqz p0, :cond_6

    .line 163
    move v6, v3

    .line 165
    goto :goto_3

    .line 166
    :cond_6
    move v6, v4

    .line 167
    :goto_3
    if-eqz v1, :cond_7

    .line 168
    move v8, v3

    .line 170
    goto :goto_4

    .line 171
    :cond_7
    move v8, v4

    .line 172
    :goto_4
    if-eq v6, v8, :cond_8

    .line 173
    move v6, v3

    .line 175
    goto :goto_5

    .line 176
    :cond_8
    move v6, v4

    .line 177
    :goto_5
    if-nez v6, :cond_9

    .line 178
    if-ne p0, v1, :cond_9

    .line 180
    goto/16 :goto_c

    .line 182
    :cond_9
    if-eqz v1, :cond_c

    .line 184
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 186
    move-result p0

    .line 189
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 190
    move-result-object v8

    .line 193
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 194
    invoke-virtual {v9, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 196
    move-result-object v9

    .line 199
    check-cast v9, Landroid/view/View;

    .line 200
    iget-object v10, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 202
    invoke-interface {v1, v8, v9, v10}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 204
    move-result-object v8

    .line 207
    if-eqz v8, :cond_b

    .line 208
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    .line 210
    move-result-object v9

    .line 213
    iget-object v10, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 214
    if-eqz v9, :cond_a

    .line 216
    move v11, v4

    .line 218
    goto :goto_6

    .line 219
    :cond_a
    const/16 v11, 0x8

    .line 220
    :goto_6
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v10, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 225
    new-instance v11, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda2;

    .line 227
    invoke-direct {v11, v0, v1, v9}, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/MiuiQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V

    .line 229
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 235
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 237
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 240
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 242
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 245
    invoke-virtual {v9, p0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    const-class p0, Lcom/android/internal/logging/MetricsLogger;

    .line 250
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 252
    move-result-object p0

    .line 255
    check-cast p0, Lcom/android/internal/logging/MetricsLogger;

    .line 256
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 258
    move-result v8

    .line 261
    invoke-virtual {p0, v8}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 262
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 265
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->openDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 267
    move-result-object v8

    .line 270
    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 271
    invoke-virtual {p0, v8}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 273
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 276
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimInListener:Landroid/animation/Animator$AnimatorListener;

    .line 278
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    goto :goto_7

    .line 283
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 284
    const-string v0, "Must return detail view"

    .line 286
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 288
    throw p0

    .line 291
    :cond_c
    if-eqz p0, :cond_d

    .line 292
    const-class p0, Lcom/android/internal/logging/MetricsLogger;

    .line 294
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 296
    move-result-object p0

    .line 299
    check-cast p0, Lcom/android/internal/logging/MetricsLogger;

    .line 300
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 302
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 304
    move-result v1

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 308
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 311
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 313
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->closeDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 315
    move-result-object v1

    .line 318
    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 319
    invoke-virtual {p0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 321
    :cond_d
    const/4 p0, 0x0

    .line 324
    iput-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 325
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 327
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mHeader:Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 329
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 331
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mFooter:Landroid/view/View;

    .line 334
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 339
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-boolean v8, v1, Lcom/android/systemui/qs/MiuiQSPanel;->mGridContentVisible:Z

    .line 347
    if-eq v8, v3, :cond_e

    .line 349
    iget-object v8, v1, Lcom/android/systemui/qs/MiuiQSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 351
    const/16 v9, 0x6f

    .line 353
    invoke-virtual {v8, v9, v4}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    .line 355
    :cond_e
    iput-boolean v3, v1, Lcom/android/systemui/qs/MiuiQSPanel;->mGridContentVisible:Z

    .line 358
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 360
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    new-instance v8, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;

    .line 365
    invoke-direct {v8, v1, v4, v3}, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiQSDetail$1;ZI)V

    .line 367
    iget-object v1, v1, Lcom/android/systemui/qs/MiuiQSDetail$1;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 370
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 372
    :goto_7
    const/16 v1, 0x20

    .line 375
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 377
    if-eqz v6, :cond_13

    .line 380
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 382
    if-eqz v1, :cond_f

    .line 384
    move v6, v3

    .line 386
    goto :goto_8

    .line 387
    :cond_f
    move v6, v4

    .line 388
    :goto_8
    iput-boolean v6, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimatingOpen:Z

    .line 389
    iget-boolean v6, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mFullyExpanded:Z

    .line 391
    if-nez v6, :cond_11

    .line 393
    if-eqz v1, :cond_10

    .line 395
    goto :goto_9

    .line 397
    :cond_10
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 398
    move-result-object v1

    .line 401
    const/4 v2, 0x0

    .line 402
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 403
    move-result-object v1

    .line 406
    const-wide/16 v2, 0x12c

    .line 407
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 409
    move-result-object v1

    .line 412
    invoke-virtual {v1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 413
    move-result-object p0

    .line 416
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 417
    goto :goto_b

    .line 420
    :cond_11
    :goto_9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 421
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 423
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 426
    iget-object v6, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 428
    if-eqz v6, :cond_12

    .line 430
    goto :goto_a

    .line 432
    :cond_12
    move v3, v4

    .line 433
    :goto_a
    invoke-virtual {v1, v2, v7, v3, p0}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)J

    .line 434
    :cond_13
    :goto_b
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mNotifQsContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 437
    invoke-virtual {p0, v5}, Lcom/android/systemui/shade/NotificationsQSContainerController;->setCustomizerAnimating(Z)V

    .line 439
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mNotifQsContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    invoke-static {p0, v5}, Lcom/android/systemui/plugins/qs/QSContainerController$DefaultImpls;->setCustomizerShowing(Lcom/android/systemui/plugins/qs/QSContainerController;Z)V

    .line 447
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mQS:Lcom/android/systemui/qs/MiuiQS;

    .line 450
    if-eqz p0, :cond_14

    .line 452
    check-cast p0, Lcom/android/systemui/qs/MiuiQSFragment;

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->notifyQSDetailChanged()V

    .line 456
    :cond_14
    :goto_c
    return-void
    .line 459
.end method
