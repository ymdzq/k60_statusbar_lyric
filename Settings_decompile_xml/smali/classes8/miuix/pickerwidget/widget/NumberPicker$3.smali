.class Lmiuix/pickerwidget/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/pickerwidget/widget/NumberPicker;->initInputText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 809
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 811
    :cond_0
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 812
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$500(Lmiuix/pickerwidget/widget/NumberPicker;Landroid/view/View;)V

    :goto_0
    return-void
.end method
