.class public final Lmiuix/internal/widget/ListPopup$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public lastContentHeight:I

.field public final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method public constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lmiuix/internal/widget/ListPopup$2;->lastContentHeight:I

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 2
    iget-object p1, p1, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    move-result p1

    .line 9
    iget p2, p0, Lmiuix/internal/widget/ListPopup$2;->lastContentHeight:I

    .line 10
    const/4 p3, -0x1

    .line 12
    if-eq p2, p3, :cond_0

    .line 13
    if-eq p2, p1, :cond_2

    .line 15
    :cond_0
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 17
    iget-object p2, p2, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 19
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 21
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 27
    invoke-virtual {p2}, Lmiuix/internal/widget/ListPopup;->isNeedScroll()Z

    .line 29
    move-result p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p2, 0x1

    .line 34
    :goto_0
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 35
    iget-object p3, p3, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 37
    check-cast p3, Lmiuix/springback/view/SpringBackLayout;

    .line 39
    invoke-virtual {p3, p2}, Lmiuix/springback/view/SpringBackLayout;->setEnabled(Z)V

    .line 41
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 44
    iget-object p3, p3, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 46
    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 48
    iput p1, p0, Lmiuix/internal/widget/ListPopup$2;->lastContentHeight:I

    .line 51
    :cond_2
    return-void
    .line 53
.end method
