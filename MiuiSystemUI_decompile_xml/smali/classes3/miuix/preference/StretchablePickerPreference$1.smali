.class public final Lmiuix/preference/StretchablePickerPreference$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;


# instance fields
.field public final synthetic this$0:Lmiuix/preference/StretchablePickerPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/StretchablePickerPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDateTimeChanged(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 2
    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 4
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 6
    iget-boolean v0, p0, Lmiuix/preference/StretchablePickerPreference;->mIsLunar:Z

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/preference/StretchablePickerPreference;->showTime(JZ)V

    .line 11
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 14
    return-void
    .line 17
.end method
