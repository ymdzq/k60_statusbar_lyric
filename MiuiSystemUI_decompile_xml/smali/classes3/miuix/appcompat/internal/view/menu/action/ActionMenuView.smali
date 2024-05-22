.class public abstract Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lmiuix/appcompat/internal/view/menu/MenuView;


# instance fields
.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method

.method public static generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .locals 1

    .line 5
    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    check-cast p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    instance-of p0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public filterLeftoverView(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 9
    const/4 p0, 0x1

    .line 12
    return p0
    .line 13
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 4
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public getPresenter()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    return-object p0
    .line 4
.end method

.method public getWindowAnimations()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public hasBackgroundView()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final hasDividerBeforeChildAt(I)Z
    .locals 2

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 12
    move-result p0

    .line 15
    if-ge p1, p0, :cond_0

    .line 16
    instance-of p0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    :cond_0
    if-lez p1, :cond_1

    .line 27
    instance-of p0, v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
    .line 39
.end method

.method public final initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    return-void
    .line 4
.end method

.method public final invokeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 8
    return-void
    .line 11
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 9
    return-void

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 13
    return-void
    .line 16
.end method

.method public abstract setBgBlur(Z[I[I)V
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setPresenter(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    return-void
    .line 4
.end method
