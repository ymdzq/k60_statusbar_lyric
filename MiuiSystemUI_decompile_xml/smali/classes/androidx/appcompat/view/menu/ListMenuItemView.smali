.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# instance fields
.field public final mBackground:Landroid/graphics/drawable/Drawable;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mContent:Landroid/widget/LinearLayout;

.field public mForceShowIcon:Z

.field public mGroupDivider:Landroid/widget/ImageView;

.field public final mHasListDivider:Z

.field public mIconView:Landroid/widget/ImageView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public mPreserveIconSpacing:Z

.field public mRadioButton:Landroid/widget/RadioButton;

.field public mShortcutView:Landroid/widget/TextView;

.field public final mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field public mSubMenuArrowView:Landroid/widget/ImageView;

.field public final mTextAppearance:I

.field public final mTextAppearanceContext:Landroid/content/Context;

.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04047a    # @attr/listMenuViewStyle

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->MenuView:[I

    invoke-static {v0, p2, v1, p3}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    const/4 p3, 0x5

    .line 4
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 p3, 0x7

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 7
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    const/16 p3, 0x8

    .line 8
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010129    # @android:attr/divider

    filled-new-array {p3}, [I

    move-result-object p3

    const v1, 0x7f040281    # @attr/dropDownListViewStyle

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    .line 12
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 16
    return-object p0
    .line 18
.end method


# virtual methods
.method public final adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 20
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 24
    move-result p0

    .line 27
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 28
    add-int/2addr p0, v2

    .line 30
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 31
    add-int/2addr p0, v0

    .line 33
    add-int/2addr p0, v1

    .line 34
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 35
    :cond_0
    return-void
    .line 37
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2
    return-object p0
    .line 4
.end method

.method public final initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x8

    .line 9
    if-eqz v0, :cond_0

    .line 11
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 28
    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 31
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 39
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    iget-char v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    iget-char v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 50
    :goto_1
    if-eqz v0, :cond_2

    .line 52
    const/4 v0, 0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v0, v1

    .line 56
    :goto_2
    iget-object v3, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 57
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 59
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    iget-char v3, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 65
    goto :goto_3

    .line 67
    :cond_3
    iget-char v3, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 68
    :goto_3
    invoke-virtual {p0, v0, v3}, Landroidx/appcompat/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 70
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    .line 80
    move-result v0

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 84
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 87
    move-result v0

    .line 90
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 91
    if-eqz v3, :cond_5

    .line 93
    if-eqz v0, :cond_4

    .line 95
    goto :goto_4

    .line 97
    :cond_4
    move v1, v2

    .line 98
    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :cond_5
    iget-object p1, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    return-void
    .line 107
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 5
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 9
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 21
    iget v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 23
    const/4 v2, -0x1

    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 30
    :cond_0
    const v0, 0x7f0a0878    # @id/shortcut

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0a08fc    # @id/submenuarrow

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/ImageView;

    .line 51
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 53
    if-eqz v0, :cond_1

    .line 55
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_1
    const v0, 0x7f0a03ba    # @id/group_divider

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/ImageView;

    .line 69
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0a0223    # @id/id_0x7f0a0223

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 82
    return-void
    .line 84
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    if-lez v0, :cond_0

    .line 24
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 26
    if-gtz v2, :cond_0

    .line 28
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 32
    return-void
    .line 35
.end method

.method public setCheckable(Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 13
    iget v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 15
    and-int/lit8 v0, v0, 0x4

    .line 17
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_0
    const/4 v2, -0x1

    .line 25
    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 28
    if-nez v0, :cond_3

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 32
    move-result-object v0

    .line 35
    const v3, 0x7f0d0011    # @layout/abc_list_menu_item_radio 'res/layout/abc_list_menu_item_radio.xml'

    .line 36
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/RadioButton;

    .line 43
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 45
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 47
    if-eqz v3, :cond_2

    .line 49
    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 51
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 55
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 58
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 60
    goto :goto_3

    .line 62
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 63
    if-nez v0, :cond_6

    .line 65
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 67
    move-result-object v0

    .line 70
    const v3, 0x7f0d000e    # @layout/abc_list_menu_item_checkbox 'res/layout/abc_list_menu_item_checkbox.xml'

    .line 71
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/CheckBox;

    .line 78
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 80
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 82
    if-eqz v3, :cond_5

    .line 84
    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 86
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 90
    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 93
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 95
    :goto_3
    const/16 v3, 0x8

    .line 97
    if-eqz p1, :cond_8

    .line 99
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 103
    move-result p0

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 107
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    .line 110
    move-result p0

    .line 113
    if-eqz p0, :cond_7

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 116
    :cond_7
    if-eqz v2, :cond_a

    .line 119
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    .line 121
    move-result p0

    .line 124
    if-eq p0, v3, :cond_a

    .line 125
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 127
    goto :goto_4

    .line 130
    :cond_8
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 131
    if-eqz p1, :cond_9

    .line 133
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 135
    :cond_9
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 138
    if-eqz p0, :cond_a

    .line 140
    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 142
    :cond_a
    :goto_4
    return-void
    .line 145
.end method

.method public setChecked(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2
    iget v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 4
    and-int/lit8 v0, v0, 0x4

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    const/4 v2, -0x1

    .line 14
    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 17
    if-nez v0, :cond_2

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 21
    move-result-object v0

    .line 24
    const v3, 0x7f0d0011    # @layout/abc_list_menu_item_radio 'res/layout/abc_list_menu_item_radio.xml'

    .line 25
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/RadioButton;

    .line 32
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 34
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 36
    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 40
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 44
    :cond_2
    :goto_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 47
    goto :goto_3

    .line 49
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 50
    if-nez v0, :cond_5

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 54
    move-result-object v0

    .line 57
    const v3, 0x7f0d000e    # @layout/abc_list_menu_item_checkbox 'res/layout/abc_list_menu_item_checkbox.xml'

    .line 58
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/CheckBox;

    .line 65
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 67
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 69
    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 73
    goto :goto_2

    .line 76
    :cond_4
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 77
    :cond_5
    :goto_2
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 80
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 82
    return-void
    .line 85
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 4
    return-void
    .line 6
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    .line 6
    if-nez p0, :cond_0

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p0, 0x8

    .line 14
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 4
    iget-boolean v0, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    if-nez v0, :cond_2

    .line 19
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 21
    if-nez v2, :cond_2

    .line 23
    return-void

    .line 25
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 26
    if-nez v2, :cond_3

    .line 28
    if-nez p1, :cond_3

    .line 30
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 32
    if-nez v3, :cond_3

    .line 34
    return-void

    .line 36
    :cond_3
    if-nez v2, :cond_5

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 39
    move-result-object v2

    .line 42
    const v3, 0x7f0d000f    # @layout/abc_list_menu_item_icon 'res/layout/abc_list_menu_item_icon.xml'

    .line 43
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    move-result-object v2

    .line 49
    check-cast v2, Landroid/widget/ImageView;

    .line 50
    iput-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 52
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 54
    if-eqz v3, :cond_4

    .line 56
    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 58
    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {p0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 62
    :cond_5
    :goto_2
    if-nez p1, :cond_7

    .line 65
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 67
    if-eqz v2, :cond_6

    .line 69
    goto :goto_3

    .line 71
    :cond_6
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 72
    const/16 p1, 0x8

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    goto :goto_5

    .line 79
    :cond_7
    :goto_3
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 80
    if-eqz v0, :cond_8

    .line 82
    goto :goto_4

    .line 84
    :cond_8
    const/4 p1, 0x0

    .line 85
    :goto_4
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 91
    move-result p1

    .line 94
    if-eqz p1, :cond_9

    .line 95
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :cond_9
    :goto_5
    return-void
    .line 102
.end method

.method public setShortcut(ZC)V
    .locals 8

    .line 1
    const/4 p2, 0x1

    .line 2
    const/16 v0, 0x8

    .line 3
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 7
    iget-object v1, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 18
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    iget-char p1, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-char p1, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 29
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    move p1, p2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p1, v2

    .line 35
    :goto_1
    if-eqz p1, :cond_2

    .line 36
    goto :goto_2

    .line 38
    :cond_2
    move v2, v0

    .line 39
    :goto_2
    if-nez v2, :cond_a

    .line 40
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 44
    iget-object v3, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 46
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 48
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    iget-char v3, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 54
    goto :goto_3

    .line 56
    :cond_3
    iget-char v3, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 57
    :goto_3
    if-nez v3, :cond_4

    .line 59
    const-string p2, ""

    .line 61
    goto/16 :goto_6

    .line 63
    :cond_4
    iget-object v4, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 65
    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object v4

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v6, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 78
    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 82
    move-result-object v6

    .line 85
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 86
    move-result v6

    .line 89
    if-eqz v6, :cond_5

    .line 90
    const v6, 0x7f13001e    # @string/abc_prepend_shortcut_label 'Menu+'

    .line 92
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object v6

    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_5
    iget-object v6, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 102
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 104
    move-result v6

    .line 107
    if-eqz v6, :cond_6

    .line 108
    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 110
    goto :goto_4

    .line 112
    :cond_6
    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 113
    :goto_4
    const v6, 0x7f13001a    # @string/abc_menu_meta_shortcut_label 'Meta+'

    .line 115
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 118
    move-result-object v6

    .line 121
    const/high16 v7, 0x10000

    .line 122
    invoke-static {v1, v7, v6, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 124
    const v6, 0x7f130016    # @string/abc_menu_ctrl_shortcut_label 'Ctrl+'

    .line 127
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 130
    move-result-object v6

    .line 133
    const/16 v7, 0x1000

    .line 134
    invoke-static {v1, v7, v6, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 136
    const v6, 0x7f130015    # @string/abc_menu_alt_shortcut_label 'Alt+'

    .line 139
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 142
    move-result-object v6

    .line 145
    const/4 v7, 0x2

    .line 146
    invoke-static {v1, v7, v6, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 147
    const v6, 0x7f13001b    # @string/abc_menu_shift_shortcut_label 'Shift+'

    .line 150
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 153
    move-result-object v6

    .line 156
    invoke-static {v1, p2, v6, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 157
    const p2, 0x7f13001d    # @string/abc_menu_sym_shortcut_label 'Sym+'

    .line 160
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 163
    move-result-object p2

    .line 166
    const/4 v6, 0x4

    .line 167
    invoke-static {v1, v6, p2, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 168
    const p2, 0x7f130019    # @string/abc_menu_function_shortcut_label 'Function+'

    .line 171
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 174
    move-result-object p2

    .line 177
    invoke-static {v1, v0, p2, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 178
    if-eq v3, v0, :cond_9

    .line 181
    const/16 p2, 0xa

    .line 183
    if-eq v3, p2, :cond_8

    .line 185
    const/16 p2, 0x20

    .line 187
    if-eq v3, p2, :cond_7

    .line 189
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    goto :goto_5

    .line 194
    :cond_7
    const p2, 0x7f13001c    # @string/abc_menu_space_shortcut_label 'space'

    .line 195
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 198
    move-result-object p2

    .line 201
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    goto :goto_5

    .line 205
    :cond_8
    const p2, 0x7f130018    # @string/abc_menu_enter_shortcut_label 'enter'

    .line 206
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 209
    move-result-object p2

    .line 212
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    goto :goto_5

    .line 216
    :cond_9
    const p2, 0x7f130017    # @string/abc_menu_delete_shortcut_label 'delete'

    .line 217
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 220
    move-result-object p2

    .line 223
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :goto_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p2

    .line 230
    :goto_6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 234
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    .line 236
    move-result p1

    .line 239
    if-eq p1, v2, :cond_b

    .line 240
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 242
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :cond_b
    return-void
    .line 247
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 17
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 24
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    .line 26
    move-result p1

    .line 29
    const/16 v0, 0x8

    .line 30
    if-eq p1, v0, :cond_1

    .line 32
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :cond_1
    :goto_0
    return-void
    .line 39
.end method
