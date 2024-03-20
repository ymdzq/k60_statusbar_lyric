.class public final Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
.implements Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;


# instance fields
.field public _view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public clearAllButtonEnabled:Z

.field public clearAllClickListener:Landroid/view/View$OnClickListener;

.field public final clickIntentAction:Ljava/lang/String;

.field public final headerTextResId:I

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final nodeLabel:Ljava/lang/String;

.field public final onHeaderClickListener:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/LayoutInflater;ILcom/android/systemui/plugins/ActivityStarter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->nodeLabel:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->layoutInflater:Landroid/view/LayoutInflater;

    .line 7
    iput p3, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->headerTextResId:I

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clickIntentAction:Ljava/lang/String;

    .line 13
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;

    .line 15
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;)V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->onHeaderClickListener:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    const-string p1, "Not supported"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    const-string p1, "Not supported"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final getChildCount()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getNodeLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->nodeLabel:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public final moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    const-string p1, "Not supported"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final offerToKeepInParentForAnimation()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onViewAdded()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    .line 8
    :goto_0
    return-void
    .line 11
.end method

.method public final onViewMoved()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewRemoved()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final reinflateView(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    .line 7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object v2

    .line 13
    if-ne v2, p1, :cond_0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 16
    move-result v2

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    move v2, v1

    .line 24
    :goto_0
    const/4 v0, 0x0

    .line 25
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->layoutInflater:Landroid/view/LayoutInflater;

    .line 26
    const v4, 0x7f0d035c    # @layout/status_bar_notification_section_header 'res/layout/status_bar_notification_section_header.xml'

    .line 28
    invoke-virtual {v3, v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 35
    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->headerTextResId:I

    .line 37
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setHeaderText(I)V

    .line 39
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->onHeaderClickListener:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;

    .line 42
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clearAllClickListener:Landroid/view/View$OnClickListener;

    .line 47
    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnClearAllClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_1
    if-eq v2, v1, :cond_2

    .line 54
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 56
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clearAllButtonEnabled:Z

    .line 61
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setClearSectionButtonEnabled(Z)V

    .line 63
    return-void
    .line 66
.end method

.method public final removeChild(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Z)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    const-string p1, "Not supported"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final removeFromParentIfKeptForAnimation()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final resetKeepInParentForAnimation()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
