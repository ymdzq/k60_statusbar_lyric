.class public final Lmiuix/appcompat/widget/Spinner$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 2
    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 4
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 12
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [I

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getLocationInWindow([I)V

    .line 17
    iget-object v1, v0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 20
    invoke-virtual {v0}, Landroid/widget/Spinner;->getTextDirection()I

    .line 22
    move-result v2

    .line 25
    invoke-virtual {v0}, Landroid/widget/Spinner;->getTextAlignment()I

    .line 26
    move-result v0

    .line 29
    invoke-interface {v1, v2, v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->show(II)V

    .line 30
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 33
    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 35
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 41
    :cond_1
    return-void
    .line 44
.end method
