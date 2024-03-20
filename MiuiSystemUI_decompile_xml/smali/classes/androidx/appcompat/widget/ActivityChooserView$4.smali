.class public final Landroidx/appcompat/widget/ActivityChooserView$4;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$4;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 2
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$4;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final onForwardingStarted()Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$4;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    const-string v0, "No data model. Did you call #setDataModel?"

    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    return p0
    .line 29
.end method

.method public final onForwardingStopped()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$4;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()V

    .line 4
    const/4 p0, 0x1

    .line 7
    return p0
    .line 8
.end method
