.class public final Landroidx/palette/graphics/Palette$Builder$1;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Landroidx/palette/graphics/Palette$Builder;

.field public final synthetic val$listener:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Landroidx/palette/graphics/Palette$Builder;Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder$1;->this$0:Landroidx/palette/graphics/Palette$Builder;

    .line 2
    iput-object p2, p0, Landroidx/palette/graphics/Palette$Builder$1;->val$listener:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda2;

    .line 4
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    .line 2
    :try_start_0
    iget-object p0, p0, Landroidx/palette/graphics/Palette$Builder$1;->this$0:Landroidx/palette/graphics/Palette$Builder;

    .line 4
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string p1, "Palette"

    .line 12
    const-string v0, "Exception thrown during async generate"

    .line 14
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
    .line 20
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    check-cast v0, Landroidx/palette/graphics/Palette;

    .line 4
    move-object/from16 v1, p0

    .line 6
    iget-object v1, v1, Landroidx/palette/graphics/Palette$Builder$1;->val$listener:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda2;

    .line 8
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;

    .line 10
    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mContext:Landroid/content/Context;

    .line 12
    const v4, 0x7f060387    # @color/media_panel_dominant_color '#252525'

    .line 14
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 17
    move-result v5

    .line 20
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, v0, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget v5, v0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 27
    :cond_0
    iget v0, v2, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mDominantColor:I

    .line 29
    if-eq v0, v5, :cond_9

    .line 31
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 33
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->mediaBg:Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;

    .line 35
    const/4 v1, -0x1

    .line 37
    if-ne v5, v1, :cond_1

    .line 38
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 40
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v1, v5

    .line 45
    :goto_0
    const/4 v3, 0x3

    .line 46
    new-array v4, v3, [F

    .line 47
    invoke-static {v1, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 49
    const/4 v1, 0x2

    .line 52
    aget v6, v4, v1

    .line 53
    const/high16 v7, 0x3f000000    # 0.5f

    .line 55
    cmpl-float v6, v6, v7

    .line 57
    if-lez v6, :cond_2

    .line 59
    aput v7, v4, v1

    .line 61
    :cond_2
    aget v6, v4, v1

    .line 63
    const v7, 0x3e99999a    # 0.3f

    .line 65
    cmpg-float v6, v6, v7

    .line 68
    if-gez v6, :cond_3

    .line 70
    aput v7, v4, v1

    .line 72
    :cond_3
    const/4 v6, 0x1

    .line 74
    aget v8, v4, v6

    .line 75
    const v9, 0x3f19999a    # 0.6f

    .line 77
    cmpl-float v8, v8, v9

    .line 80
    if-lez v8, :cond_4

    .line 82
    aput v9, v4, v6

    .line 84
    :cond_4
    aget v8, v4, v6

    .line 86
    cmpg-float v8, v8, v7

    .line 88
    if-gez v8, :cond_5

    .line 90
    aput v7, v4, v6

    .line 92
    :cond_5
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 94
    move-result v4

    .line 97
    const v7, 0x3fa66666    # 1.3f

    .line 98
    invoke-static {v7, v7, v4}, Lcom/android/systemui/statusbar/notification/mediacontrol/ColorUtil;->getLightColor(FFI)I

    .line 101
    move-result v8

    .line 104
    const/high16 v7, 0x3f800000    # 1.0f

    .line 105
    invoke-static {v7, v7, v4}, Lcom/android/systemui/statusbar/notification/mediacontrol/ColorUtil;->getLightColor(FFI)I

    .line 107
    move-result v9

    .line 110
    const v4, 0x3f99999a    # 1.2f

    .line 111
    invoke-static {v4, v4, v8}, Lcom/android/systemui/statusbar/notification/mediacontrol/ColorUtil;->getLightColor(FFI)I

    .line 114
    move-result v4

    .line 117
    invoke-static {v7, v7, v9}, Lcom/android/systemui/statusbar/notification/mediacontrol/ColorUtil;->getLightColor(FFI)I

    .line 118
    move-result v7

    .line 121
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 122
    move-result v13

    .line 125
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 126
    move-result v14

    .line 129
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 130
    move-result v15

    .line 133
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 134
    move-result v10

    .line 137
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 138
    move-result v11

    .line 141
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 142
    move-result v12

    .line 145
    new-instance v4, Ljava/util/Random;

    .line 146
    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 148
    const/4 v7, 0x4

    .line 151
    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    .line 152
    move-result v4

    .line 155
    if-eq v4, v6, :cond_8

    .line 156
    if-eq v4, v1, :cond_7

    .line 158
    if-eq v4, v3, :cond_6

    .line 160
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 162
    goto :goto_1

    .line 164
    :cond_6
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 165
    goto :goto_1

    .line 167
    :cond_7
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 168
    goto :goto_1

    .line 170
    :cond_8
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 171
    :goto_1
    move-object/from16 v16, v1

    .line 173
    new-instance v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;

    .line 175
    move-object v6, v1

    .line 177
    move-object v7, v0

    .line 178
    invoke-direct/range {v6 .. v16}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;IIIIIIIILandroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 179
    const-wide/16 v3, 0x12c

    .line 182
    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    iput v5, v2, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mDominantColor:I

    .line 187
    :cond_9
    return-void
    .line 189
.end method
