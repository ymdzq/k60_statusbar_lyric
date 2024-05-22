.class public Lmiuix/preference/StretchablePickerPreference;
.super Lmiuix/preference/StretchableWidgetPreference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public final mContext:Landroid/content/Context;

.field public mIsLunar:Z

.field public final mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

.field public final mShowLunar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const v0, 0x7f04071b    # @attr/stretchablePickerPreferenceStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/StretchableWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance v1, Lmiuix/pickerwidget/date/Calendar;

    .line 8
    invoke-direct {v1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 10
    iput-object v1, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 13
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference;->mContext:Landroid/content/Context;

    .line 15
    new-instance v1, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 17
    invoke-direct {v1, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lmiuix/preference/StretchablePickerPreference;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 22
    sget-object v1, Lmiuix/preference/R$styleable;->StretchablePickerPreference:[I

    .line 24
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 31
    move-result p2

    .line 34
    iput-boolean p2, p0, Lmiuix/preference/StretchablePickerPreference;->mShowLunar:Z

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
    .line 40
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 1
    const v0, 0x7f0a053d    # @id/lunar_layout

    .line 2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 11
    const v2, 0x7f0a0295    # @id/datetime_picker

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 20
    const v3, 0x7f0a053c    # @id/lunar_button

    .line 22
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 29
    const v4, 0x7f0a053e    # @id/lunar_text

    .line 31
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/TextView;

    .line 38
    iget-boolean v4, p0, Lmiuix/preference/StretchablePickerPreference;->mShowLunar:Z

    .line 40
    if-nez v4, :cond_0

    .line 42
    const/16 v1, 0x8

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    if-eqz v1, :cond_1

    .line 50
    const/4 v0, 0x0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 62
    invoke-virtual {v2, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMinuteInterval(I)V

    .line 63
    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 66
    invoke-super {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 69
    new-instance p1, Lmiuix/preference/StretchablePickerPreference$2;

    .line 72
    invoke-direct {p1, p0, v2}, Lmiuix/preference/StretchablePickerPreference$2;-><init>(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 74
    invoke-virtual {v3, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iget-boolean p1, p0, Lmiuix/preference/StretchablePickerPreference;->mIsLunar:Z

    .line 80
    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 82
    move-result-wide v0

    .line 85
    invoke-virtual {p0, v0, v1, p1}, Lmiuix/preference/StretchablePickerPreference;->showTime(JZ)V

    .line 86
    new-instance p1, Lmiuix/preference/StretchablePickerPreference$1;

    .line 89
    invoke-direct {p1, p0}, Lmiuix/preference/StretchablePickerPreference$1;-><init>(Lmiuix/preference/StretchablePickerPreference;)V

    .line 91
    invoke-virtual {v2, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;)V

    .line 94
    return-void
    .line 97
.end method

.method public final showTime(JZ)V
    .locals 5

    .line 1
    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lmiuix/preference/StretchablePickerPreference;->mContext:Landroid/content/Context;

    .line 4
    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 6
    iget-object v1, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 11
    move-result v1

    .line 14
    iget-object v2, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 15
    const/4 v3, 0x5

    .line 17
    invoke-virtual {v2, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 18
    move-result v2

    .line 21
    iget-object v3, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 22
    const/16 v4, 0x9

    .line 24
    invoke-virtual {v3, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 26
    move-result v3

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;->formatDay(III)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    const/16 v1, 0xc

    .line 34
    invoke-static {p3, p1, p2, v1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    const-string p2, " "

    .line 40
    invoke-static {v0, p2, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    iget-object p0, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgView:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    iget-object p3, p0, Lmiuix/preference/StretchablePickerPreference;->mContext:Landroid/content/Context;

    .line 52
    const/16 v0, 0x38c

    .line 54
    invoke-static {p3, p1, p2, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    iget-object p0, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgView:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    return-void
    .line 65
.end method
