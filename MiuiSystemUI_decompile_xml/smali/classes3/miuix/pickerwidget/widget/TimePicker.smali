.class public Lmiuix/pickerwidget/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final NO_OP_CHANGE_LISTENER:Lmiuix/pickerwidget/widget/TimePicker$1;


# instance fields
.field public final mAmPmButton:Landroid/widget/Button;

.field public final mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field public mCurrentLocale:Ljava/util/Locale;

.field public final mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field public mIs24HourView:Z

.field public mIsAm:Z

.field public mIsEnabled:Z

.field public final mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field public mOnTimeChangedListener:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

.field public final mProperPaddingViewGroup:Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

.field public mTempCalendar:Lmiuix/pickerwidget/date/Calendar;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/pickerwidget/widget/TimePicker$1;

    .line 2
    invoke-direct {v0}, Lmiuix/pickerwidget/widget/TimePicker$1;-><init>()V

    .line 4
    sput-object v0, Lmiuix/pickerwidget/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiuix/pickerwidget/widget/TimePicker$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iput-object p3, p0, Lmiuix/pickerwidget/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 8
    iget-object p3, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    if-nez p3, :cond_1

    .line 9
    new-instance p3, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p3}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p3, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    :cond_1
    :goto_0
    const-string p3, "layout_inflater"

    .line 10
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p3, 0x7f0d0227    # @layout/miuix_appcompat_time_picker 'res/layout/miuix_appcompat_time_picker.xml'

    .line 11
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0748    # @id/properPaddingViewGroup

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mProperPaddingViewGroup:Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

    const p1, 0x7f0a0408    # @id/hour

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 14
    new-instance p3, Lmiuix/pickerwidget/widget/TimePicker$2;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lmiuix/pickerwidget/widget/TimePicker$2;-><init>(Lmiuix/pickerwidget/widget/TimePicker;I)V

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    const p3, 0x7f0a06bb    # @id/number_picker_input

    .line 15
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v1, 0x5

    .line 16
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    const p1, 0x7f0a05bb    # @id/minute

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 18
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x3b

    .line 19
    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    const-wide/16 v2, 0x64

    .line 20
    invoke-virtual {p1, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 21
    sget-object v2, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 22
    new-instance v2, Lmiuix/pickerwidget/widget/TimePicker$2;

    invoke-direct {v2, p0, p2}, Lmiuix/pickerwidget/widget/TimePicker$2;-><init>(Lmiuix/pickerwidget/widget/TimePicker;I)V

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 23
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    const p1, 0x7f0a00b3    # @id/amPm

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 26
    instance-of v1, p1, Landroid/widget/Button;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 27
    iput-object v2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 28
    move-object p3, p1

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 29
    new-instance v1, Lmiuix/pickerwidget/widget/TimePicker$4;

    invoke-direct {v1, p0}, Lmiuix/pickerwidget/widget/TimePicker$4;-><init>(Lmiuix/pickerwidget/widget/TimePicker;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 30
    :cond_2
    iput-object v2, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 31
    move-object v1, p1

    check-cast v1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 32
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 33
    invoke-virtual {v1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v2

    .line 35
    iget-object v2, v2, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030004    # @array/am_pms

    .line 36
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 38
    new-instance v2, Lmiuix/pickerwidget/widget/TimePicker$2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lmiuix/pickerwidget/widget/TimePicker$2;-><init>(Lmiuix/pickerwidget/widget/TimePicker;I)V

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    .line 39
    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const/4 v1, 0x6

    .line 40
    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 41
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f130458    # @string/fmt_time_12hour_pm 'ha'

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "a"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    const p3, 0x7f0a098c    # @id/timePickerLayout

    .line 42
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 45
    :cond_3
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateHourControl()V

    .line 46
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 47
    sget-object p1, Lmiuix/pickerwidget/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiuix/pickerwidget/widget/TimePicker$1;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;)V

    .line 48
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 p3, 0x12

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 49
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 p3, 0x14

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 50
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 51
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/TimePicker;->setEnabled(Z)V

    .line 52
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 53
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const/4 p0, 0x1

    .line 5
    return p0
    .line 6
.end method

.method public getBaseline()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 4
    move-result v0

    .line 7
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 17
    if-eqz p0, :cond_1

    .line 19
    rem-int/lit8 v0, v0, 0xc

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    .line 28
    add-int/lit8 v0, v0, 0xc

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p0

    .line 35
    return-object p0
    .line 36
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 4
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 16
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    if-nez p1, :cond_1

    .line 20
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    .line 22
    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 24
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 27
    :cond_1
    :goto_0
    return-void
    .line 29
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p0, Lmiuix/pickerwidget/widget/TimePicker;

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
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class p0, Lmiuix/pickerwidget/widget/TimePicker;

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
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/16 v0, 0x2c

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x1c

    .line 12
    :goto_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 14
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v2

    .line 23
    const/16 v3, 0x12

    .line 24
    invoke-virtual {v1, v3, v2}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 26
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 29
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 31
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v2

    .line 38
    const/16 v3, 0x14

    .line 39
    invoke-virtual {v1, v3, v2}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 47
    iget-object p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mTempCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 48
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 50
    move-result-wide v2

    .line 53
    invoke-static {v1, v2, v3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 58
    move-result-object p1

    .line 61
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
    .line 65
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lmiuix/pickerwidget/widget/TimePicker$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    iget v0, p1, Lmiuix/pickerwidget/widget/TimePicker$SavedState;->mHour:I

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 17
    iget p1, p1, Lmiuix/pickerwidget/widget/TimePicker$SavedState;->mMinute:I

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 26
    return-void
    .line 29
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/pickerwidget/widget/TimePicker$SavedState;

    .line 6
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result v2

    .line 15
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p0

    .line 23
    invoke-direct {v1, v0, v2, p0}, Lmiuix/pickerwidget/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    .line 24
    return-object v1
    .line 27
.end method

.method public final onTimeChanged()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mOnTimeChangedListener:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public set24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    move-result p1

    .line 14
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 15
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 17
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1

    .line 24
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateHourControl()V

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 32
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 35
    return-void
    .line 38
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 15
    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 22
    const/16 v1, 0xc

    .line 23
    if-lt v0, v1, :cond_1

    .line 25
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v0

    .line 33
    if-le v0, v1, :cond_2

    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p1

    .line 39
    sub-int/2addr p1, v1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p1

    .line 58
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 59
    :cond_3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result p1

    .line 67
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 68
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    .line 71
    :cond_4
    :goto_1
    return-void
    .line 74
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 19
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    .line 22
    return-void
    .line 25
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mMinuteSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 12
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 17
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 30
    :goto_0
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsEnabled:Z

    .line 33
    return-void
    .line 35
.end method

.method public setFixedContentHorizontalPadding(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mProperPaddingViewGroup:Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;

    .line 2
    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->setFixedContentHorizontalPadding(II)V

    .line 4
    return-void
    .line 7
.end method

.method public setOnTimeChangedListener(Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mOnTimeChangedListener:Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;

    .line 2
    return-void
    .line 4
.end method

.method public final updateAmPmControl()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 6
    const/16 v1, 0x8

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 22
    xor-int/lit8 v0, v0, 0x1

    .line 24
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 26
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 31
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v3

    .line 45
    invoke-static {v3}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 46
    move-result-object v3

    .line 49
    iget-object v3, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 50
    const v4, 0x7f030004    # @array/am_pms

    .line 52
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 58
    aget-object v0, v3, v0

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    :goto_0
    const/4 v0, 0x4

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 70
    return-void
    .line 73
.end method

.method public final updateHourControl()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 9
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 12
    const/16 v1, 0x17

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 16
    iget-object p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 19
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    .line 21
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 27
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 30
    iget-object v0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 33
    const/16 v1, 0xc

    .line 35
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 37
    iget-object p0, p0, Lmiuix/pickerwidget/widget/TimePicker;->mHourSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 40
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 43
    :goto_0
    return-void
    .line 46
.end method
