.class public Lmiuix/pickerwidget/widget/DateTimePicker;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static DEFAULT_DAY_FORMATTER:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

.field public static final sCalCache:Ljava/lang/ThreadLocal;

.field public static final sCalendarCache:Ljava/lang/ThreadLocal;


# instance fields
.field public final mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public mDayDisplayValues:[Ljava/lang/String;

.field public mDayFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

.field public mDayLastValue:I

.field public final mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

.field public final mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

.field public mIsLunarMode:Z

.field public mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

.field public mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

.field public mMaxDate:Lmiuix/pickerwidget/date/Calendar;

.field public mMinDate:Lmiuix/pickerwidget/date/Calendar;

.field public mMinuteDisplayValues:[Ljava/lang/String;

.field public mMinuteInterval:I

.field public final mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    sput-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 9
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 11
    sput-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04021e    # @attr/dateTimePickerStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 6
    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 7
    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 9
    new-instance v2, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;-><init>(Landroid/content/Context;)V

    sput-object v2, Lmiuix/pickerwidget/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    const-string v2, "layout_inflater"

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d01fb    # @layout/miuix_appcompat_date_time_picker 'res/layout/miuix_appcompat_date_time_picker.xml'

    .line 11
    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    new-instance v2, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;

    invoke-direct {v2, p0}, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 13
    new-instance v3, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v3}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 14
    invoke-virtual {p0, v3, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 15
    sget-object v3, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/date/Calendar;

    if-nez v4, :cond_0

    .line 16
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v5, 0x0

    .line 18
    invoke-virtual {v4, v5, v6}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    const v3, 0x7f0a0296    # @id/day

    .line 19
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const v4, 0x7f0a0408    # @id/hour

    .line 20
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const v5, 0x7f0a05bb    # @id/minute

    .line 21
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 22
    invoke-virtual {v3, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    const/high16 v6, 0x40400000    # 3.0f

    .line 23
    invoke-virtual {v3, v6}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxFlingSpeedFactor(F)V

    .line 24
    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 25
    invoke-virtual {v5, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 26
    invoke-virtual {v5, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x3b

    .line 27
    invoke-virtual {v5, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 28
    sget-object v2, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 29
    sget-object v2, Lmiuix/pickerwidget/R$styleable;->DateTimePicker:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    const p3, 0x7f130452    # @string/fmt_time_12hour_minute 'h:mm'

    .line 34
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "h"

    .line 35
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    if-eqz v1, :cond_5

    .line 36
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 37
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-virtual {p1, v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 39
    :cond_5
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 40
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 41
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 42
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_6
    return-void
.end method

.method public static checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    array-length v0, v0

    .line 8
    add-int/lit8 p1, p1, 0x0

    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 11
    if-ge v0, p1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public static computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->clone()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lmiuix/pickerwidget/date/Calendar;

    .line 6
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->clone()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    .line 12
    const/16 v0, 0x12

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 17
    const/16 v2, 0x14

    .line 20
    invoke-virtual {p0, v2, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 22
    const/16 v3, 0x15

    .line 25
    invoke-virtual {p0, v3, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 27
    const/16 v4, 0x16

    .line 30
    invoke-virtual {p0, v4, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 32
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 35
    invoke-virtual {p1, v2, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 38
    invoke-virtual {p1, v3, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 41
    invoke-virtual {p1, v4, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 44
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 47
    move-result-wide v0

    .line 50
    const-wide/16 v2, 0x3e8

    .line 51
    div-long/2addr v0, v2

    .line 53
    const-wide/16 v4, 0x3c

    .line 54
    div-long/2addr v0, v4

    .line 56
    div-long/2addr v0, v4

    .line 57
    const-wide/16 v6, 0x18

    .line 58
    div-long/2addr v0, v6

    .line 60
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 61
    move-result-wide p0

    .line 64
    div-long/2addr p0, v2

    .line 65
    div-long/2addr p0, v4

    .line 66
    div-long/2addr p0, v4

    .line 67
    div-long/2addr p0, v6

    .line 68
    sub-long/2addr v0, p0

    .line 69
    long-to-int p0, v0

    .line 70
    return p0
    .line 71
.end method


# virtual methods
.method public final adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V
    .locals 4

    .line 1
    const/16 v0, 0x16

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 5
    const/16 v0, 0x15

    .line 8
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 10
    const/16 v0, 0x14

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 15
    move-result v2

    .line 18
    iget v3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 19
    rem-int/2addr v2, v3

    .line 21
    if-eqz v2, :cond_2

    .line 22
    if-eqz p2, :cond_1

    .line 24
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 26
    move-result p2

    .line 29
    iget p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 30
    add-int/2addr p2, p0

    .line 32
    sub-int/2addr p2, v2

    .line 33
    const/16 v3, 0x3c

    .line 34
    if-lt p2, v3, :cond_0

    .line 36
    const/16 p0, 0x12

    .line 38
    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p0, p2}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    .line 41
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    sub-int/2addr p0, v2

    .line 48
    invoke-virtual {p1, v0, p0}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    neg-int p0, v2

    .line 53
    invoke-virtual {p1, v0, p0}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    .line 54
    :cond_2
    :goto_0
    return-void
    .line 57
.end method

.method public final checkCurrentTime()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 6
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    invoke-virtual {v2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 12
    move-result-wide v2

    .line 15
    cmp-long v0, v0, v2

    .line 16
    if-lez v0, :cond_0

    .line 18
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 20
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 22
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 24
    move-result-wide v1

    .line 27
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 28
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 35
    move-result-wide v0

    .line 38
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 39
    invoke-virtual {v2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 41
    move-result-wide v2

    .line 44
    cmp-long v0, v0, v2

    .line 45
    if-gez v0, :cond_1

    .line 47
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 49
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 51
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 53
    move-result-wide v1

    .line 56
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 57
    :cond_1
    return-void
    .line 60
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const/4 p0, 0x1

    .line 5
    return p0
    .line 6
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    return-void
    .line 5
.end method

.method public final formatDay(III)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 2
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 4
    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 21
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    .line 23
    :cond_1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 25
    if-eqz p0, :cond_2

    .line 27
    move-object v0, p0

    .line 29
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->formatDay(III)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    return-object p0
    .line 34
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 4
    move-result-wide v0

    .line 7
    return-wide v0
    .line 8
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p0, Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class p0, Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 9
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 11
    move-result-wide v1

    .line 14
    const/16 p0, 0x58c

    .line 15
    invoke-static {v0, v1, v2, p0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 21
    move-result-object p1

    .line 24
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
    .line 28
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    iget-wide v0, p1, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    .line 11
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 13
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 15
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 21
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 24
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 27
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 30
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 33
    return-void
    .line 36
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;

    .line 6
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 8
    move-result-wide v2

    .line 11
    invoke-direct {v1, v0, v2, v3}, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;J)V

    .line 12
    return-object v1
    .line 15
.end method

.method public setDayFormatter(Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public setLunarMode(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 2
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 7
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 10
    if-eq v0, p1, :cond_0

    .line 12
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setMaxDateTime(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v0, p1, v0

    .line 4
    if-gtz v0, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 12
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 17
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 19
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 22
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 25
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 32
    move-result-wide p1

    .line 35
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 36
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 38
    move-result-wide v0

    .line 41
    cmp-long p1, p1, v0

    .line 42
    if-lez p1, :cond_1

    .line 44
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 46
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 48
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 50
    move-result-wide v0

    .line 53
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 57
    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 61
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 64
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 67
    return-void
    .line 70
.end method

.method public setMinDateTime(J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v0, p1, v0

    .line 4
    const/4 v1, 0x1

    .line 6
    if-gtz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 13
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 15
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 20
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 23
    const/16 p2, 0x15

    .line 25
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 27
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 33
    const/16 p2, 0x16

    .line 35
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    :cond_1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 43
    const/16 p2, 0x14

    .line 45
    invoke-virtual {p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    .line 47
    :cond_2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 50
    invoke-virtual {p0, p1, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 52
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 55
    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 59
    move-result-wide p1

    .line 62
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 63
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 65
    move-result-wide v2

    .line 68
    cmp-long p1, p1, v2

    .line 69
    if-gez p1, :cond_3

    .line 71
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 73
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 75
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 77
    move-result-wide v2

    .line 80
    invoke-virtual {p1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 81
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 84
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 87
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 90
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 93
    return-void
    .line 96
.end method

.method public setMinuteInterval(I)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 7
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 9
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 12
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 15
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 18
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 21
    return-void
    .line 24
.end method

.method public setOnTimeChangedListener(Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 2
    return-void
    .line 4
.end method

.method public final updateDayPicker(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    const v1, 0x7fffffff

    .line 4
    if-nez v0, :cond_0

    .line 7
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 11
    invoke-static {v2, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 13
    move-result v0

    .line 16
    :goto_0
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 17
    if-nez v2, :cond_1

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 22
    invoke-static {v2, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 24
    move-result v1

    .line 27
    :goto_1
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    if-gt v0, v2, :cond_2

    .line 30
    if-gt v1, v2, :cond_2

    .line 32
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 34
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 36
    invoke-static {v1, v4}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 38
    move-result v1

    .line 41
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 42
    invoke-static {v4, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;I)V

    .line 44
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 47
    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 49
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 52
    invoke-virtual {v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 54
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 57
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 59
    iput v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 62
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 64
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 66
    goto :goto_2

    .line 69
    :cond_2
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 70
    const/4 v5, 0x4

    .line 72
    invoke-static {v4, v5}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;I)V

    .line 73
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 76
    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 78
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 81
    invoke-virtual {v4, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 83
    if-gt v0, v2, :cond_3

    .line 86
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 88
    invoke-virtual {v4, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 90
    iput v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 93
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 95
    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 97
    :cond_3
    if-gt v1, v2, :cond_4

    .line 100
    rsub-int/lit8 v4, v1, 0x4

    .line 102
    iput v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 104
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 106
    invoke-virtual {v5, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 108
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 111
    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 113
    :cond_4
    if-le v0, v2, :cond_5

    .line 116
    if-le v1, v2, :cond_5

    .line 118
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 120
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 122
    :cond_5
    :goto_2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 125
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    .line 127
    move-result v0

    .line 130
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 131
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 133
    move-result v1

    .line 136
    sub-int/2addr v0, v1

    .line 137
    add-int/2addr v0, v2

    .line 138
    if-nez p1, :cond_6

    .line 139
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 141
    if-eqz p1, :cond_6

    .line 143
    array-length p1, p1

    .line 145
    if-eq p1, v0, :cond_7

    .line 146
    :cond_6
    new-array p1, v0, [Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 150
    :cond_7
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 152
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 154
    move-result p1

    .line 157
    sget-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    .line 158
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 160
    move-result-object v1

    .line 163
    check-cast v1, Lmiuix/pickerwidget/date/Calendar;

    .line 164
    if-nez v1, :cond_8

    .line 166
    new-instance v1, Lmiuix/pickerwidget/date/Calendar;

    .line 168
    invoke-direct {v1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 173
    :cond_8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 176
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 178
    move-result-wide v3

    .line 181
    invoke-virtual {v1, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 182
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 185
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 187
    move-result v3

    .line 190
    const/4 v4, 0x5

    .line 191
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 192
    move-result v5

    .line 195
    const/16 v6, 0x9

    .line 196
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 198
    move-result v7

    .line 201
    invoke-virtual {p0, v3, v5, v7}, Lmiuix/pickerwidget/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    .line 202
    move-result-object v3

    .line 205
    aput-object v3, v0, p1

    .line 206
    move v0, v2

    .line 208
    :goto_3
    const/16 v3, 0xc

    .line 209
    const/4 v5, 0x2

    .line 211
    if-gt v0, v5, :cond_a

    .line 212
    invoke-virtual {v1, v3, v2}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    .line 214
    add-int v7, p1, v0

    .line 217
    rem-int/2addr v7, v4

    .line 219
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 220
    array-length v9, v8

    .line 222
    if-lt v7, v9, :cond_9

    .line 223
    goto :goto_4

    .line 225
    :cond_9
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 226
    move-result v3

    .line 229
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 230
    move-result v5

    .line 233
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 234
    move-result v9

    .line 237
    invoke-virtual {p0, v3, v5, v9}, Lmiuix/pickerwidget/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    .line 238
    move-result-object v3

    .line 241
    aput-object v3, v8, v7

    .line 242
    add-int/lit8 v0, v0, 0x1

    .line 244
    goto :goto_3

    .line 246
    :cond_a
    :goto_4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 247
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 249
    move-result-wide v7

    .line 252
    invoke-virtual {v1, v7, v8}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 253
    move v0, v2

    .line 256
    :goto_5
    if-gt v0, v5, :cond_c

    .line 257
    const/4 v7, -0x1

    .line 259
    invoke-virtual {v1, v3, v7}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    .line 260
    sub-int v7, p1, v0

    .line 263
    add-int/2addr v7, v4

    .line 265
    rem-int/2addr v7, v4

    .line 266
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 267
    array-length v9, v8

    .line 269
    if-lt v7, v9, :cond_b

    .line 270
    goto :goto_6

    .line 272
    :cond_b
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 273
    move-result v9

    .line 276
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 277
    move-result v10

    .line 280
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 281
    move-result v11

    .line 284
    invoke-virtual {p0, v9, v10, v11}, Lmiuix/pickerwidget/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    .line 285
    move-result-object v9

    .line 288
    aput-object v9, v8, v7

    .line 289
    add-int/lit8 v0, v0, 0x1

    .line 291
    goto :goto_5

    .line 293
    :cond_c
    :goto_6
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 294
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 296
    invoke-virtual {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 298
    return-void
    .line 301
.end method

.method public final updateHourPicker()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x12

    .line 5
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    invoke-static {v4, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 20
    move-result v0

    .line 23
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 24
    invoke-virtual {v4, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 26
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 29
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 31
    move v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v3

    .line 36
    :goto_0
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 37
    if-eqz v4, :cond_1

    .line 39
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 41
    invoke-static {v5, v4}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 43
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 49
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 51
    move-result v0

    .line 54
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 55
    invoke-virtual {v4, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 57
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 60
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 62
    move v0, v1

    .line 65
    :cond_1
    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 68
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 70
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 73
    const/16 v3, 0x17

    .line 75
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 77
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 80
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 82
    :cond_2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 85
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 87
    move-result v0

    .line 90
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 91
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 93
    return-void
    .line 96
.end method

.method public final updateMinutePicker()V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    const/16 v1, 0x14

    .line 4
    const/16 v2, 0x12

    .line 6
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 12
    invoke-static {v5, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 20
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 22
    move-result v0

    .line 25
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 26
    invoke-virtual {v5, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 28
    move-result v5

    .line 31
    if-ne v0, v5, :cond_0

    .line 32
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 34
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 36
    move-result v0

    .line 39
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 40
    invoke-virtual {v5, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 42
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 45
    iget v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 47
    div-int/2addr v0, v6

    .line 49
    invoke-virtual {v5, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 50
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 53
    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 55
    move v0, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v0, v4

    .line 60
    :goto_0
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 61
    if-eqz v5, :cond_1

    .line 63
    iget-object v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 65
    invoke-static {v6, v5}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    .line 67
    move-result v5

    .line 70
    if-nez v5, :cond_1

    .line 71
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 73
    invoke-virtual {v5, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 75
    move-result v5

    .line 78
    iget-object v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 79
    invoke-virtual {v6, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 81
    move-result v2

    .line 84
    if-ne v5, v2, :cond_1

    .line 85
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 87
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 89
    move-result v0

    .line 92
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 93
    iget v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 95
    div-int/2addr v0, v5

    .line 97
    invoke-virtual {v2, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 98
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 101
    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 103
    move v0, v3

    .line 106
    :cond_1
    if-nez v0, :cond_3

    .line 107
    iget v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 109
    const/16 v2, 0x3c

    .line 111
    div-int v5, v2, v0

    .line 113
    rem-int/2addr v2, v0

    .line 115
    if-nez v2, :cond_2

    .line 116
    add-int/lit8 v5, v5, -0x1

    .line 118
    :cond_2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 120
    invoke-static {v0, v5}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;I)V

    .line 122
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 125
    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 127
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 130
    invoke-virtual {v0, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 132
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 135
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 137
    :cond_3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 140
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    .line 142
    move-result v0

    .line 145
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 146
    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 148
    move-result v2

    .line 151
    sub-int/2addr v0, v2

    .line 152
    add-int/2addr v0, v3

    .line 153
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 154
    if-eqz v2, :cond_4

    .line 156
    array-length v2, v2

    .line 158
    if-eq v2, v0, :cond_6

    .line 159
    :cond_4
    new-array v2, v0, [Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 163
    :goto_1
    if-ge v4, v0, :cond_5

    .line 165
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 167
    sget-object v3, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    .line 169
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 171
    invoke-virtual {v5}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 173
    move-result v5

    .line 176
    add-int/2addr v5, v4

    .line 177
    iget v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 178
    mul-int/2addr v5, v6

    .line 180
    iget v3, v3, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;->iWidth:I

    .line 181
    invoke-static {v3, v5}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    .line 183
    move-result-object v3

    .line 186
    aput-object v3, v2, v4

    .line 187
    add-int/lit8 v4, v4, 0x1

    .line 189
    goto :goto_1

    .line 191
    :cond_5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 192
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 196
    :cond_6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 199
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 201
    move-result v0

    .line 204
    iget v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 205
    div-int/2addr v0, v1

    .line 207
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 208
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 210
    return-void
    .line 213
.end method
