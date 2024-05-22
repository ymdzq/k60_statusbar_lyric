.class public final Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mIncrement:Z

.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 4
    sget-object v2, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    iget-wide v1, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 13
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    return-void
    .line 18
.end method
