.class Lmiuix/internal/widget/ListPopup$2;
.super Ljava/lang/Object;
.source "ListPopup.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastContentHeight:I

.field final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 220
    iput p1, p0, Lmiuix/internal/widget/ListPopup$2;->lastContentHeight:I

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 224
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    iget-object p1, p1, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 225
    iget p2, p0, Lmiuix/internal/widget/ListPopup$2;->lastContentHeight:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    if-eq p2, p1, :cond_2

    .line 227
    :cond_0
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p2}, Lmiuix/internal/widget/ListPopup;->access$500(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 228
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {p2}, Lmiuix/internal/widget/ListPopup;->isNeedScroll()Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 230
    :goto_0
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    iget-object p3, p3, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    check-cast p3, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p3, p2}, Lmiuix/springback/view/SpringBackLayout;->setEnabled(Z)V

    .line 231
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p3}, Lmiuix/internal/widget/ListPopup;->access$500(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 232
    iput p1, p0, Lmiuix/internal/widget/ListPopup$2;->lastContentHeight:I

    :cond_2
    return-void
.end method
