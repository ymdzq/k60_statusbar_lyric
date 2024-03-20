.class public final Lcom/android/systemui/media/controls/models/player/SeekBarObserver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public animationEnabled:Z

.field public final holder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

.field public final seekBarEnabledMaxHeight:I

.field public final seekBarEnabledVerticalPadding:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/models/player/MediaViewHolder;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->holder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 5
    iget-object p1, p1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 7
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 16
    const v1, 0x7f070fb6    # @dimen/qs_media_enabled_seekbar_height '3.0dp'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->seekBarEnabledMaxHeight:I

    .line 24
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v0

    .line 33
    const v1, 0x7f070fb5    # @dimen/qs_media_disabled_seekbar_height '1.0dp'

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v0

    .line 47
    const v1, 0x7f070fcd    # @dimen/qs_media_session_enabled_seekbar_vertical_padding '0.0dp'

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result v0

    .line 54
    iput v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->seekBarEnabledVerticalPadding:I

    .line 55
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v0

    .line 64
    const v1, 0x7f070fcc    # @dimen/qs_media_session_disabled_seekbar_vertical_padding '0.0dp'

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->animationEnabled:Z

    .line 72
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object p0

    .line 81
    const v1, 0x7f070fca    # @dimen/qs_media_seekbar_progress_wavelength '20.0dp'

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    move-result p0

    .line 88
    int-to-float p0, p0

    .line 89
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 90
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v1

    .line 97
    const v2, 0x7f070fc7    # @dimen/qs_media_seekbar_progress_amplitude '1.5dp'

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 101
    move-result v1

    .line 104
    int-to-float v1, v1

    .line 105
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v2

    .line 113
    const v3, 0x7f070fc8    # @dimen/qs_media_seekbar_progress_phase '8.0dp'

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    move-result v2

    .line 120
    int-to-float v2, v2

    .line 121
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 122
    move-result-object v3

    .line 125
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    move-result-object v3

    .line 129
    const v4, 0x7f070fc9    # @dimen/qs_media_seekbar_progress_stroke_width '2.0dp'

    .line 130
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    move-result v3

    .line 136
    int-to-float v3, v3

    .line 137
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 138
    move-result-object p1

    .line 141
    instance-of v4, p1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 142
    if-eqz v4, :cond_0

    .line 144
    check-cast p1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 146
    goto :goto_0

    .line 148
    :cond_0
    const/4 p1, 0x0

    .line 149
    :goto_0
    if-eqz p1, :cond_3

    .line 150
    iput p0, p1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->waveLength:F

    .line 152
    iput v1, p1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->lineAmplitude:F

    .line 154
    iput v2, p1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->phaseSpeed:F

    .line 156
    iget p0, p1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->strokeWidth:F

    .line 158
    cmpg-float p0, p0, v3

    .line 160
    if-nez p0, :cond_1

    .line 162
    goto :goto_1

    .line 164
    :cond_1
    const/4 v0, 0x0

    .line 165
    :goto_1
    if-eqz v0, :cond_2

    .line 166
    goto :goto_2

    .line 168
    :cond_2
    iput v3, p1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->strokeWidth:F

    .line 169
    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    .line 171
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->linePaint:Landroid/graphics/Paint;

    .line 176
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    :cond_3
    :goto_2
    return-void
    .line 181
.end method


# virtual methods
.method public buildResetAnimator(I)Landroid/animation/Animator;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->holder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 4
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 6
    move-result v0

    .line 9
    const/16 v1, 0x2ee

    .line 10
    add-int/2addr p1, v1

    .line 12
    filled-new-array {v0, p1}, [I

    .line 13
    move-result-object p1

    .line 16
    const-string v0, "progress"

    .line 17
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object p0

    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 24
    int-to-long v0, v1

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    sget-object p1, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 31
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    return-object p0
    .line 36
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->holder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 6
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v1

    .line 11
    instance-of v2, v1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 12
    if-eqz v2, :cond_0

    .line 14
    check-cast v1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-boolean v2, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->enabled:Z

    .line 20
    iget-object v3, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->totalTimeView:Landroid/widget/TextView;

    .line 22
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    .line 24
    iget-object v5, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    .line 26
    iget-object v6, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 30
    const/16 v7, 0xff

    .line 32
    const/4 v8, 0x0

    .line 34
    if-nez v2, :cond_2

    .line 35
    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 37
    if-nez v1, :cond_1

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v1, v8}, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->setAnimate(Z)V

    .line 43
    :goto_1
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 50
    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 53
    const-string p0, ""

    .line 56
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const-string p0, "00:00"

    .line 67
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    goto/16 :goto_5

    .line 75
    :cond_2
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object v2

    .line 80
    iget-boolean v9, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->seekAvailable:Z

    .line 81
    if-eqz v9, :cond_3

    .line 83
    goto :goto_2

    .line 85
    :cond_3
    move v7, v8

    .line 86
    :goto_2
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 87
    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 90
    const/4 v2, 0x1

    .line 93
    iget-boolean v7, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->scrubbing:Z

    .line 94
    if-nez v1, :cond_4

    .line 96
    goto :goto_3

    .line 98
    :cond_4
    iget-boolean v10, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->playing:Z

    .line 99
    if-eqz v10, :cond_5

    .line 101
    if-nez v7, :cond_5

    .line 103
    iget-boolean v10, p0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->animationEnabled:Z

    .line 105
    if-eqz v10, :cond_5

    .line 107
    move v8, v2

    .line 109
    :cond_5
    invoke-virtual {v1, v8}, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->setAnimate(Z)V

    .line 110
    :goto_3
    if-nez v1, :cond_6

    .line 113
    goto :goto_4

    .line 115
    :cond_6
    xor-int/2addr v2, v9

    .line 116
    iput-boolean v2, v1, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->transitionEnabled:Z

    .line 117
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 119
    :goto_4
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMaxHeight()I

    .line 122
    move-result v1

    .line 125
    iget v2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->seekBarEnabledMaxHeight:I

    .line 126
    if-eq v1, v2, :cond_7

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    .line 130
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    .line 133
    move-result v1

    .line 136
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingRight()I

    .line 137
    move-result v2

    .line 140
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    .line 141
    move-result v8

    .line 144
    iget p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->seekBarEnabledVerticalPadding:I

    .line 145
    invoke-virtual {v0, v1, p0, v2, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 147
    :cond_7
    iget p0, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->duration:I

    .line 150
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 152
    int-to-long v1, p0

    .line 155
    const-wide/16 v8, 0x3e8

    .line 156
    div-long/2addr v1, v8

    .line 158
    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 159
    move-result-object p0

    .line 162
    if-eqz v7, :cond_8

    .line 163
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_8
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p1, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    .line 171
    if-eqz p1, :cond_a

    .line 173
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 175
    move-result p1

    .line 178
    int-to-long v1, p1

    .line 179
    div-long/2addr v1, v8

    .line 180
    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 184
    if-eqz v7, :cond_9

    .line 185
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_9
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 190
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 196
    move-result-object p1

    .line 199
    const v2, 0x7f130313    # @string/controls_media_seekbar_description '%1$s of %2$s'

    .line 200
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 203
    move-result-object p0

    .line 206
    invoke-virtual {p1, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    move-result-object p0

    .line 210
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    :cond_a
    :goto_5
    return-void
    .line 214
.end method
