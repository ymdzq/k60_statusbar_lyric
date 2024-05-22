.class public final Lmiuix/pickerwidget/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result p1

    .line 5
    const/16 p2, 0x9

    .line 6
    const/4 v0, 0x0

    .line 8
    if-eq p1, p2, :cond_1

    .line 9
    const/16 p2, 0xa

    .line 11
    if-eq p1, p2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 16
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 18
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    .line 20
    sget-object p1, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 22
    invoke-interface {p0, p1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 24
    move-result-object p0

    .line 27
    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 28
    invoke-interface {p0, p1}, Lmiuix/animation/IHoverStyle;->hoverExit([Lmiuix/animation/base/AnimConfig;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 34
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIsHoverEnter:Z

    .line 37
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIHoverStyle:Lmiuix/animation/IHoverStyle;

    .line 39
    sget-object p1, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 41
    invoke-interface {p0, p1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 43
    move-result-object p0

    .line 46
    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 47
    invoke-interface {p0, p1}, Lmiuix/animation/IHoverStyle;->hoverEnter([Lmiuix/animation/base/AnimConfig;)V

    .line 49
    :goto_0
    return v0
    .line 52
.end method
