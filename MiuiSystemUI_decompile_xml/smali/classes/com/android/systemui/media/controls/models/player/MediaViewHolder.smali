.class public final Lcom/android/systemui/media/controls/models/player/MediaViewHolder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final backgroundIds:Ljava/util/Set;

.field public static final controlsIds:Ljava/util/Set;

.field public static final detailIds:Ljava/util/Set;

.field public static final expandedBottomActionIds:Ljava/util/Set;

.field public static final genericButtonIds:Ljava/util/Set;


# instance fields
.field public final action0:Landroid/widget/ImageButton;

.field public final action1:Landroid/widget/ImageButton;

.field public final action2:Landroid/widget/ImageButton;

.field public final action3:Landroid/widget/ImageButton;

.field public final action4:Landroid/widget/ImageButton;

.field public final actionNext:Landroid/widget/ImageButton;

.field public final actionPlayPause:Landroid/widget/ImageButton;

.field public final actionPrev:Landroid/widget/ImageButton;

.field public final albumView:Landroid/widget/ImageView;

.field public final appIcon:Landroid/widget/ImageView;

.field public final artistText:Landroid/widget/TextView;

.field public final elapsedTimeView:Landroid/widget/TextView;

.field public final explicitIndicator:Lcom/android/internal/widget/CachingIconView;

.field public final gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

.field public final mediaBg:Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;

.field public final multiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

.field public final player:Lcom/android/systemui/util/animation/TransitionLayout;

.field public final scrubbingElapsedTimeView:Landroid/widget/TextView;

.field public final scrubbingTotalTimeView:Landroid/widget/TextView;

.field public final seamless:Landroid/view/ViewGroup;

.field public final seamlessButton:Landroid/view/View;

.field public final seamlessIcon:Landroid/widget/ImageView;

.field public final seamlessText:Landroid/widget/TextView;

.field public final seekBar:Landroid/widget/SeekBar;

.field public final titleText:Landroid/widget/TextView;

.field public final totalTimeView:Landroid/widget/TextView;

.field public final turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    const v0, 0x7f0a0412    # @id/icon

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v15

    .line 8
    const v0, 0x7f0a00cf    # @id/app_name

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 15
    const v0, 0x7f0a03ec    # @id/header_title

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v0

    .line 22
    const v1, 0x7f0a03e5    # @id/header_artist

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v14

    .line 29
    const v1, 0x7f0a058b    # @id/media_explicit_indicator

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v13

    .line 36
    const v1, 0x7f0a059b    # @id/media_seamless

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v6

    .line 43
    const v1, 0x7f0a0589    # @id/media_elapsed_time

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v7

    .line 50
    const v1, 0x7f0a05a7    # @id/media_total_time

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v8

    .line 57
    const v1, 0x7f0a0591    # @id/media_progress_bar

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v9

    .line 64
    const v1, 0x7f0a004a    # @id/action0

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v12

    .line 71
    const v1, 0x7f0a004b    # @id/action1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v11

    .line 78
    const v1, 0x7f0a004c    # @id/action2

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v10

    .line 85
    const v1, 0x7f0a004d    # @id/action3

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v5

    .line 92
    const v1, 0x7f0a004e    # @id/action4

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v4

    .line 99
    move-object v1, v15

    .line 100
    move-object v3, v0

    .line 101
    move-object/from16 v16, v4

    .line 102
    move-object v4, v14

    .line 104
    move-object/from16 v17, v5

    .line 105
    move-object v5, v13

    .line 107
    move-object/from16 v18, v10

    .line 108
    move-object v10, v12

    .line 110
    move-object/from16 v19, v11

    .line 111
    move-object/from16 v20, v0

    .line 113
    move-object v0, v12

    .line 115
    move-object/from16 v12, v18

    .line 116
    move-object/from16 v21, v13

    .line 118
    move-object/from16 v13, v17

    .line 120
    move-object/from16 v22, v14

    .line 122
    move-object/from16 v14, v16

    .line 124
    filled-new-array/range {v1 .. v15}, [Ljava/lang/Integer;

    .line 126
    move-result-object v1

    .line 129
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 130
    move-result-object v1

    .line 133
    sput-object v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->controlsIds:Ljava/util/Set;

    .line 134
    move-object/from16 v4, v16

    .line 136
    move-object/from16 v3, v17

    .line 138
    move-object/from16 v2, v18

    .line 140
    move-object/from16 v1, v19

    .line 142
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Integer;

    .line 144
    move-result-object v5

    .line 147
    invoke-static {v5}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 148
    move-result-object v5

    .line 151
    sput-object v5, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->genericButtonIds:Ljava/util/Set;

    .line 152
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Integer;

    .line 154
    move-result-object v0

    .line 157
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 158
    move-result-object v0

    .line 161
    sput-object v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->expandedBottomActionIds:Ljava/util/Set;

    .line 162
    const v0, 0x7f0a0054    # @id/actionPlayPause

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object v0

    .line 170
    move-object/from16 v1, v20

    .line 171
    move-object/from16 v3, v21

    .line 173
    move-object/from16 v2, v22

    .line 175
    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/Integer;

    .line 177
    move-result-object v0

    .line 180
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 181
    move-result-object v0

    .line 184
    sput-object v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->detailIds:Ljava/util/Set;

    .line 185
    const v0, 0x7f0a09f9    # @id/turbulence_noise_view

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v0

    .line 193
    const v1, 0x7f0a09c8    # @id/touch_ripple_view

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v1

    .line 200
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 201
    move-result-object v0

    .line 204
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 205
    move-result-object v0

    .line 208
    sput-object v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->backgroundIds:Ljava/util/Set;

    .line 209
    return-void
    .line 211
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    move-object v0, p1

    .line 5
    check-cast v0, Lcom/android/systemui/util/animation/TransitionLayout;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 8
    const v0, 0x7f0a00a2    # @id/album_art

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/ImageView;

    .line 17
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    .line 19
    const v0, 0x7f0a057e    # @id/media_bg

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;

    .line 28
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->mediaBg:Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;

    .line 30
    const v0, 0x7f0a0412    # @id/icon

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f0a09c8    # @id/touch_ripple_view

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    .line 50
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->multiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    .line 52
    const v0, 0x7f0a09f9    # @id/turbulence_noise_view

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 61
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 63
    const v0, 0x7f0a03ec    # @id/header_title

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->titleText:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0a03e5    # @id/header_artist

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->artistText:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0a058b    # @id/media_explicit_indicator

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    .line 94
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->explicitIndicator:Lcom/android/internal/widget/CachingIconView;

    .line 96
    const v0, 0x7f0a059b    # @id/media_seamless

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 104
    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamless:Landroid/view/ViewGroup;

    .line 107
    const v0, 0x7f0a059d    # @id/media_seamless_image

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 112
    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/ImageView;

    .line 116
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0a059e    # @id/media_seamless_text

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 123
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/TextView;

    .line 127
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessText:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0a059c    # @id/media_seamless_button

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 134
    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessButton:Landroid/view/View;

    .line 138
    const v0, 0x7f0a0591    # @id/media_progress_bar

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 143
    move-result-object v0

    .line 146
    check-cast v0, Landroid/widget/SeekBar;

    .line 147
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 149
    const v0, 0x7f0a0589    # @id/media_elapsed_time

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 154
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/TextView;

    .line 158
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0a05a7    # @id/media_total_time

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 165
    move-result-object v0

    .line 168
    check-cast v0, Landroid/widget/TextView;

    .line 169
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->totalTimeView:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0a0599    # @id/media_scrubbing_elapsed_time

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 176
    move-result-object v0

    .line 179
    check-cast v0, Landroid/widget/TextView;

    .line 180
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0a059a    # @id/media_scrubbing_total_time

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 187
    move-result-object v0

    .line 190
    check-cast v0, Landroid/widget/TextView;

    .line 191
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    .line 193
    new-instance v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 195
    invoke-direct {v0, p1}, Lcom/android/systemui/media/controls/models/GutsViewHolder;-><init>(Landroid/view/View;)V

    .line 197
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 200
    const v0, 0x7f0a0054    # @id/actionPlayPause

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 205
    move-result-object v0

    .line 208
    check-cast v0, Landroid/widget/ImageButton;

    .line 209
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->actionPlayPause:Landroid/widget/ImageButton;

    .line 211
    const v0, 0x7f0a0053    # @id/actionNext

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 216
    move-result-object v0

    .line 219
    check-cast v0, Landroid/widget/ImageButton;

    .line 220
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->actionNext:Landroid/widget/ImageButton;

    .line 222
    const v0, 0x7f0a0055    # @id/actionPrev

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 227
    move-result-object v0

    .line 230
    check-cast v0, Landroid/widget/ImageButton;

    .line 231
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->actionPrev:Landroid/widget/ImageButton;

    .line 233
    const v0, 0x7f0a004a    # @id/action0

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 238
    move-result-object v0

    .line 241
    check-cast v0, Landroid/widget/ImageButton;

    .line 242
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action0:Landroid/widget/ImageButton;

    .line 244
    const v0, 0x7f0a004b    # @id/action1

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 249
    move-result-object v0

    .line 252
    check-cast v0, Landroid/widget/ImageButton;

    .line 253
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action1:Landroid/widget/ImageButton;

    .line 255
    const v0, 0x7f0a004c    # @id/action2

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 260
    move-result-object v0

    .line 263
    check-cast v0, Landroid/widget/ImageButton;

    .line 264
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action2:Landroid/widget/ImageButton;

    .line 266
    const v0, 0x7f0a004d    # @id/action3

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 271
    move-result-object v0

    .line 274
    check-cast v0, Landroid/widget/ImageButton;

    .line 275
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action3:Landroid/widget/ImageButton;

    .line 277
    const v0, 0x7f0a004e    # @id/action4

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 282
    move-result-object v0

    .line 285
    check-cast v0, Landroid/widget/ImageButton;

    .line 286
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action4:Landroid/widget/ImageButton;

    .line 288
    const p0, 0x7f0a057c    # @id/media_action_barrier_top

    .line 290
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 293
    move-result-object p0

    .line 296
    check-cast p0, Landroidx/constraintlayout/widget/Barrier;

    .line 297
    return-void
    .line 299
.end method


# virtual methods
.method public final getAction(I)Landroid/widget/ImageButton;
    .locals 1

    .line 1
    const v0, 0x7f0a0054    # @id/actionPlayPause

    .line 2
    if-ne p1, v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->actionPlayPause:Landroid/widget/ImageButton;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x7f0a0053    # @id/actionNext

    .line 10
    if-ne p1, v0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->actionNext:Landroid/widget/ImageButton;

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    const v0, 0x7f0a0055    # @id/actionPrev

    .line 18
    if-ne p1, v0, :cond_2

    .line 21
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->actionPrev:Landroid/widget/ImageButton;

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    const v0, 0x7f0a004a    # @id/action0

    .line 26
    if-ne p1, v0, :cond_3

    .line 29
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action0:Landroid/widget/ImageButton;

    .line 31
    goto :goto_0

    .line 33
    :cond_3
    const v0, 0x7f0a004b    # @id/action1

    .line 34
    if-ne p1, v0, :cond_4

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action1:Landroid/widget/ImageButton;

    .line 39
    goto :goto_0

    .line 41
    :cond_4
    const v0, 0x7f0a004c    # @id/action2

    .line 42
    if-ne p1, v0, :cond_5

    .line 45
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action2:Landroid/widget/ImageButton;

    .line 47
    goto :goto_0

    .line 49
    :cond_5
    const v0, 0x7f0a004d    # @id/action3

    .line 50
    if-ne p1, v0, :cond_6

    .line 53
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action3:Landroid/widget/ImageButton;

    .line 55
    goto :goto_0

    .line 57
    :cond_6
    const v0, 0x7f0a004e    # @id/action4

    .line 58
    if-ne p1, v0, :cond_7

    .line 61
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action4:Landroid/widget/ImageButton;

    .line 63
    :goto_0
    return-object p0

    .line 65
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 68
    throw p0
    .line 71
.end method
