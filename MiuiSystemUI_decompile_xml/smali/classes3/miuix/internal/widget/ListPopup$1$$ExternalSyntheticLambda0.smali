.class public final synthetic Lmiuix/internal/widget/ListPopup$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiuix/internal/widget/ListPopup$1;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/widget/ListPopup$1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$1$$ExternalSyntheticLambda0;->f$0:Lmiuix/internal/widget/ListPopup$1;

    .line 5
    iput-object p2, p0, Lmiuix/internal/widget/ListPopup$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1$$ExternalSyntheticLambda0;->f$0:Lmiuix/internal/widget/ListPopup$1;

    .line 2
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 4
    iget-object p0, v0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 6
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    .line 8
    move-result p0

    .line 11
    iget-object v1, v0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 12
    invoke-virtual {v1}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    .line 14
    move-result v5

    .line 17
    iget-object v1, v0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 18
    iget-object v1, v1, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 20
    iget v1, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 22
    if-lez p0, :cond_0

    .line 24
    if-le v1, p0, :cond_0

    .line 26
    move v6, p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v6, v1

    .line 30
    :goto_0
    const/4 p0, 0x2

    .line 31
    new-array p0, p0, [I

    .line 32
    invoke-virtual {v2, p0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 34
    iget-object p0, v0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 37
    invoke-virtual {p0, v2}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(Landroid/view/View;)I

    .line 39
    move-result v3

    .line 42
    iget-object p0, v0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 43
    invoke-virtual {p0, v2}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/view/View;)I

    .line 45
    move-result v4

    .line 48
    iget-object v1, v0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 49
    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 51
    return-void
    .line 54
.end method
