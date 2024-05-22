.class public Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;


# instance fields
.field public final mImageView:Landroid/widget/ImageView;

.field public mIsCheckable:Z

.field public mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field public mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x11

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const p2, 0x7f0d01e9    # @layout/miuix_appcompat_action_end_menu_item_child_layout 'res/layout/miuix_appcompat_action_end_menu_item_child_layout.xml'

    .line 6
    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0072    # @id/action_menu_item_child_icon

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 9
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, p2, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    invoke-interface {p1, v0, p3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {p3}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p3

    const v1, 0x3f19999a    # 0.6f

    .line 11
    invoke-interface {p1, v1, p3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {p3}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p3

    .line 12
    invoke-interface {p1, v0, p3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, p2, [Lmiuix/animation/base/AnimConfig;

    .line 13
    invoke-interface {p1, p0, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 14
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method public getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    return-object p0
    .line 4
.end method

.method public final initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 5
    iget-object v0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    .line 20
    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setCheckable(Z)V

    .line 24
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    .line 27
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setChecked(Z)V

    .line 31
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    .line 34
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setEnabled(Z)V

    .line 38
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 42
    iget-object v0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    return-void
    .line 64
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    return-void
    .line 5
.end method

.method public final performClick()Z
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 10
    iget v2, v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    .line 12
    const v3, 0x7f0a061e    # @id/more

    .line 14
    const/4 v4, 0x0

    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    move v2, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v2, v4

    .line 22
    :goto_0
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 23
    if-eqz v3, :cond_2

    .line 25
    invoke-interface {v3, v2, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 33
    return v1

    .line 36
    :cond_2
    return v4
    .line 37
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsCheckable:Z

    .line 2
    return-void
    .line 4
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsCheckable:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 2
    return-void
    .line 4
.end method

.method public setShortcut(ZC)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
