.class public Landroidx/leanback/widget/picker/Picker;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAlphaAnimDuration:I

.field public final mColumnChangeListener:Landroidx/leanback/widget/picker/Picker$1;

.field public final mColumnViews:Ljava/util/List;

.field public mColumns:Ljava/util/ArrayList;

.field public final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field public final mFocusedAlpha:F

.field public mPickerItemLayoutId:I

.field public mPickerItemTextViewId:I

.field public final mPickerView:Landroid/view/ViewGroup;

.field public mSelectedColumn:I

.field public final mSeparators:Ljava/util/List;

.field public final mUnfocusedAlpha:F

.field public final mVisibleColumnAlpha:F

.field public mVisibleItems:F

.field public mVisibleItemsActivated:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0405be    # @attr/pickerStyle

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    const/high16 v0, 0x40400000    # 3.0f

    .line 4
    iput v0, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItems:F

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 8
    new-instance v2, Landroidx/leanback/widget/picker/Picker$1;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/picker/Picker$1;-><init>(Landroidx/leanback/widget/picker/Picker;)V

    iput-object v2, p0, Landroidx/leanback/widget/picker/Picker;->mColumnChangeListener:Landroidx/leanback/widget/picker/Picker$1;

    .line 9
    sget-object v5, Landroidx/leanback/R$styleable;->lbPicker:[I

    invoke-virtual {p1, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v9, 0x0

    .line 10
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    .line 11
    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const p1, 0x7f0d014b    # @layout/lb_picker_item 'res/layout/lb_picker_item.xml'

    .line 12
    invoke-virtual {v2, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    const/4 p1, 0x1

    .line 13
    invoke-virtual {v2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    .line 14
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 p2, 0x40000

    .line 16
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 17
    iput v0, p0, Landroidx/leanback/widget/picker/Picker;->mFocusedAlpha:F

    .line 18
    iput v0, p0, Landroidx/leanback/widget/picker/Picker;->mUnfocusedAlpha:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 19
    iput p2, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleColumnAlpha:F

    const/16 p2, 0xc8

    .line 20
    iput p2, p0, Landroidx/leanback/widget/picker/Picker;->mAlphaAnimDuration:I

    .line 21
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40200000    # 2.5f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0149    # @layout/lb_picker 'res/layout/lb_picker.xml'

    .line 23
    invoke-virtual {p2, p3, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a0703    # @id/picker

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 8
    move-result v0

    .line 11
    const/16 v1, 0x17

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    const/16 v1, 0x42

    .line 16
    if-eq v0, v1, :cond_0

    .line 18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 20
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 25
    move-result p1

    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 32
    :cond_1
    return v0

    .line 35
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 36
    move-result p0

    .line 39
    return p0
    .line 40
.end method

.method public getActivatedVisibleItemCount()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    .line 2
    return p0
    .line 4
.end method

.method public getColumnsCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public getPickerItemHeightPixels()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f070e70    # @dimen/picker_item_height '32.0dp'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final getPickerItemLayoutId()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPickerItemTextViewId()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    .line 2
    return p0
    .line 4
.end method

.method public getSelectedColumn()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 2
    return p0
    .line 4
.end method

.method public final getSeparator()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 2
    const/4 v0, 0x0

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/CharSequence;

    .line 11
    return-object p0
    .line 13
.end method

.method public final getSeparators()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public getVisibleItemCount()F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    return p0
    .line 4
.end method

.method public onColumnValueChanged(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/leanback/widget/picker/PickerColumn;

    .line 8
    iget p1, p0, Landroidx/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    .line 10
    if-eq p1, p2, :cond_0

    .line 12
    iput p2, p0, Landroidx/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    .line 14
    :cond_0
    return-void
    .line 16
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getSelectedColumn()I

    .line 2
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Landroidx/leanback/widget/VerticalGridView;

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 28
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
    .line 34
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object p2, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 6
    check-cast p2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result p2

    .line 13
    if-ge p1, p2, :cond_1

    .line 14
    iget-object p2, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 16
    check-cast p2, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 23
    check-cast p2, Landroidx/leanback/widget/VerticalGridView;

    .line 24
    invoke-virtual {p2}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 26
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/Picker;->setSelectedColumn(I)V

    .line 32
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    return-void
    .line 38
.end method

.method public setActivated(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 2
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 8
    return-void

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    .line 15
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getSelectedColumn()I

    .line 19
    move-result v1

    .line 22
    const/high16 v2, 0x20000

    .line 23
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 25
    if-nez p1, :cond_1

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocusable()Z

    .line 32
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 41
    move v3, v2

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    .line 43
    move-result v4

    .line 46
    if-ge v3, v4, :cond_2

    .line 47
    iget-object v4, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 49
    check-cast v4, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/leanback/widget/VerticalGridView;

    .line 57
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->updateColumnSize()V

    .line 65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 68
    move-result v3

    .line 71
    move v4, v2

    .line 72
    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    .line 73
    move-result v5

    .line 76
    if-ge v4, v5, :cond_4

    .line 77
    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 79
    check-cast v5, Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 86
    check-cast v5, Landroidx/leanback/widget/VerticalGridView;

    .line 87
    move v6, v2

    .line 89
    :goto_2
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 90
    move-result v7

    .line 93
    if-ge v6, v7, :cond_3

    .line 94
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 96
    move-result-object v7

    .line 99
    invoke-virtual {v7, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 100
    add-int/lit8 v6, v6, 0x1

    .line 103
    goto :goto_2

    .line 105
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 106
    goto :goto_1

    .line 108
    :cond_4
    if-eqz p1, :cond_5

    .line 109
    if-eqz v0, :cond_5

    .line 111
    if-ltz v1, :cond_5

    .line 113
    iget-object p1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 115
    check-cast p1, Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 122
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 123
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 125
    :cond_5
    const/high16 p1, 0x40000

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 130
    return-void
    .line 133
.end method

.method public setActivatedVisibleItemCount(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-lez v0, :cond_1

    .line 5
    iget v0, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    .line 7
    cmpl-float v0, v0, p1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->updateColumnSize()V

    .line 21
    :cond_0
    return-void

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 27
    throw p0
    .line 30
.end method

.method public setColumnAt(ILandroidx/leanback/widget/picker/PickerColumn;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/leanback/widget/VerticalGridView;

    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    :cond_0
    iget p1, p2, Landroidx/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    .line 28
    iget p2, p2, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 30
    sub-int/2addr p1, p2

    .line 32
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 33
    return-void
    .line 36
.end method

.method public setColumnValue(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/leanback/widget/picker/PickerColumn;

    .line 8
    iget v1, v0, Landroidx/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    .line 10
    if-eq v1, p2, :cond_1

    .line 12
    iput p2, v0, Landroidx/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    .line 14
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Landroidx/leanback/widget/picker/PickerColumn;

    .line 34
    iget p0, p0, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 36
    sub-int/2addr p2, p0

    .line 38
    if-eqz p3, :cond_0

    .line 39
    invoke-virtual {v0, p2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPositionSmooth(I)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 45
    :cond_1
    :goto_0
    return-void
    .line 48
.end method

.method public setColumns(Ljava/util/List;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 24
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/CharSequence;

    .line 32
    iget-object v3, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 34
    check-cast v3, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 38
    iget-object v3, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 41
    check-cast v3, Ljava/util/ArrayList;

    .line 43
    const-string v4, ""

    .line 45
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    move v3, v2

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    move-result v5

    .line 54
    sub-int/2addr v5, v1

    .line 55
    if-ge v3, v5, :cond_0

    .line 56
    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 58
    check-cast v5, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 68
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 76
    check-cast v0, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v0

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 84
    move-result v3

    .line 87
    add-int/2addr v3, v1

    .line 88
    if-ne v0, v3, :cond_6

    .line 89
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 91
    check-cast v0, Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    .line 103
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    iput-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 108
    iget p1, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 112
    move-result v0

    .line 115
    sub-int/2addr v0, v1

    .line 116
    if-le p1, v0, :cond_2

    .line 117
    iget-object p1, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 121
    move-result p1

    .line 124
    sub-int/2addr p1, v1

    .line 125
    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 126
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 128
    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 132
    move-result-object p1

    .line 135
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    .line 136
    move-result v0

    .line 139
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 140
    check-cast v1, Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/CharSequence;

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    move-result v1

    .line 153
    const v3, 0x7f0d014c    # @layout/lb_picker_separator 'res/layout/lb_picker_separator.xml'

    .line 154
    if-nez v1, :cond_3

    .line 157
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 159
    invoke-virtual {p1, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 161
    move-result-object v1

    .line 164
    check-cast v1, Landroid/widget/TextView;

    .line 165
    iget-object v4, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 167
    check-cast v4, Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v4

    .line 174
    check-cast v4, Ljava/lang/CharSequence;

    .line 175
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v4, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    :cond_3
    move v1, v2

    .line 185
    :goto_2
    if-ge v1, v0, :cond_5

    .line 186
    const v4, 0x7f0d014a    # @layout/lb_picker_column 'res/layout/lb_picker_column.xml'

    .line 188
    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 191
    invoke-virtual {p1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 193
    move-result-object v4

    .line 196
    check-cast v4, Landroidx/leanback/widget/VerticalGridView;

    .line 197
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/picker/Picker;->updateColumnSize(Landroidx/leanback/widget/VerticalGridView;)V

    .line 199
    invoke-virtual {v4, v2}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    .line 202
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 208
    move-result v5

    .line 211
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 212
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 215
    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 218
    check-cast v5, Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 225
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 230
    add-int/lit8 v6, v1, 0x1

    .line 232
    check-cast v5, Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    move-result-object v5

    .line 239
    check-cast v5, Ljava/lang/CharSequence;

    .line 240
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 242
    move-result v5

    .line 245
    if-nez v5, :cond_4

    .line 246
    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 248
    invoke-virtual {p1, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 250
    move-result-object v5

    .line 253
    check-cast v5, Landroid/widget/TextView;

    .line 254
    iget-object v7, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 256
    check-cast v7, Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    move-result-object v7

    .line 263
    check-cast v7, Ljava/lang/CharSequence;

    .line 264
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v7, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 269
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    :cond_4
    new-instance v5, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    .line 274
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getPickerItemLayoutId()I

    .line 276
    move-result v7

    .line 279
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getPickerItemTextViewId()I

    .line 280
    move-result v8

    .line 283
    invoke-direct {v5, p0, v7, v8, v1}, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;-><init>(Landroidx/leanback/widget/picker/Picker;III)V

    .line 284
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 287
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnChangeListener:Landroidx/leanback/widget/picker/Picker$1;

    .line 290
    invoke-virtual {v4, v1}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 292
    move v1, v6

    .line 295
    goto :goto_2

    .line 296
    :cond_5
    return-void

    .line 297
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    const-string v2, "Separators size: "

    .line 302
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 307
    check-cast p0, Ljava/util/ArrayList;

    .line 309
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 311
    move-result p0

    .line 314
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string p0, " mustequal the size of columns: "

    .line 318
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 323
    move-result p0

    .line 326
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string p0, " + 1"

    .line 330
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    move-result-object p0

    .line 338
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    throw v0

    .line 342
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    const-string v1, "Separators size is: "

    .line 347
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 352
    check-cast p0, Ljava/util/ArrayList;

    .line 354
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 356
    move-result p0

    .line 359
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    const-string p0, ". At least one separator must be provided"

    .line 363
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object p0

    .line 371
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 372
    throw p1
    .line 375
.end method

.method public final setOrAnimateAlpha(ILandroid/view/View;ZZ)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Landroidx/leanback/widget/picker/Picker;->mFocusedAlpha:F

    iget-object p3, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2, p4, p1, p3}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 3
    :cond_2
    iget p1, p0, Landroidx/leanback/widget/picker/Picker;->mUnfocusedAlpha:F

    iget-object p3, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2, p4, p1, p3}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 4
    iget p1, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleColumnAlpha:F

    iget-object p3, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2, p4, p1, p3}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 5
    :cond_4
    iget-object p1, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p4, p3, p1}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFLandroid/view/animation/Interpolator;)V

    :goto_2
    return-void
.end method

.method public final setOrAnimateAlpha(Landroid/view/View;ZFLandroid/view/animation/Interpolator;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mAlphaAnimDuration:I

    int-to-long p2, p0

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final setPickerItemLayoutId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    .line 2
    return-void
    .line 4
.end method

.method public final setPickerItemTextViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    .line 2
    return-void
    .line 4
.end method

.method public setSelectedColumn(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 6
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/picker/Picker;->updateColumnAlpha(I)V

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    .line 35
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 41
    move-result p0

    .line 44
    if-nez p0, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 47
    :cond_1
    return-void
    .line 50
.end method

.method public final setSeparator(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/CharSequence;

    .line 2
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/Picker;->setSeparators(Ljava/util/List;)V

    .line 10
    return-void
    .line 13
.end method

.method public final setSeparators(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    return-void
    .line 16
.end method

.method public setVisibleItemCount(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-lez v0, :cond_1

    .line 5
    iget v0, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItems:F

    .line 7
    cmpl-float v0, v0, p1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItems:F

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 15
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->updateColumnSize()V

    .line 21
    :cond_0
    return-void

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 27
    throw p0
    .line 30
.end method

.method public final updateColumnAlpha(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 10
    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->getSelectedPosition()I

    .line 12
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 18
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 22
    move-result v4

    .line 25
    if-ge v3, v4, :cond_2

    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 28
    move-result-object v4

    .line 31
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 32
    move-result-object v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    const/4 v5, 0x1

    .line 38
    if-ne v1, v3, :cond_0

    .line 39
    move v6, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move v6, v2

    .line 43
    :goto_1
    invoke-virtual {p0, p1, v4, v6, v5}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(ILandroid/view/View;ZZ)V

    .line 44
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    return-void
    .line 50
.end method

.method public final updateColumnSize()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/Picker;->updateColumnSize(Landroidx/leanback/widget/VerticalGridView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateColumnSize(Landroidx/leanback/widget/VerticalGridView;)V
    .locals 4

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getActivatedVisibleItemCount()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getVisibleItemCount()F

    move-result v1

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getPickerItemHeightPixels()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    .line 6
    invoke-virtual {p1}, Landroidx/leanback/widget/BaseGridView;->getVerticalSpacing()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
