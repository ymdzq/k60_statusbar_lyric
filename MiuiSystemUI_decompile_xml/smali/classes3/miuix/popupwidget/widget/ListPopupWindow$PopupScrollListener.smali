.class public final Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p2, p1, :cond_1

    .line 3
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 5
    iget-object p2, p2, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 7
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 9
    move-result p2

    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-nez p1, :cond_1

    .line 18
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 20
    iget-object p1, p1, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 22
    invoke-virtual {p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    .line 24
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 30
    iget-object p2, p1, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 32
    iget-object p1, p1, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$1;

    .line 34
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 39
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$1;

    .line 41
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$1;->run()V

    .line 43
    :cond_1
    return-void
    .line 46
.end method
