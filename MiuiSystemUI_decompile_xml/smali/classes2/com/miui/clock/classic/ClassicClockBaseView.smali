.class public abstract Lcom/miui/clock/classic/ClassicClockBaseView;
.super Lcom/miui/clock/MiuiGalleryBaseClock;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mChoosePaletteType:I

.field public mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

.field public mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public mPalette:Ljava/util/Map;

.field public mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

.field public mTextDark:Z

.field public mWallpaperSupportDepth:Z

.field public showFace:Z


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
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDimensionFloat(I)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 6
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 14
    move-result p0

    .line 17
    mul-float/2addr p0, p1

    .line 18
    return p0
    .line 19
.end method

.method public bridge synthetic getGalleryGravity()I
    .locals 0

    .line 1
    const p0, 0x800003

    .line 2
    return p0
    .line 5
.end method

.method public bridge synthetic getHealthJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
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
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getOriginMagazineColor()I

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

.method public getNotificationClockBottom()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineInfoVisible:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->isPlus()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const v0, 0x7f070d71    # @dimen/notification_bottom_classic_plus_with_gallery '243.0dp'

    .line 12
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 15
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    const v0, 0x7f070d72    # @dimen/notification_bottom_classic_with_gallery '223.0dp'

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 23
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->isPlus()Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    const v0, 0x7f070d70    # @dimen/notification_bottom_classic_plus '210.0dp'

    .line 34
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 37
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_2
    const v0, 0x7f070d6f    # @dimen/notification_bottom_classic '189.0dp'

    .line 42
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 45
    move-result p0

    .line 48
    return p0
    .line 49
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

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->init(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 5
    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 10
    return-void
    .line 12
.end method

.method public abstract isPlus()Z
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiGalleryBaseClock;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a096f    # @id/text_area

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 14
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 16
    invoke-virtual {v0, p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->setCalendar(Lmiuix/pickerwidget/date/Calendar;)V

    .line 18
    return-void
    .line 21
.end method

.method public onLanguageChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/clock/utils/FontUtils;->MI_SANS_ROUNDED_SC_PATH:Ljava/lang/String;

    .line 2
    const-string v0, "FontUtils"

    .line 4
    const-string v1, "clear classic clock typeface cache"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-string v0, "ClassicTextAreaView"

    .line 16
    const-string v1, "onLanguageChanged"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/16 v0, 0x17c

    .line 23
    invoke-static {v0}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    return-void
.end method

.method public final onTimeZoneUpdate(Ljava/util/TimeZone;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->updateTime()V

    .line 7
    return-void
    .line 10
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mChoosePaletteType:I

    .line 2
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextDark:Z

    .line 4
    iput-object p3, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mPalette:Ljava/util/Map;

    .line 6
    iput-boolean p4, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mWallpaperSupportDepth:Z

    .line 8
    const-string p4, "secondary30"

    .line 10
    if-eqz p3, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "secondary30="

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "null"

    .line 33
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v2, "setClockPalette: type = "

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string p1, ", textDark = "

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string p1, ", palette = "

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string p1, "ClockPalette"

    .line 59
    invoke-static {v1, v0, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 66
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    return-void

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 73
    if-eqz p1, :cond_e

    .line 75
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 77
    move-result p1

    .line 80
    if-eqz p1, :cond_e

    .line 81
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 85
    move-result p1

    .line 88
    const/4 v0, -0x1

    .line 89
    if-eqz p1, :cond_8

    .line 90
    if-eqz p2, :cond_3

    .line 92
    if-eqz p3, :cond_2

    .line 94
    const-string p1, "neutral-variant30"

    .line 96
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 107
    check-cast p1, Ljava/lang/Integer;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 110
    move-result p1

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 115
    invoke-virtual {p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 117
    move-result p1

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const-string p1, "#FFABABAB"

    .line 122
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 124
    move-result p1

    .line 127
    :goto_1
    if-eqz p2, :cond_5

    .line 128
    if-eqz p3, :cond_4

    .line 130
    const-string v1, "secondary70"

    .line 132
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-result-object v2

    .line 137
    if-eqz v2, :cond_4

    .line 138
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-result-object v1

    .line 143
    check-cast v1, Ljava/lang/Integer;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 146
    move-result v1

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    move v1, p1

    .line 151
    goto :goto_2

    .line 152
    :cond_5
    const-string v1, "#FFBEBEBE"

    .line 153
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 155
    move-result v1

    .line 158
    :goto_2
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 159
    if-eqz p1, :cond_6

    .line 161
    iput p1, v2, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 163
    goto :goto_3

    .line 165
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    :goto_3
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 169
    if-eqz v1, :cond_7

    .line 171
    iput v1, p1, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 173
    goto :goto_4

    .line 175
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    :goto_4
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 179
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 181
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 184
    iput v1, p1, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 186
    goto :goto_6

    .line 188
    :cond_8
    if-nez p2, :cond_9

    .line 189
    move p1, v0

    .line 191
    goto :goto_5

    .line 192
    :cond_9
    if-eqz p3, :cond_a

    .line 193
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-result-object p1

    .line 198
    if-eqz p1, :cond_a

    .line 199
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-result-object p1

    .line 204
    check-cast p1, Ljava/lang/Integer;

    .line 205
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 207
    move-result p1

    .line 210
    goto :goto_5

    .line 211
    :cond_a
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 212
    invoke-virtual {p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 214
    move-result p1

    .line 217
    :goto_5
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 218
    iget v1, v1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 220
    invoke-static {v1}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 222
    move-result v1

    .line 225
    if-eqz v1, :cond_b

    .line 226
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 228
    invoke-static {p1}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 230
    move-result p1

    .line 233
    invoke-virtual {v1, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 234
    goto :goto_6

    .line 237
    :cond_b
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 238
    invoke-virtual {v1, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 240
    :goto_6
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 243
    if-nez p2, :cond_c

    .line 245
    goto :goto_7

    .line 247
    :cond_c
    if-eqz p3, :cond_d

    .line 248
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-result-object p2

    .line 253
    if-eqz p2, :cond_d

    .line 254
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    move-result-object p2

    .line 259
    check-cast p2, Ljava/lang/Integer;

    .line 260
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 262
    move-result v0

    .line 265
    goto :goto_7

    .line 266
    :cond_d
    iget-object p2, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 267
    invoke-virtual {p2}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 269
    move-result v0

    .line 272
    :goto_7
    iput v0, p1, Lcom/miui/clock/module/ClockStyleInfo;->originMagazineColor:I

    .line 273
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 275
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->updateColor(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 277
    :cond_e
    return-void
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 2
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 4
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicTextAreaView;->initData(Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

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

.method public final setMarginTop(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 7
    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, p1, v1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 10
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 13
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 15
    return-void
    .line 18
.end method

.method public bridge synthetic setMinuteColor(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSuperSaveOpen(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->setSuperSaveOpen(Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->updateColor(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateColor(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    check-cast p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 5
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 7
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicTextAreaView;->initData(Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 11
    return-void
    .line 14
.end method

.method public updateFaceUnlockIconState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->showFace:Z

    .line 2
    return-void
    .line 4
.end method

.method public updateTime()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 6
    invoke-virtual {v2, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 8
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 20
    invoke-virtual {v2, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 22
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 25
    iget v1, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 27
    const/16 v2, 0xb

    .line 29
    if-ne v1, v2, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mNeedIcon:Z

    .line 34
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->needDrawRect:Z

    .line 36
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->setCarrierTextColor()V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 42
    move-result v0

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 49
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 51
    if-eq v0, v2, :cond_4

    .line 53
    const/16 v1, 0x64

    .line 55
    if-eq v0, v1, :cond_3

    .line 57
    const/16 v1, 0x65

    .line 59
    if-eq v0, v1, :cond_1

    .line 61
    goto/16 :goto_2

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 65
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 67
    invoke-static {v0, v1}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getSolarTerms(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 73
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 75
    const-string v3, "N\u6708e"

    .line 77
    invoke-virtual {v2, v1, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    move-result v2

    .line 86
    const-string v3, ","

    .line 87
    const v4, 0x7f13048c    # @string/format_lunar_calendar_solar_terms '%1$s %2$s'

    .line 89
    if-nez v2, :cond_2

    .line 92
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v2

    .line 97
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 98
    move-result-object v5

    .line 101
    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 105
    invoke-static {v1, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 111
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 113
    const-string v5, "YY\u5e74"

    .line 115
    invoke-virtual {v2, v0, v5}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 120
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 121
    move-result-object v2

    .line 124
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 125
    move-result-object v5

    .line 128
    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 132
    invoke-static {v0, v3, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 136
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    goto :goto_2

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 144
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 148
    move-result-object v2

    .line 151
    const v3, 0x7f130493    # @string/format_month_day_week 'MMM dd, EEE'

    .line 152
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 158
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 166
    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 170
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 174
    move-result-object v3

    .line 177
    const v4, 0x7f130488    # @string/format_full_month_of_year 'MMMM'

    .line 178
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 181
    move-result-object v3

    .line 184
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 189
    invoke-static {v2}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 191
    move-result v2

    .line 194
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 195
    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 199
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 203
    move-result-object v5

    .line 206
    const v6, 0x7f130487    # @string/format_full_day_of_week 'EEEE'

    .line 207
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 210
    move-result-object v5

    .line 213
    invoke-virtual {v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 214
    move-result-object v3

    .line 217
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 218
    move-result-object v1

    .line 221
    const v2, 0x7f130494    # @string/format_month_day_week_desc '%1$s %2$s, %3$s'

    .line 222
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 228
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 229
    goto :goto_2

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderName:Ljava/lang/String;

    .line 233
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderName:Ljava/lang/String;

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 240
    :goto_2
    return-void
    .line 243
.end method
