.class public final Lmiuix/pickerwidget/widget/TimePicker$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/pickerwidget/widget/TimePicker;


# direct methods
.method public synthetic constructor <init>(Lmiuix/pickerwidget/widget/TimePicker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    sget-object p1, Lmiuix/pickerwidget/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiuix/pickerwidget/widget/TimePicker$1;

    .line 10
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    .line 12
    return-void

    .line 15
    :pswitch_1
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIs24HourView:Z

    .line 16
    if-nez p1, :cond_2

    .line 18
    const/16 p1, 0xc

    .line 20
    const/16 v0, 0xb

    .line 22
    if-ne p2, v0, :cond_0

    .line 24
    if-eq p3, p1, :cond_1

    .line 26
    :cond_0
    if-ne p2, p1, :cond_2

    .line 28
    if-ne p3, v0, :cond_2

    .line 30
    :cond_1
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 32
    xor-int/lit8 p1, p1, 0x1

    .line 34
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 36
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 38
    :cond_2
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    .line 41
    return-void

    .line 44
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 45
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 48
    xor-int/lit8 p1, p1, 0x1

    .line 50
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 52
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 54
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    .line 57
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 62
.end method
