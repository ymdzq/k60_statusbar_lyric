.class public final Lmiuix/pickerwidget/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$2;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eq p1, p2, :cond_0

    .line 8
    const/4 p2, 0x3

    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$2;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 14
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 16
    if-eqz p1, :cond_1

    .line 18
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 20
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    .line 22
    sget-object p1, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 24
    invoke-interface {p0, p1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 26
    move-result-object p0

    .line 29
    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 30
    invoke-interface {p0, p1}, Lmiuix/animation/IHoverStyle;->hoverExit([Lmiuix/animation/base/AnimConfig;)V

    .line 32
    :cond_1
    :goto_0
    return v0
    .line 35
.end method
