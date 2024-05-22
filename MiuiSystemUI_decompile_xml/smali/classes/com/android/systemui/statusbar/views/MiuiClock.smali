.class public Lcom/android/systemui/statusbar/views/MiuiClock;
.super Landroid/widget/TextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController$ClockListener;


# instance fields
.field public final mAmPmStyle:I

.field public mAttached:Z

.field public mClockMode:I

.field public final mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

.field public mMultiTaskVisibility:I

.field public mNonAdaptedColor:I

.field public mPolicyVisibility:I

.field public final mShowDark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 3
    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mPolicyVisibility:I

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMultiTaskVisibility:I

    .line 5
    const-class v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->MiuiClock:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 7
    :try_start_0
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAmPmStyle:I

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mShowDark:Z

    .line 9
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mClockMode:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mNonAdaptedColor:I

    .line 11
    filled-new-array {p0}, [Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->setMiuiStatusBarTypeface([Landroid/widget/TextView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    throw p0
.end method

.method private updateClockVisibility()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mPolicyVisibility:I

    .line 2
    const/16 v1, 0x8

    .line 4
    if-eq v0, v1, :cond_3

    .line 6
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMultiTaskVisibility:I

    .line 8
    if-ne v2, v1, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    if-ne v2, v1, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    goto :goto_2

    .line 23
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    goto :goto_2

    .line 27
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    :goto_2
    return-void
    .line 31
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mClockListeners:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateTime()V

    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mShowDark:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 26
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 32
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateClockVisibility()V

    .line 37
    return-void
    .line 40
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 0

    .line 1
    if-eqz p6, :cond_0

    .line 2
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 4
    move-result p1

    .line 7
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mNonAdaptedColor:I

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 11
    move-result p1

    .line 14
    const/4 p3, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    move p2, p3

    .line 19
    :goto_0
    cmpl-float p1, p2, p3

    .line 20
    if-lez p1, :cond_2

    .line 22
    move p4, p5

    .line 24
    :cond_2
    iput p4, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mNonAdaptedColor:I

    .line 25
    :goto_1
    iget p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mNonAdaptedColor:I

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    return-void
    .line 32
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mClockListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mShowDark:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 23
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 29
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 31
    :cond_0
    return-void
    .line 34
.end method

.method public setClockMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mClockMode:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateTime()V

    .line 4
    return-void
    .line 7
.end method

.method public setMultiTaskVisibility(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMultiTaskVisibility:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMultiTaskVisibility:I

    .line 6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateClockVisibility()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setPolicyVisibility(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mPolicyVisibility:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mPolicyVisibility:I

    .line 6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateClockVisibility()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public updateTime()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    .line 13
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mIs24:Z

    .line 15
    const/16 v3, 0x10

    .line 17
    if-eqz v2, :cond_1

    .line 19
    const/16 v2, 0x20

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move v2, v3

    .line 24
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mClockMode:I

    .line 25
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x0

    .line 28
    if-ne v4, v5, :cond_3

    .line 29
    if-ne v2, v3, :cond_2

    .line 31
    const v2, 0x7f130b1f    # @string/status_bar_clock_date_time_format_12 'h:mm a, E, MMM d'

    .line 33
    goto :goto_1

    .line 36
    :cond_2
    const v2, 0x7f130b1e    # @string/status_bar_clock_date_time_format 'H:mm E, MMM d'

    .line 37
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/4 v5, 0x4

    .line 49
    const v7, 0x7f130b1c    # @string/status_bar_clock_date_format 'E, MMM d'

    .line 50
    if-ne v4, v5, :cond_4

    .line 53
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    const/4 v5, 0x1

    .line 64
    const v8, 0x7f130b1d    # @string/status_bar_clock_date_format_12 'E, MMM d'

    .line 65
    if-ne v4, v5, :cond_6

    .line 68
    if-ne v2, v3, :cond_5

    .line 70
    move v7, v8

    .line 72
    :cond_5
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 80
    goto :goto_3

    .line 81
    :cond_6
    const/4 v5, 0x3

    .line 82
    if-ne v4, v5, :cond_9

    .line 83
    if-ne v2, v3, :cond_7

    .line 85
    const v4, 0x7f130b22    # @string/status_bar_clock_date_weekday_format_12_brief '@string/status_bar_clock_date_format_12'

    .line 87
    goto :goto_2

    .line 90
    :cond_7
    const v4, 0x7f130b23    # @string/status_bar_clock_date_weekday_format_brief '@string/status_bar_clock_date_format'

    .line 91
    :goto_2
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 97
    invoke-virtual {v0, v1, v4}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 101
    if-ne v2, v3, :cond_8

    .line 102
    move v7, v8

    .line 104
    :cond_8
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 109
    move-result-object v6

    .line 112
    move-object v0, v4

    .line 113
    goto :goto_3

    .line 114
    :cond_9
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAmPmStyle:I

    .line 115
    if-nez v3, :cond_a

    .line 117
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 119
    move-result-wide v3

    .line 122
    or-int/lit8 v0, v2, 0xc

    .line 123
    invoke-static {v1, v3, v4, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 128
    goto :goto_3

    .line 129
    :cond_a
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 130
    move-result-wide v3

    .line 133
    or-int/lit8 v0, v2, 0xc

    .line 134
    or-int/lit8 v0, v0, 0x40

    .line 136
    invoke-static {v1, v3, v4, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 141
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 142
    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 146
    move-result v1

    .line 149
    if-nez v1, :cond_c

    .line 150
    if-eqz v6, :cond_b

    .line 152
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    :cond_b
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_c
    return-void
    .line 160
.end method
