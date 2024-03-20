.class public Lmiuix/appcompat/app/DatePickerDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field private final mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

.field private mLunarModePanel:Landroid/view/View;

.field private mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public static synthetic $r8$lambda$s6oVXBmi7stJdGkFIda9g-qHwLg(Lmiuix/appcompat/app/DatePickerDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/DatePickerDialog;->lambda$new$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 44
    new-instance p1, Lmiuix/appcompat/app/DatePickerDialog$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/DatePickerDialog$1;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    .line 84
    iput-object p3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    .line 86
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 88
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x104000a    # @android:string/ok

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance p3, Lmiuix/appcompat/app/DatePickerDialog$2;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/DatePickerDialog$2;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x1040000    # @android:string/cancel

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p2, v0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    const-string p2, "layout_inflater"

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 102
    sget p2, Lmiuix/appcompat/R$layout;->miuix_appcompat_date_picker_dialog:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 104
    sget p2, Lmiuix/appcompat/R$id;->datePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/pickerwidget/widget/DatePicker;

    iput-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 105
    iget-object p3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p2, p4, p5, p6, p3}, Lmiuix/pickerwidget/widget/DatePicker;->init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V

    .line 106
    invoke-direct {p0, p4, p5, p6}, Lmiuix/appcompat/app/DatePickerDialog;->updateTitle(III)V

    .line 108
    sget p2, Lmiuix/appcompat/R$id;->lunarModePanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    .line 109
    sget p2, Lmiuix/appcompat/R$id;->datePickerLunar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 110
    new-instance p2, Lmiuix/appcompat/app/DatePickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/DatePickerDialog$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 65
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/DatePickerDialog;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/DatePickerDialog;III)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/app/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/DatePickerDialog;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/app/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 110
    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {p0, p2}, Lmiuix/pickerwidget/widget/DatePicker;->setLunarMode(Z)V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 4

    .line 166
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 168
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 169
    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    .line 168
    invoke-interface {v0, v1, v2, v3, p0}, Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lmiuix/pickerwidget/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    .line 174
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 175
    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 176
    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 177
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const/16 v0, 0x3780

    invoke-static {p1, p2, p3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDatePicker()Lmiuix/pickerwidget/widget/DatePicker;
    .locals 0

    .line 139
    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    return-object p0
.end method

.method public setLunarMode(Z)V
    .locals 0

    .line 120
    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method
