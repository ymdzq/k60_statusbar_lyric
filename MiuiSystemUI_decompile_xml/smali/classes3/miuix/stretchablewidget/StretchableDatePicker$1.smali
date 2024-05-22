.class public final Lmiuix/stretchablewidget/StretchableDatePicker$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lmiuix/stretchablewidget/StretchableDatePicker;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 2
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->val$context:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 2
    iget-object p1, p1, Lmiuix/stretchablewidget/StretchableDatePicker;->mDateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 4
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setLunarMode(Z)V

    .line 6
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 9
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->val$context:Landroid/content/Context;

    .line 11
    invoke-static {p1, p2, v0}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$100(Lmiuix/stretchablewidget/StretchableDatePicker;ZLandroid/content/Context;)V

    .line 13
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 16
    iput-boolean p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker;->mIsLunar:Z

    .line 18
    return-void
    .line 20
.end method
