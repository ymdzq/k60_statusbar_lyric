.class public Lcom/miui/clock/graffiti/MiuiGraffitiClock;
.super Lcom/miui/clock/MiuiGalleryBaseClock;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

.field public mChoosePaletteType:I

.field public mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

.field public mPalette:Ljava/util/Map;

.field public mTextDark:Z

.field public mWallpaperSupportDepth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/MiuiGalleryBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/clock/MiuiGalleryBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 2
    return-object p0
    .line 4
.end method

.method public getGalleryGravity()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public bridge synthetic getHealthJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->ALL_VIEW:Lcom/miui/clock/module/ClockViewType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 6
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->CLOCK_CONTAINER:Lcom/miui/clock/module/ClockViewType;

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 13
    return-object p0

    .line 15
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method

.method public bridge synthetic getLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getMagazineColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 6
    move-result p0

    .line 9
    invoke-static {p0}, Lcom/miui/clock/utils/ColorUtils;->blendColor(I)I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
    .line 16
.end method

.method public final getMagazinePositionY(Z)I
    .locals 0

    .line 1
    const p1, 0x7f07084c    # @dimen/miui_graffiti_magazine_margin_top '262.0dp'

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public getNotificationClockBottom()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineInfoVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v0, 0x7f070d74    # @dimen/notification_bottom_graffiti_with_gallery '302.0dp'

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 9
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const v0, 0x7f070d73    # @dimen/notification_bottom_graffiti '274.0dp'

    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method

.method public bridge synthetic getNotificationRelativePosition()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public bridge synthetic getWeatherJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 2
    const v1, 0x7f0a03d9    # @id/guideline

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    .line 11
    const/high16 v1, 0x3f000000    # 0.5f

    .line 13
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 15
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 18
    const/4 v1, -0x1

    .line 20
    const/4 v2, -0x2

    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v1

    .line 28
    const v2, 0x7f07083f    # @dimen/miui_graffiti_clock_margin_top '39.0dp'

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 41
    move-result v2

    .line 44
    mul-float/2addr v2, v1

    .line 45
    float-to-int v1, v2

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 48
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 51
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
    .line 58
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->initView()V

    .line 5
    return-void
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiGalleryBaseClock;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a022e    # @id/content_miui_graffiti

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 14
    invoke-virtual {p0}, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->initView()V

    .line 16
    return-void
    .line 19
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mChoosePaletteType:I

    .line 2
    iput-boolean p2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mTextDark:Z

    .line 4
    iput-object p3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mPalette:Ljava/util/Map;

    .line 6
    iput-boolean p4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mWallpaperSupportDepth:Z

    .line 8
    const-string v0, "secondary60"

    .line 10
    const-string v1, "primary18"

    .line 12
    const-string v2, "primary7"

    .line 14
    if-eqz p3, :cond_0

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    const-string v4, "primary7="

    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v4, ",primary18="

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v4, ",secondary60="

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string v3, "null"

    .line 61
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v5, "setClockPalette: type = "

    .line 65
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v5, ", textDark = "

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    const-string v5, ", palette = "

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v3, ", mWallpaperSupportDepth = "

    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mWallpaperSupportDepth:Z

    .line 95
    const-string v5, "MiuiGraffitiClock ClockPalette"

    .line 97
    invoke-static {v4, v3, v5}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 102
    if-eqz v3, :cond_10

    .line 104
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 106
    move-result v3

    .line 109
    if-eqz v3, :cond_f

    .line 110
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mWallpaperSupportDepth:Z

    .line 112
    const/4 v4, 0x2

    .line 114
    const/4 v5, 0x1

    .line 115
    if-eqz v3, :cond_6

    .line 116
    if-ne p1, v5, :cond_2

    .line 118
    if-eqz p3, :cond_1

    .line 120
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 125
    if-eqz p1, :cond_1

    .line 126
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object p1

    .line 131
    check-cast p1, Ljava/lang/Integer;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 134
    move-result p1

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 139
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 141
    move-result p1

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    if-ne p1, v4, :cond_4

    .line 146
    if-eqz p3, :cond_3

    .line 148
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 153
    if-eqz p1, :cond_3

    .line 154
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/Integer;

    .line 160
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 162
    move-result p1

    .line 165
    goto :goto_1

    .line 166
    :cond_3
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 167
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 169
    move-result p1

    .line 172
    goto :goto_1

    .line 173
    :cond_4
    if-eqz p3, :cond_5

    .line 174
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-result-object p1

    .line 179
    if-eqz p1, :cond_5

    .line 180
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object p1

    .line 185
    check-cast p1, Ljava/lang/Integer;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 188
    move-result p1

    .line 191
    goto :goto_1

    .line 192
    :cond_5
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 193
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 195
    move-result p1

    .line 198
    :goto_1
    iget-object p2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 199
    iput p1, p2, Lcom/miui/clock/module/ClockStyleInfo;->originMagazineColor:I

    .line 201
    goto/16 :goto_4

    .line 203
    :cond_6
    if-nez p2, :cond_8

    .line 205
    if-eqz p3, :cond_7

    .line 207
    const-string p2, "primary98"

    .line 209
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    move-result-object v3

    .line 214
    if-eqz v3, :cond_7

    .line 215
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-result-object p2

    .line 220
    check-cast p2, Ljava/lang/Integer;

    .line 221
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 223
    move-result p2

    .line 226
    goto :goto_2

    .line 227
    :cond_7
    iget-object p2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 228
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 230
    move-result p2

    .line 233
    goto :goto_2

    .line 234
    :cond_8
    if-eqz p3, :cond_9

    .line 235
    const-string p2, "primary20"

    .line 237
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    move-result-object v3

    .line 242
    if-eqz v3, :cond_9

    .line 243
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-result-object p2

    .line 248
    check-cast p2, Ljava/lang/Integer;

    .line 249
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 251
    move-result p2

    .line 254
    goto :goto_2

    .line 255
    :cond_9
    iget-object p2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 256
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 258
    move-result p2

    .line 261
    :goto_2
    if-ne p1, v5, :cond_b

    .line 262
    if-eqz p3, :cond_a

    .line 264
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    move-result-object p1

    .line 269
    if-eqz p1, :cond_a

    .line 270
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-result-object p1

    .line 275
    check-cast p1, Ljava/lang/Integer;

    .line 276
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 278
    move-result p1

    .line 281
    goto :goto_3

    .line 282
    :cond_a
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 283
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 285
    move-result p1

    .line 288
    goto :goto_3

    .line 289
    :cond_b
    if-ne p1, v4, :cond_d

    .line 290
    if-eqz p3, :cond_c

    .line 292
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-result-object p1

    .line 297
    if-eqz p1, :cond_c

    .line 298
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-result-object p1

    .line 303
    check-cast p1, Ljava/lang/Integer;

    .line 304
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 306
    move-result p1

    .line 309
    goto :goto_3

    .line 310
    :cond_c
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 311
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 313
    move-result p1

    .line 316
    goto :goto_3

    .line 317
    :cond_d
    if-eqz p3, :cond_e

    .line 318
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    move-result-object p1

    .line 323
    if-eqz p1, :cond_e

    .line 324
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-result-object p1

    .line 329
    check-cast p1, Ljava/lang/Integer;

    .line 330
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 332
    move-result p1

    .line 335
    goto :goto_3

    .line 336
    :cond_e
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 337
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 339
    move-result p1

    .line 342
    :goto_3
    iget-object p3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 343
    iput p1, p3, Lcom/miui/clock/module/ClockStyleInfo;->originMagazineColor:I

    .line 345
    move p1, p2

    .line 347
    :goto_4
    iget-object p2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 348
    invoke-virtual {p2, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 350
    :cond_f
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 353
    invoke-virtual {p1, p4}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->setWallpaperSupportDepth(Z)V

    .line 355
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 358
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 360
    invoke-virtual {p1, p0}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 362
    :cond_10
    return-void
    .line 365
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 2
    iput-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 4
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 8
    return-void
    .line 11
.end method

.method public bridge synthetic setCurrentUserId(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setInfoTextColorDark(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setLocalCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setMinuteColor(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setSuperSaveOpen(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setSuperSaveOpen(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public setWallpaperSupportDepth(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->setWallpaperSupportDepth(Z)V

    .line 2
    iget v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mChoosePaletteType:I

    .line 5
    iget-boolean v1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mTextDark:Z

    .line 7
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->mPalette:Ljava/util/Map;

    .line 9
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->setClockPalette(IZLjava/util/Map;Z)V

    .line 11
    return-void
    .line 14
.end method

.method public final updateTime()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->updateTime()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 22
    invoke-virtual {p0}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->updateTime()V

    .line 24
    :goto_0
    return-void
    .line 27
.end method
