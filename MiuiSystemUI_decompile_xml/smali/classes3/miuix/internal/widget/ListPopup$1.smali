.class public final Lmiuix/internal/widget/ListPopup$1;
.super Landroid/database/DataSetObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method public constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 2
    iget-object v1, v0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 4
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 7
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 15
    iget-object v0, v0, Lmiuix/internal/widget/ListPopup;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    new-instance v1, Lmiuix/internal/widget/ListPopup$1$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {v1, p0, v0}, Lmiuix/internal/widget/ListPopup$1$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/ListPopup$1;Landroid/view/View;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    :cond_1
    return-void
    .line 39
.end method
