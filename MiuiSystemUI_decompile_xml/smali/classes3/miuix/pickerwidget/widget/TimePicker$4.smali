.class public final Lmiuix/pickerwidget/widget/TimePicker$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/TimePicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/TimePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$4;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$4;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 5
    iget-boolean v0, p1, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    iput-boolean v0, p1, Lmiuix/pickerwidget/widget/TimePicker;->mIsAm:Z

    .line 11
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/TimePicker;->updateAmPmControl()V

    .line 13
    iget-object p0, p0, Lmiuix/pickerwidget/widget/TimePicker$4;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 16
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/TimePicker;->onTimeChanged()V

    .line 18
    return-void
    .line 21
.end method
