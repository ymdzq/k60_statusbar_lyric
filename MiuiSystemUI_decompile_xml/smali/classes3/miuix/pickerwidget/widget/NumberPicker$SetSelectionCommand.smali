.class public final Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mSelectionEnd:I

.field public mSelectionStart:I

.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 2
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 4
    iget-object v1, v1, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 6
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    .line 8
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 14
    iget-object v0, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 16
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 18
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 20
    invoke-virtual {v0, v1, p0}, Landroid/widget/EditText;->setSelection(II)V

    .line 22
    :cond_0
    return-void
    .line 25
.end method
