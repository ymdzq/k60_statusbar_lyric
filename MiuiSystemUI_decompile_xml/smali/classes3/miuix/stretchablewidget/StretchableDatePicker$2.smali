.class public final Lmiuix/stretchablewidget/StretchableDatePicker$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;


# instance fields
.field public final synthetic this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lmiuix/stretchablewidget/StretchableDatePicker;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 2
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->val$context:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onDateTimeChanged(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 2
    iget-object v1, v0, Lmiuix/stretchablewidget/StretchableDatePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 4
    invoke-virtual {v1, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 6
    iget-boolean v1, v0, Lmiuix/stretchablewidget/StretchableDatePicker;->mIsLunar:Z

    .line 9
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->val$context:Landroid/content/Context;

    .line 11
    invoke-static {v0, v1, p0}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$100(Lmiuix/stretchablewidget/StretchableDatePicker;ZLandroid/content/Context;)V

    .line 13
    iput-wide p1, v0, Lmiuix/stretchablewidget/StretchableDatePicker;->mTime:J

    .line 16
    return-void
    .line 18
.end method
