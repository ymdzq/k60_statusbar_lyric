.class public Lcom/miui/clock/MiuiBaseClock;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/clock/MiuiClockController$IClockView;


# instance fields
.field public m24HourFormat:Z

.field public mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public mCalendarDayOfWeek:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentDate:Landroid/widget/TextView;

.field public mDensityDpi:I

.field public mFontScale:F

.field public mHasTopMargin:Z

.field public mLanguage:Ljava/lang/String;

.field public mLunarCalendarInfo:Landroid/widget/TextView;

.field public mOwnerInfo:Landroid/widget/TextView;

.field public final mResources:Landroid/content/res/Resources;

.field public mScaleRatio:F

.field public mShowLunarCalendar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/clock/MiuiBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/miui/clock/MiuiBaseClock;->mHasTopMargin:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    iput p2, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 7
    iput-object p1, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 9
    invoke-static {p1}, Lcom/miui/clock/utils/DateFormatUtils;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/clock/MiuiBaseClock;->m24HourFormat:Z

    return-void
.end method

.method public static setFontStyleTextView(Landroid/widget/TextView;Z)V
    .locals 3

    .line 1
    const-string v0, "miclock-time-thin"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 5
    move-result-object v0

    .line 8
    const-string v2, "miclock-time"

    .line 9
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 11
    move-result-object v1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    move-object v0, v1

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public getClockHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 2
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 8
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public bridge synthetic getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getClockVisibleHeight()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 2
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 8
    move-result p0

    .line 11
    int-to-float p0, p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
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

.method public final getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public bridge synthetic getLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getLunarCalendarView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 2
    return-object p0
    .line 4
.end method

.method public bridge synthetic getMagazineColor()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getNotificationClockBottom()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v1, 0x7f070db9    # @dimen/notification_margin_top '20.0dp'

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result p0

    .line 16
    add-int/2addr p0, v0

    .line 17
    return p0
    .line 18
.end method

.method public bridge synthetic getNotificationRelativePosition()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public bridge synthetic getTimeView()Landroid/widget/TextView;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getTopMargin()F
    .locals 0

    .line 1
    const/4 p0, 0x0

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

.method public hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateViewsLayoutParams()V

    .line 5
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateViewsTextSize()V

    .line 8
    return-void
    .line 11
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 5
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mFontScale:F

    .line 7
    cmpl-float v1, v1, v0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateViewsTextSize()V

    .line 13
    iput v0, p0, Lcom/miui/clock/MiuiBaseClock;->mFontScale:F

    .line 16
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 18
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mDensityDpi:I

    .line 20
    if-eq v1, v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateViewsTextSize()V

    .line 24
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateViewsLayoutParams()V

    .line 27
    iput v0, p0, Lcom/miui/clock/MiuiBaseClock;->mDensityDpi:I

    .line 30
    :cond_1
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 32
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mLanguage:Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    iput-object p1, p0, Lcom/miui/clock/MiuiBaseClock;->mLanguage:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock;->onLanguageChanged(Ljava/lang/String;)V

    .line 54
    :cond_2
    return-void
    .line 57
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0263    # @id/current_date

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a0a2e    # @id/unlock_screen_lunar_calendar_info

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0a0a2f    # @id/unlock_screen_owner_info

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 36
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 38
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 43
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateLunarCalendarInfo()V

    .line 45
    return-void
    .line 48
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setClockAlpha(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2
    return-void
    .line 5
.end method

.method public bridge synthetic setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
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

.method public setIs24HourFormat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/MiuiBaseClock;->m24HourFormat:Z

    .line 2
    return-void
    .line 4
.end method

.method public bridge synthetic setLocalCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setMagazineInfoVisible(Z)V
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

.method public setOwnerInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 8
    const/16 p1, 0x8

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public setScaleRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateViewsTextSize()V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateViewsLayoutParams()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    return-void
    .line 15
.end method

.method public setShowLunarCalendar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/MiuiBaseClock;->mShowLunarCalendar:Z

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateLunarCalendarInfo()V

    .line 4
    return-void
    .line 7
.end method

.method public bridge synthetic setSuperSaveOpen(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setSuperSaveOpen(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public setTextColorDark(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 11
    const v1, 0x7f0603bc    # @color/miui_owner_info_dark_text_color '#99000000'

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 15
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 27
    const v1, 0x7f0603bd    # @color/miui_owner_info_light_text_color '#99ffffff'

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 31
    move-result v0

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock;->setTextFontDark(Z)V

    .line 40
    return-void
    .line 43
.end method

.method public setTextFontDark(Z)V
    .locals 3

    .line 1
    const-string v0, "mipro-regular"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 5
    move-result-object v0

    .line 8
    const-string v2, "mipro-medium"

    .line 9
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 11
    move-result-object v1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    move-object v0, v1

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    return-void
    .line 28
.end method

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateFaceUnlockIconState(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateLunarCalendarInfo()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock;->mShowLunarCalendar:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 26
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 31
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 37
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 39
    const-string v2, "YY\u5e74 N\u6708e"

    .line 41
    invoke-virtual {v0, p0, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 51
    const/16 v0, 0x8

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_0
    return-void
    .line 58
.end method

.method public final updateResidentTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateTime()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock;->m24HourFormat:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const v0, 0x7f130742    # @string/miui_lock_screen_date 'EEE, MMM dd'

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    const v0, 0x7f130743    # @string/miui_lock_screen_date_12 'EEE, MMM dd'

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    .line 22
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 24
    iget-object v3, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v2, v3, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 39
    const/16 v1, 0xe

    .line 41
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 43
    move-result v0

    .line 46
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mCalendarDayOfWeek:I

    .line 47
    if-eq v0, v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateLunarCalendarInfo()V

    .line 51
    iput v0, p0, Lcom/miui/clock/MiuiBaseClock;->mCalendarDayOfWeek:I

    .line 54
    :cond_1
    return-void
    .line 56
.end method

.method public final updateTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 9
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 11
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Lmiuix/pickerwidget/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 15
    iput-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateTime()V

    .line 20
    return-void
    .line 23
.end method

.method public final updateViewTopMargin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/MiuiBaseClock;->mHasTopMargin:Z

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateViewsLayoutParams()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    return-void
    .line 12
.end method

.method public updateViewsLayoutParams()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateViewsTextSize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 8
    const v2, 0x7f0707ea    # @dimen/miui_clock_date_text_size '17.0sp'

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result v3

    .line 16
    int-to-float v3, v3

    .line 17
    mul-float/2addr v1, v3

    .line 18
    float-to-int v1, v1

    .line 19
    iget-object v3, p0, Lcom/miui/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    .line 20
    int-to-float v1, v1

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 24
    iget-object v3, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 29
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 32
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    mul-float/2addr v1, v0

    .line 39
    float-to-int v0, v1

    .line 40
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 41
    int-to-float v0, v0

    .line 43
    invoke-virtual {p0, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    return-void
    .line 47
.end method
