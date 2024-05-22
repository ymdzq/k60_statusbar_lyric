.class Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;


# instance fields
.field public final mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

.field public mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object v0, Lmiuix/appcompat/R$styleable;->OverflowMenuButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 8
    iget-object v2, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v3, p3, :cond_0

    .line 9
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_0
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final performClick()Z
    .locals 4

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
    move-object v0, p0

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result v2

    .line 16
    if-nez v2, :cond_2

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    move-result-object v0

    .line 22
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 23
    if-eqz v2, :cond_1

    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v2, 0x0

    .line 32
    if-nez v0, :cond_3

    .line 33
    move v0, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move v0, v2

    .line 37
    :goto_1
    if-nez v0, :cond_4

    .line 38
    return v1

    .line 40
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 41
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$$ExternalSyntheticLambda0;

    .line 44
    if-eqz p0, :cond_7

    .line 46
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 50
    if-eqz v0, :cond_5

    .line 52
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 58
    move-result-object v3

    .line 61
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 62
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 67
    move-result v0

    .line 70
    if-eqz v0, :cond_6

    .line 71
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 73
    goto :goto_2

    .line 76
    :cond_6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    .line 77
    :cond_7
    :goto_2
    return v1
    .line 80
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14
    return-void
    .line 17
.end method
