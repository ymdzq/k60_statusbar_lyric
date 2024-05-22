.class public Lmiuix/stretchablewidget/StretchableDatePicker;
.super Lmiuix/stretchablewidget/StretchableWidget;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

.field public mIsLunar:Z

.field public mLunarButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field public mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

.field public mLunarLayout:Landroid/widget/RelativeLayout;

.field public mLunarResId:Ljava/lang/String;

.field public mLunarText:Landroid/widget/TextView;

.field public mMinuteInterval:I

.field public mPickerContainer:Landroid/widget/LinearLayout;

.field public mShowLunar:Z

.field public mTime:J

.field public pickerContainerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/stretchablewidget/StretchableDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/stretchablewidget/StretchableDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/stretchablewidget/StretchableWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mMinuteInterval:I

    return-void
.end method

.method public static access$100(Lmiuix/stretchablewidget/StretchableDatePicker;ZLandroid/content/Context;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 4
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 6
    move-result-wide v0

    .line 9
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 10
    iget-object v2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 12
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v2, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 15
    move-result v2

    .line 18
    iget-object v3, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 19
    const/4 v4, 0x5

    .line 21
    invoke-virtual {v3, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 22
    move-result v3

    .line 25
    iget-object v4, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 26
    const/16 v5, 0x9

    .line 28
    invoke-virtual {v4, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 30
    move-result v4

    .line 33
    invoke-virtual {p1, v2, v3, v4}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;->formatDay(III)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    const/16 v2, 0xc

    .line 38
    invoke-static {p2, v0, v1, v2}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string p1, " "

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setDetailMessage(Ljava/lang/CharSequence;)V

    .line 64
    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 68
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 70
    move-result-wide v0

    .line 73
    const/16 p1, 0x38c

    .line 74
    invoke-static {p2, v0, v1, p1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setDetailMessage(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    return-void
    .line 83
.end method


# virtual methods
.method public final afterSetView()V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->pickerContainerHeight:I

    .line 2
    iput v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mHeight:I

    .line 4
    return-void
    .line 6
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mTime:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final preSetView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    sget-object v0, Lmiuix/stretchablewidget/R$styleable;->StretchableDatePicker:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 5
    move-result-object p2

    .line 8
    const/4 p3, 0x2

    .line 9
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 10
    move-result p3

    .line 13
    iput-boolean p3, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mShowLunar:Z

    .line 14
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p3

    .line 19
    iput-object p3, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarResId:Ljava/lang/String;

    .line 20
    const/4 p3, 0x1

    .line 22
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 23
    move-result p3

    .line 26
    iput p3, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mMinuteInterval:I

    .line 27
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    const-string p2, "layout_inflater"

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 37
    check-cast p2, Landroid/view/LayoutInflater;

    .line 38
    const p3, 0x7f0d0246    # @layout/miuix_stretchable_widget_picker_part 'res/layout/miuix_stretchable_widget_picker_part.xml'

    .line 40
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    move-result-object p2

    .line 47
    check-cast p2, Landroid/widget/LinearLayout;

    .line 48
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 50
    const p3, 0x7f0a0295    # @id/datetime_picker

    .line 52
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p2

    .line 58
    check-cast p2, Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 59
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 61
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 63
    const p3, 0x7f0a053d    # @id/lunar_layout

    .line 65
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p2

    .line 71
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 72
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarLayout:Landroid/widget/RelativeLayout;

    .line 74
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 76
    const p3, 0x7f0a053e    # @id/lunar_text

    .line 78
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p2

    .line 84
    check-cast p2, Landroid/widget/TextView;

    .line 85
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarText:Landroid/widget/TextView;

    .line 87
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 89
    const p3, 0x7f0a053c    # @id/lunar_button

    .line 91
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object p2

    .line 97
    check-cast p2, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 98
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 100
    iget-boolean p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mShowLunar:Z

    .line 102
    if-nez p2, :cond_0

    .line 104
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarLayout:Landroid/widget/RelativeLayout;

    .line 106
    const/16 p3, 0x8

    .line 108
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    :cond_0
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 113
    new-instance p3, Lmiuix/stretchablewidget/StretchableDatePicker$1;

    .line 115
    invoke-direct {p3, p0, p1}, Lmiuix/stretchablewidget/StretchableDatePicker$1;-><init>(Lmiuix/stretchablewidget/StretchableDatePicker;Landroid/content/Context;)V

    .line 117
    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 123
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 125
    move-result p3

    .line 128
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 129
    move-result v0

    .line 132
    invoke-virtual {p2, p3, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 133
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 136
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 138
    move-result p2

    .line 141
    iput p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->pickerContainerHeight:I

    .line 142
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 144
    invoke-virtual {p0, p2}, Lmiuix/stretchablewidget/StretchableWidget;->setLayout(Landroid/view/View;)V

    .line 146
    new-instance p2, Lmiuix/pickerwidget/date/Calendar;

    .line 149
    invoke-direct {p2}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 151
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 154
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarResId:Ljava/lang/String;

    .line 156
    invoke-virtual {p0, p2}, Lmiuix/stretchablewidget/StretchableDatePicker;->setLunarText(Ljava/lang/String;)V

    .line 158
    new-instance p2, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 161
    invoke-direct {p2, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;-><init>(Landroid/content/Context;)V

    .line 163
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 166
    iget p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mMinuteInterval:I

    .line 168
    invoke-virtual {p0, p2}, Lmiuix/stretchablewidget/StretchableDatePicker;->setMinuteInterval(I)V

    .line 170
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 173
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 175
    move-result-wide p2

    .line 178
    const/16 v0, 0x38c

    .line 179
    invoke-static {p1, p2, p3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 181
    move-result-object p2

    .line 184
    invoke-virtual {p0, p2}, Lmiuix/stretchablewidget/StretchableWidget;->setDetailMessage(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 188
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 190
    move-result-wide p2

    .line 193
    iput-wide p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mTime:J

    .line 194
    iget-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 196
    new-instance p3, Lmiuix/stretchablewidget/StretchableDatePicker$2;

    .line 198
    invoke-direct {p3, p0, p1}, Lmiuix/stretchablewidget/StretchableDatePicker$2;-><init>(Lmiuix/stretchablewidget/StretchableDatePicker;Landroid/content/Context;)V

    .line 200
    invoke-virtual {p2, p3}, Lmiuix/pickerwidget/widget/DateTimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;)V

    .line 203
    return-void
    .line 206
.end method

.method public setLunarModeOn(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setLunarText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mLunarText:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    return-void
    .line 7
.end method

.method public setMinuteInterval(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMinuteInterval(I)V

    .line 4
    return-void
    .line 7
.end method

.method public setOnTimeChangeListener(Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
