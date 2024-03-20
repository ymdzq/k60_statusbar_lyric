.class public final Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mHintText:Ljava/lang/CharSequence;

.field public mOriginalHorizontalOffset:I

.field public final mVisibleRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, p3, p4, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 15
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 18
    iget-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 20
    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 22
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;

    .line 25
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V

    .line 27
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 30
    return-void
    .line 32
.end method


# virtual methods
.method public final computeContentWidth()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-object v2, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    invoke-static {v1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 21
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 26
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 28
    neg-int v0, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 32
    const/4 v2, 0x0

    .line 34
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 35
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 37
    move v0, v2

    .line 39
    :goto_0
    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingLeft()I

    .line 40
    move-result v2

    .line 43
    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingRight()I

    .line 44
    move-result v3

    .line 47
    invoke-virtual {v1}, Landroid/widget/Spinner;->getWidth()I

    .line 48
    move-result v4

    .line 51
    iget v5, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 52
    const/4 v6, -0x2

    .line 54
    if-ne v5, v6, :cond_3

    .line 55
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 57
    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 61
    move-result-object v6

    .line 64
    invoke-virtual {v1, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    .line 65
    move-result v5

    .line 68
    invoke-virtual {v1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 77
    move-result-object v6

    .line 80
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 81
    iget-object v7, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 83
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 85
    sub-int/2addr v6, v8

    .line 87
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 88
    sub-int/2addr v6, v7

    .line 90
    if-le v5, v6, :cond_2

    .line 91
    move v5, v6

    .line 93
    :cond_2
    sub-int v6, v4, v2

    .line 94
    sub-int/2addr v6, v3

    .line 96
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 97
    move-result v5

    .line 100
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 101
    goto :goto_1

    .line 104
    :cond_3
    const/4 v6, -0x1

    .line 105
    if-ne v5, v6, :cond_4

    .line 106
    sub-int v5, v4, v2

    .line 108
    sub-int/2addr v5, v3

    .line 110
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 111
    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 115
    :goto_1
    invoke-static {v1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 118
    move-result v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    sub-int/2addr v4, v3

    .line 124
    iget v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 125
    sub-int/2addr v4, v1

    .line 127
    iget v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mOriginalHorizontalOffset:I

    .line 128
    sub-int/2addr v4, v1

    .line 130
    add-int/2addr v4, v0

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    iget v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mOriginalHorizontalOffset:I

    .line 133
    add-int/2addr v2, v1

    .line 135
    add-int v4, v2, v0

    .line 136
    :goto_2
    iput v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 138
    return-void
    .line 140
.end method

.method public final getHintText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 5
    return-void
    .line 7
.end method

.method public final setHorizontalOriginalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mOriginalHorizontalOffset:I

    .line 2
    return-void
    .line 4
.end method

.method public final setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 2
    return-void
    .line 4
.end method

.method public final show(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 6
    const/4 v1, 0x2

    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 18
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 21
    invoke-virtual {v1, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 24
    invoke-virtual {v1, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 27
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 30
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    .line 32
    move-result p2

    .line 35
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 36
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    .line 38
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    if-eqz v1, :cond_0

    .line 44
    const/4 v4, 0x0

    .line 46
    iput-boolean v4, v1, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    .line 47
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 49
    invoke-virtual {v1}, Landroid/widget/ListView;->getChoiceMode()I

    .line 52
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v1, p2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 58
    :cond_0
    if-eqz v0, :cond_1

    .line 61
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 64
    move-result-object p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$2;

    .line 70
    invoke-direct {p2, v3, p0}, Landroidx/appcompat/widget/AppCompatSpinner$2;-><init>(ILjava/lang/Object;)V

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 75
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;

    .line 78
    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Landroidx/appcompat/widget/AppCompatSpinner$2;)V

    .line 80
    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 83
    :cond_2
    return-void
    .line 86
.end method
