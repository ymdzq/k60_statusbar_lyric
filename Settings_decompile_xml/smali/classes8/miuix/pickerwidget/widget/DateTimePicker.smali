.class public Lmiuix/pickerwidget/widget/DateTimePicker;
.super Landroid/widget/LinearLayout;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;,
        Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;,
        Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;,
        Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;,
        Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;
    }
.end annotation


# static fields
.field private static DEFAULT_DAY_FORMATTER:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

.field private static final sCalCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/pickerwidget/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static sCalendarCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/pickerwidget/date/Calendar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field mDayDisplayValues:[Ljava/lang/String;

.field private mDayFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

.field private mDayLastValue:I

.field private mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mIsLunarMode:Z

.field private mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

.field private mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

.field private mMaxDate:Lmiuix/pickerwidget/date/Calendar;

.field private mMinDate:Lmiuix/pickerwidget/date/Calendar;

.field private mMinuteDisplayValues:[Ljava/lang/String;

.field private mMinuteInterval:I

.field private mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    sget v0, Lmiuix/pickerwidget/R$attr;->dateTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 59
    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 61
    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 65
    iput-boolean v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 81
    new-instance v3, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;-><init>(Landroid/content/Context;)V

    sput-object v3, Lmiuix/pickerwidget/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    const-string v3, "layout_inflater"

    .line 83
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 85
    sget v4, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_date_time_picker:I

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    new-instance v3, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;

    invoke-direct {v3, p0, v1}, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiuix/pickerwidget/widget/DateTimePicker;Lmiuix/pickerwidget/widget/DateTimePicker$1;)V

    .line 89
    new-instance v1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 90
    invoke-direct {p0, v1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 92
    sget-object v1, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/date/Calendar;

    if-nez v4, :cond_0

    .line 94
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 95
    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v5, 0x0

    .line 97
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-virtual {v4, v5, v6, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 99
    sget v1, Lmiuix/pickerwidget/R$id;->day:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 100
    sget v1, Lmiuix/pickerwidget/R$id;->hour:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 101
    sget v1, Lmiuix/pickerwidget/R$id;->minute:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 102
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 103
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxFlingSpeedFactor(F)V

    .line 104
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 105
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 106
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 107
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 108
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    sget-object v3, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 109
    sget-object v1, Lmiuix/pickerwidget/R$styleable;->DateTimePicker:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 111
    sget p2, Lmiuix/pickerwidget/R$styleable;->DateTimePicker_lunarCalendar:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 112
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->reorderLayout()V

    .line 115
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 116
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 117
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 118
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 121
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 28
    sget-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1000(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    return-void
.end method

.method static synthetic access$1100(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method static synthetic access$1200(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/pickerwidget/widget/DateTimePicker;)I
    .locals 0

    .line 28
    iget p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    return p0
.end method

.method static synthetic access$302(Lmiuix/pickerwidget/widget/DateTimePicker;I)I
    .locals 0

    .line 28
    iput p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    return p1
.end method

.method static synthetic access$400(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/date/Calendar;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/pickerwidget/widget/DateTimePicker;)I
    .locals 0

    .line 28
    iget p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    return p0
.end method

.method static synthetic access$800(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    return-void
.end method

.method static synthetic access$900(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    return-void
.end method

.method private adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V
    .locals 4

    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    const/16 v0, 0x15

    .line 128
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    const/16 v0, 0x14

    .line 129
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    .line 132
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p2

    iget p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    add-int/2addr p2, p0

    sub-int/2addr p2, v2

    const/16 v3, 0x3c

    if-lt p2, v3, :cond_0

    const/16 p0, 0x12

    const/4 p2, 0x1

    .line 133
    invoke-virtual {p1, p0, p2}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 134
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v2

    .line 136
    invoke-virtual {p1, v0, p0}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_0

    :cond_1
    neg-int p0, v2

    .line 139
    invoke-virtual {p1, v0, p0}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    :cond_2
    :goto_0
    return-void
.end method

.method private checkCurrentTime()V
    .locals 4

    .line 160
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 163
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 164
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-virtual {v0, v1, v2, p0}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    :cond_1
    return-void
.end method

.method private checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    .line 319
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 320
    array-length p0, p0

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    if-ge p0, p3, :cond_0

    const/4 p0, 0x0

    .line 321
    invoke-virtual {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I
    .locals 8

    .line 240
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/pickerwidget/date/Calendar;

    .line 241
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    const/16 p2, 0x12

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, p2, v0}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    const/16 v1, 0x14

    .line 243
    invoke-virtual {p0, v1, v0}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    const/16 v2, 0x15

    .line 244
    invoke-virtual {p0, v2, v0}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    const/16 v3, 0x16

    .line 245
    invoke-virtual {p0, v3, v0}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 246
    invoke-virtual {p1, p2, v0}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 247
    invoke-virtual {p1, v1, v0}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 248
    invoke-virtual {p1, v2, v0}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 249
    invoke-virtual {p1, v3, v0}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 250
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v6, 0x18

    div-long/2addr v0, v6

    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide p0

    div-long/2addr p0, v2

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    div-long/2addr p0, v6

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private formatDay(III)Ljava/lang/String;
    .locals 2

    .line 565
    sget-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 566
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_1

    .line 567
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 570
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mLunarFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    .line 572
    :cond_1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayFormatter:Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;

    if-eqz p0, :cond_2

    move-object v0, p0

    .line 573
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->formatDay(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private reorderLayout()V
    .locals 5

    .line 145
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 147
    :goto_0
    sget v4, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "h"

    .line 148
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    .line 153
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method private updateDayPicker(Z)V
    .locals 12

    .line 254
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    const v1, 0x7fffffff

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0, v2, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    move-result v0

    .line 255
    :goto_0
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0, v2, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_2

    if-gt v1, v3, :cond_2

    .line 257
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0, v1, v4}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    move-result v1

    .line 258
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 259
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 260
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 261
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 262
    iput v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 263
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_2

    .line 265
    :cond_2
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v5, 0x4

    invoke-direct {p0, v4, v2, v5}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 266
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 267
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    if-gt v0, v3, :cond_3

    .line 269
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 270
    iput v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 271
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_3
    if-gt v1, v3, :cond_4

    rsub-int/lit8 v4, v1, 0x4

    .line 274
    iput v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 275
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 276
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_4
    if-le v0, v3, :cond_5

    if-le v1, v3, :cond_5

    .line 279
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 282
    :cond_5
    :goto_2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    if-nez p1, :cond_6

    .line 283
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    if-eqz p1, :cond_6

    array-length p1, p1

    if-eq p1, v0, :cond_7

    .line 284
    :cond_6
    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 287
    :cond_7
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    .line 288
    sget-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/pickerwidget/date/Calendar;

    if-nez v1, :cond_8

    .line 290
    new-instance v1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 293
    :cond_8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-virtual {v1, v4, v5, v0}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 294
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x9

    .line 295
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    .line 294
    invoke-direct {p0, v2, v5, v7}, Lmiuix/pickerwidget/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    move v0, v3

    :goto_3
    const/16 v2, 0xc

    const/4 v5, 0x2

    if-gt v0, v5, :cond_a

    .line 297
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    add-int v7, p1, v0

    .line 298
    rem-int/2addr v7, v4

    .line 299
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v9, v8

    if-lt v7, v9, :cond_9

    goto :goto_4

    .line 302
    :cond_9
    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    .line 303
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v9

    .line 302
    invoke-direct {p0, v2, v5, v9}, Lmiuix/pickerwidget/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 305
    :cond_a
    :goto_4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-virtual {v1, v7, v8, v0}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    move v0, v3

    :goto_5
    if-gt v0, v5, :cond_c

    const/4 v7, -0x1

    .line 307
    invoke-virtual {v1, v2, v7}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    sub-int v7, p1, v0

    add-int/2addr v7, v4

    .line 308
    rem-int/2addr v7, v4

    .line 309
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v9, v8

    if-lt v7, v9, :cond_b

    goto :goto_6

    .line 312
    :cond_b
    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v10

    .line 313
    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v11

    .line 312
    invoke-direct {p0, v9, v10, v11}, Lmiuix/pickerwidget/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 315
    :cond_c
    :goto_6
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    return-void
.end method

.method private updateHourPicker()V
    .locals 6

    .line 214
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 215
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0, v4, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    .line 217
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 218
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 222
    :goto_0
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    if-eqz v4, :cond_1

    .line 223
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0, v5, v4}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    move-result v4

    if-nez v4, :cond_1

    .line 224
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    .line 225
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 226
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 232
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 233
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 235
    :cond_2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    .line 236
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method private updateMinutePicker()V
    .locals 7

    .line 170
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v1, 0x14

    const/16 v2, 0x12

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 171
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0, v5, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 172
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v5, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 173
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    .line 174
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 175
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    iget v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v0, v6

    invoke-virtual {v5, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 176
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 180
    :goto_0
    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    if-eqz v5, :cond_1

    .line 181
    iget-object v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0, v6, v5}, Lmiuix/pickerwidget/widget/DateTimePicker;->computeDayCount(Lmiuix/pickerwidget/date/Calendar;Lmiuix/pickerwidget/date/Calendar;)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 182
    invoke-virtual {v5, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v6, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_1

    .line 183
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    .line 184
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    iget v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v0, v5

    invoke-virtual {v2, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 185
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v3

    :cond_1
    if-nez v0, :cond_3

    .line 190
    iget v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    const/16 v2, 0x3c

    div-int v5, v2, v0

    .line 191
    rem-int/2addr v2, v0

    if-nez v2, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 194
    :cond_2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0, v0, v4, v5}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkDisplayeValid(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 195
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 196
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 197
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 199
    :cond_3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 200
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    if-eqz v2, :cond_4

    array-length v2, v2

    if-eq v2, v0, :cond_6

    .line 201
    :cond_4
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    :goto_1
    if-ge v4, v0, :cond_5

    .line 203
    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    sget-object v3, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    iget-object v5, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v5}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    mul-int/2addr v5, v6

    invoke-interface {v3, v5}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 206
    :cond_5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 208
    :cond_6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v0, v1

    .line 209
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 606
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 427
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 372
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 621
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 622
    const-class p0, Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 627
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 628
    const-class p0, Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 612
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 615
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x58c

    invoke-static {v0, v1, v2, p0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    .line 616
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 437
    check-cast p1, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;

    .line 438
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 439
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->update(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 432
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 433
    new-instance v1, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;J)V

    return-object v1
.end method

.method public setLunarMode(Z)V
    .locals 1

    .line 555
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    .line 556
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    const/4 p1, 0x1

    .line 557
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 558
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    if-eq v0, p1, :cond_0

    .line 560
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMinuteInterval(I)V
    .locals 1

    .line 340
    iget v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    if-ne v0, p1, :cond_0

    return-void

    .line 344
    :cond_0
    iput p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 345
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 347
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 348
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 349
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method public setOnTimeChangedListener(Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    return-void
.end method

.method public update(J)V
    .locals 2

    .line 358
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 359
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->adjustCalendar(Lmiuix/pickerwidget/date/Calendar;Z)V

    .line 360
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 361
    invoke-direct {p0, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 362
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 363
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method
