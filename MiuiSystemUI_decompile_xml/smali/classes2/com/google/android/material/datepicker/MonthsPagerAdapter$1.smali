.class public final Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

.field public final synthetic val$monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;->this$0:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 2
    iput-object p2, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;->val$monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;->val$monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 8
    move-result p2

    .line 11
    const/4 p4, 0x1

    .line 12
    const/4 p5, 0x0

    .line 13
    if-lt p3, p2, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 16
    move-result p2

    .line 19
    iget-object p1, p1, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 20
    iget p1, p1, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    .line 22
    add-int/2addr p2, p1

    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 25
    if-gt p3, p2, :cond_0

    .line 27
    move p1, p4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p1, p5

    .line 31
    :goto_0
    if-eqz p1, :cond_3

    .line 32
    iget-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;->this$0:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 34
    iget-object p1, p1, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->onDayClickListener:Lcom/google/android/material/datepicker/MaterialCalendar$3;

    .line 36
    iget-object p0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;->val$monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p0, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 48
    move-result-wide p2

    .line 51
    iget-object p0, p1, Lcom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 52
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 54
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 56
    check-cast p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    .line 58
    iget-wide p0, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    .line 60
    cmp-long p0, p2, p0

    .line 62
    if-ltz p0, :cond_1

    .line 64
    goto :goto_1

    .line 66
    :cond_1
    move p4, p5

    .line 67
    :goto_1
    if-nez p4, :cond_2

    .line 68
    goto :goto_2

    .line 70
    :cond_2
    const/4 p0, 0x0

    .line 71
    throw p0

    .line 72
    :cond_3
    :goto_2
    return-void
    .line 73
.end method
