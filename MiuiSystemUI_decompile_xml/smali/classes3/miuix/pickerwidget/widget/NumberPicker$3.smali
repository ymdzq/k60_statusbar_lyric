.class public final Lmiuix/pickerwidget/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 4
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 12
    iget-object p2, p2, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 17
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 25
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 27
    move-result-object p1

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    .line 45
    move-result p1

    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 50
    :goto_0
    return-void
    .line 53
.end method
