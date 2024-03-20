.class public final synthetic Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

.field public final synthetic f$1:Landroid/widget/ImageButton;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lcom/android/systemui/media/controls/models/player/MediaAction;

.field public final synthetic f$4:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$5:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Landroid/widget/ImageButton;Ljava/lang/Runnable;Lcom/android/systemui/media/controls/models/player/MediaAction;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$1:Landroid/widget/ImageButton;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$2:Ljava/lang/Runnable;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$3:Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$4:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$5:Landroid/graphics/drawable/Drawable;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$1:Landroid/widget/ImageButton;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$2:Ljava/lang/Runnable;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$3:Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 8
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$4:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda14;->f$5:Landroid/graphics/drawable/Drawable;

    .line 12
    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 14
    const/4 v5, 0x2

    .line 16
    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 17
    move-result v4

    .line 20
    if-nez v4, :cond_8

    .line 21
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    .line 23
    move-result v4

    .line 26
    iget v6, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 27
    iget-object v7, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 29
    iget-object v8, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 31
    iget-object v9, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 33
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const v10, 0x7f0a0054    # @id/actionPlayPause

    .line 38
    if-ne v4, v10, :cond_0

    .line 41
    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TAP_ACTION_PLAY_PAUSE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    const v10, 0x7f0a0055    # @id/actionPrev

    .line 46
    if-ne v4, v10, :cond_1

    .line 49
    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TAP_ACTION_PREV:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    const v10, 0x7f0a0053    # @id/actionNext

    .line 54
    if-ne v4, v10, :cond_2

    .line 57
    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TAP_ACTION_NEXT:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TAP_ACTION_OTHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 62
    :goto_0
    iget-object v9, v9, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 64
    invoke-interface {v9, v4, v6, v7, v8}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 66
    const/4 v4, 0x0

    .line 69
    const/16 v6, 0x2f8

    .line 70
    invoke-virtual {p1, v6, v4, v4}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->logSmartspaceCardReported(III)V

    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->isPlaying()Z

    .line 75
    move-result v4

    .line 78
    iput-boolean v4, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mWasPlaying:Z

    .line 79
    const/4 v4, 0x1

    .line 81
    iput-boolean v4, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mButtonClicked:Z

    .line 82
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 84
    sget-object v1, Lcom/android/systemui/flags/Flags;->UMO_SURFACE_RIPPLE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 87
    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 89
    check-cast v4, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 91
    invoke-virtual {v4, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 93
    move-result v1

    .line 96
    if-eqz v1, :cond_5

    .line 97
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMultiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    .line 99
    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 101
    iget-object v4, v4, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->multiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    .line 103
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 105
    move-result v4

    .line 108
    mul-int/2addr v4, v5

    .line 109
    int-to-float v9, v4

    .line 110
    new-instance v4, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

    .line 111
    new-instance v12, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    .line 113
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    .line 115
    move-result v5

    .line 118
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    .line 119
    move-result v6

    .line 122
    int-to-float v6, v6

    .line 123
    const/high16 v7, 0x3f000000    # 0.5f

    .line 124
    mul-float/2addr v6, v7

    .line 126
    add-float/2addr v6, v5

    .line 127
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getY()F

    .line 128
    move-result v5

    .line 131
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    .line 132
    move-result v0

    .line 135
    int-to-float v0, v0

    .line 136
    mul-float/2addr v0, v7

    .line 137
    add-float v7, v0, v5

    .line 138
    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 146
    move-result-object v0

    .line 149
    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 150
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;

    .line 152
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->accentPrimary:Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 154
    iget v11, p1, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->currentColor:I

    .line 156
    move-object v5, v12

    .line 158
    move v8, v9

    .line 159
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;-><init>(FFFFFI)V

    .line 160
    invoke-direct {v4, v12}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;)V

    .line 163
    iget-object p1, v1, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;->multipleRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    .line 166
    invoke-virtual {p1}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->getRipples()Ljava/util/ArrayList;

    .line 168
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 172
    move-result v0

    .line 175
    const/16 v5, 0xa

    .line 176
    if-lt v0, v5, :cond_3

    .line 178
    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->getRipples()Ljava/util/ArrayList;

    .line 181
    move-result-object v0

    .line 184
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;

    .line 188
    invoke-direct {v0, v1, v4}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;-><init>(Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;)V

    .line 190
    iget-object v1, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    .line 193
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 195
    move-result v5

    .line 198
    if-eqz v5, :cond_4

    .line 199
    goto :goto_1

    .line 201
    :cond_4
    const-wide/16 v5, 0x5dc

    .line 202
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 204
    new-instance v5, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$1;

    .line 207
    invoke-direct {v5, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$1;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;)V

    .line 209
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    new-instance v4, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$2;

    .line 215
    invoke-direct {v4, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$2;-><init>(Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;)V

    .line 217
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 223
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 226
    :cond_5
    :goto_2
    const-class p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 229
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 231
    move-result-object p1

    .line 234
    check-cast p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 235
    iget-object v0, v2, Lcom/android/systemui/media/controls/models/player/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    .line 237
    if-nez v0, :cond_6

    .line 239
    const-string v0, "null"

    .line 241
    goto :goto_3

    .line 243
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 247
    :goto_3
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onMediaClick(Ljava/lang/String;)V

    .line 248
    instance-of p1, v3, Landroid/graphics/drawable/Animatable;

    .line 251
    if-eqz p1, :cond_7

    .line 253
    check-cast v3, Landroid/graphics/drawable/Animatable;

    .line 255
    invoke-interface {v3}, Landroid/graphics/drawable/Animatable;->start()V

    .line 257
    :cond_7
    instance-of p1, p0, Landroid/graphics/drawable/Animatable;

    .line 260
    if-eqz p1, :cond_8

    .line 262
    check-cast p0, Landroid/graphics/drawable/Animatable;

    .line 264
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 266
    :cond_8
    return-void
    .line 269
.end method
