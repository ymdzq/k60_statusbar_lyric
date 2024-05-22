.class public final Lmiuix/preference/StretchablePickerPreference$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lmiuix/preference/StretchablePickerPreference;

.field public final synthetic val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference$2;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 2
    iput-object p2, p0, Lmiuix/preference/StretchablePickerPreference$2;->val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$2;->val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 2
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setLunarMode(Z)V

    .line 4
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$2;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 7
    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference$2;->val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 9
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 11
    move-result-wide v0

    .line 14
    invoke-virtual {p1, v0, v1, p2}, Lmiuix/preference/StretchablePickerPreference;->showTime(JZ)V

    .line 15
    iget-object p0, p0, Lmiuix/preference/StretchablePickerPreference$2;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 18
    iput-boolean p2, p0, Lmiuix/preference/StretchablePickerPreference;->mIsLunar:Z

    .line 20
    return-void
    .line 22
.end method
