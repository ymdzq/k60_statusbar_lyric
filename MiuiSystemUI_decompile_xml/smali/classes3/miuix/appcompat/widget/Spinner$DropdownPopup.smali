.class public final Lmiuix/appcompat/widget/Spinner$DropdownPopup;
.super Lmiuix/internal/widget/ListPopup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$SpinnerPopup;


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mFenceView:Landroid/view/View;

.field public mHintText:Ljava/lang/CharSequence;

.field public final mMarginScreen:I

.field public final mMarginScreenVertical:I

.field public mMaxListHeight:I

.field public final mMaxListWidth:I

.field public mOriginalHorizontalOffset:I

.field public final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 2
    invoke-direct {p0, p2}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 15
    const v0, 0x7f070b7a    # @dimen/miuix_appcompat_spinner_margin_screen_horizontal '16.0dp'

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p1

    .line 28
    const v0, 0x7f070b7c    # @dimen/miuix_appcompat_spinner_max_width '288.0dp'

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result p1

    .line 35
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListWidth:I

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p1

    .line 41
    const p2, 0x7f070b7b    # @dimen/miuix_appcompat_spinner_margin_screen_vertical '40.0dp'

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result p1

    .line 48
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreenVertical:I

    .line 49
    const p1, 0x800033

    .line 51
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    .line 54
    new-instance p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;

    .line 56
    invoke-direct {p1, p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)V

    .line 58
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 61
    return-void
    .line 63
.end method


# virtual methods
.method public final getHintText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isNeedScroll()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 16
    move-result-object v2

    .line 19
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    .line 20
    move-result v2

    .line 23
    sub-int/2addr v2, v1

    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    return v1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    move v2, v0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    .line 31
    move-result v4

    .line 34
    if-gt v2, v4, :cond_2

    .line 35
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    move-result v4

    .line 44
    add-int/2addr v3, v4

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    .line 49
    move-result p0

    .line 52
    if-ge p0, v3, :cond_3

    .line 53
    return v1

    .line 55
    :cond_3
    return v0
    .line 56
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 5
    return-void
    .line 7
.end method

.method public final setContentWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 2
    iget v0, v0, Lmiuix/appcompat/widget/Spinner;->mDropDownMaxWidth:I

    .line 4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 6
    move-result p1

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 10
    iget v0, v0, Lmiuix/appcompat/widget/Spinner;->mDropDownMinWidth:I

    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result p1

    .line 17
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 18
    iput p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    .line 20
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 23
    return-void
    .line 25
.end method

.method public final setHorizontalOriginalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    .line 2
    return-void
    .line 4
.end method

.method public final setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 2
    return-void
    .line 4
.end method

.method public final show(II)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    iget-object v4, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v4, v4, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 7
    iget-object v2, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v2, v2, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v2, v2, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v2, v2, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move v2, v3

    .line 10
    :goto_1
    iget-object v4, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v4

    .line 11
    iget-object v5, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v5

    .line 12
    iget-object v6, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getWidth()I

    move-result v6

    .line 13
    iget-object v7, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget v8, v7, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    const/4 v10, -0x2

    if-ne v8, v10, :cond_9

    .line 14
    iget-object v8, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v8, Landroid/widget/SpinnerAdapter;

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v8, :cond_3

    move v12, v3

    goto/16 :goto_5

    .line 16
    :cond_3
    invoke-virtual {v7}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v14

    .line 17
    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 18
    invoke-virtual {v7}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v15

    invoke-static {v15, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 19
    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 20
    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v12, v11, 0xf

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v12, v9, v11

    rsub-int/lit8 v12, v12, 0xf

    sub-int/2addr v11, v12

    .line 21
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v12, v3

    const/16 v17, 0x0

    :goto_2
    if-ge v11, v9, :cond_6

    .line 22
    invoke-interface {v8, v11}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v10

    if-eq v10, v3, :cond_4

    move v3, v10

    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v10, v17

    .line 23
    :goto_3
    invoke-interface {v8, v11, v10, v7}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 24
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    if-nez v17, :cond_5

    move/from16 v17, v3

    .line 25
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v19, v8

    const/4 v8, -0x2

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_5
    move/from16 v17, v3

    move-object/from16 v19, v8

    const/4 v8, -0x2

    .line 26
    :goto_4
    invoke-virtual {v10, v14, v15}, Landroid/view/View;->measure(II)V

    .line 27
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v17

    move-object/from16 v17, v10

    move v10, v8

    move-object/from16 v8, v19

    goto :goto_2

    :cond_6
    if-eqz v13, :cond_7

    .line 28
    iget-object v3, v7, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 29
    iget-object v3, v7, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v3

    add-int/2addr v12, v7

    .line 30
    :cond_7
    :goto_5
    iget-object v3, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v7, v7, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v8

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v7

    iget v7, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    sub-int/2addr v3, v7

    if-le v12, v3, :cond_8

    move v12, v3

    :cond_8
    sub-int v3, v6, v4

    sub-int/2addr v3, v5

    sub-int/2addr v3, v7

    .line 32
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_6

    :cond_9
    const/4 v3, -0x1

    if-ne v8, v3, :cond_a

    sub-int v3, v6, v4

    sub-int/2addr v3, v5

    .line 33
    iget v7, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_6

    .line 34
    :cond_a
    invoke-virtual {v0, v8}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 35
    :goto_6
    iget-object v3, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-static {v3}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    sub-int/2addr v6, v5

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v6, v3

    .line 37
    iget v3, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    sub-int/2addr v6, v3

    add-int/2addr v6, v2

    goto :goto_7

    .line 38
    :cond_b
    iget v3, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    add-int/2addr v4, v3

    add-int v6, v4, v2

    .line 39
    :goto_7
    invoke-virtual {v0, v6}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    const/4 v2, 0x2

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 41
    iget-object v3, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, v3}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2a

    .line 42
    iget-object v3, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    new-array v5, v2, [I

    .line 43
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v6, v5, v2

    aget v7, v5, v4

    .line 44
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v8, v5, v2

    aget v9, v5, v4

    .line 45
    iget-object v10, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    if-nez v10, :cond_c

    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 47
    :cond_c
    invoke-virtual {v10, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v11, v5, v2

    aget v2, v5, v4

    .line 48
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 49
    iget-object v12, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v5}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 50
    iget v12, v5, Landroid/graphics/Point;->x:I

    .line 51
    iget v13, v5, Landroid/graphics/Point;->y:I

    .line 52
    iget-object v14, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v5}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 53
    iget v14, v5, Landroid/graphics/Point;->x:I

    .line 54
    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ne v12, v14, :cond_d

    if-eq v13, v5, :cond_14

    :cond_d
    if-ne v6, v8, :cond_e

    goto :goto_9

    :cond_e
    sub-int v15, v6, v8

    sub-int v4, v12, v14

    if-ne v15, v4, :cond_f

    goto :goto_8

    :cond_f
    if-le v15, v4, :cond_10

    :goto_8
    const/4 v4, 0x1

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_11

    sub-int/2addr v12, v14

    sub-int/2addr v6, v12

    .line 55
    :cond_11
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ne v9, v7, :cond_12

    goto :goto_b

    :cond_12
    sub-int v12, v7, v9

    add-int/2addr v12, v4

    mul-int/lit8 v4, v13, 0x3

    .line 56
    div-int/lit8 v4, v4, 0x4

    if-le v12, v4, :cond_13

    const/4 v4, 0x1

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_14

    sub-int/2addr v13, v5

    sub-int/2addr v7, v13

    .line 57
    :cond_14
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v13

    .line 59
    iget v15, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListWidth:I

    if-le v13, v15, :cond_15

    .line 60
    invoke-virtual {v0, v15}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 61
    iget v13, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListWidth:I

    :cond_15
    add-int v15, v8, v4

    add-int/2addr v12, v11

    move/from16 v18, v8

    add-int v8, v6, v4

    add-int v19, v6, v13

    move/from16 v20, v1

    .line 62
    iget v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    move/from16 v21, v5

    add-int v5, v19, v1

    if-gt v5, v14, :cond_16

    const/4 v5, 0x1

    goto :goto_d

    :cond_16
    const/4 v5, 0x0

    :goto_d
    sub-int v19, v8, v13

    sub-int v19, v19, v1

    if-ltz v19, :cond_17

    const/16 v19, 0x1

    goto :goto_e

    :cond_17
    const/16 v19, 0x0

    :goto_e
    if-eqz v5, :cond_19

    if-ge v6, v1, :cond_18

    goto :goto_f

    :cond_18
    move/from16 v8, v18

    goto :goto_11

    :cond_19
    if-eqz v19, :cond_1b

    sub-int/2addr v14, v1

    if-le v8, v14, :cond_1a

    goto :goto_10

    :cond_1a
    sub-int v8, v15, v13

    goto :goto_11

    :cond_1b
    sub-int v5, v14, v8

    sub-int/2addr v14, v4

    const/4 v4, 0x2

    .line 63
    div-int/2addr v14, v4

    if-lt v5, v14, :cond_1c

    :goto_f
    add-int v8, v1, v11

    goto :goto_11

    :cond_1c
    :goto_10
    sub-int/2addr v12, v1

    sub-int v8, v12, v13

    .line 64
    :goto_11
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 65
    iget-object v5, v0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    const/high16 v10, -0x80000000

    if-eqz v5, :cond_1f

    .line 67
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 68
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    const/16 v13, 0x8

    if-ge v12, v13, :cond_1d

    move v13, v12

    :cond_1d
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_12
    move-object/from16 v16, v3

    if-ge v14, v12, :cond_20

    move/from16 v18, v12

    const/4 v12, 0x0

    .line 69
    invoke-interface {v11, v14, v12, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 70
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move-object/from16 v22, v5

    const/4 v10, 0x0

    .line 71
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 72
    invoke-virtual {v3, v12, v5}, Landroid/view/View;->measure(II)V

    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v15, v3

    const/4 v3, -0x1

    add-int/lit8 v5, v13, -0x1

    if-ne v14, v5, :cond_1e

    .line 74
    iput v15, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListHeight:I

    :cond_1e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    move/from16 v12, v18

    move-object/from16 v5, v22

    const/high16 v10, -0x80000000

    goto :goto_12

    :cond_1f
    move-object/from16 v16, v3

    .line 75
    iget-object v3, v0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    const/high16 v5, -0x80000000

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v6, 0x0

    .line 76
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 77
    invoke-virtual {v3, v5, v10}, Landroid/view/View;->measure(II)V

    .line 78
    iget-object v3, v0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v15, v3, 0x0

    .line 79
    iput v15, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListHeight:I

    .line 80
    :cond_20
    iget v3, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListHeight:I

    if-le v15, v3, :cond_21

    move v15, v3

    .line 81
    :cond_21
    invoke-virtual {v0, v15}, Landroid/widget/PopupWindow;->setHeight(I)V

    add-int/2addr v4, v2

    add-int v3, v9, v1

    add-int/2addr v1, v7

    add-int v5, v1, v15

    .line 82
    iget v6, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreenVertical:I

    sub-int v10, v21, v6

    if-ge v5, v10, :cond_22

    int-to-float v3, v3

    if-ge v1, v6, :cond_28

    add-int/2addr v2, v6

    int-to-float v3, v2

    goto :goto_14

    :cond_22
    sub-int v5, v7, v15

    if-le v5, v6, :cond_24

    sub-int/2addr v9, v15

    int-to-float v1, v9

    if-le v7, v10, :cond_23

    sub-int/2addr v4, v6

    sub-int/2addr v4, v15

    int-to-float v3, v4

    goto :goto_14

    :cond_23
    :goto_13
    move v3, v1

    goto :goto_14

    :cond_24
    if-ge v1, v6, :cond_25

    add-int/2addr v2, v6

    int-to-float v1, v2

    const/4 v2, 0x2

    mul-int/2addr v6, v2

    sub-int v5, v21, v6

    int-to-float v2, v5

    float-to-int v2, v2

    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_13

    :cond_25
    const/4 v2, 0x2

    if-le v7, v10, :cond_26

    sub-int/2addr v4, v6

    sub-int/2addr v4, v15

    int-to-float v1, v4

    mul-int/2addr v6, v2

    sub-int v5, v21, v6

    int-to-float v2, v5

    float-to-int v2, v2

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_13

    .line 85
    :cond_26
    div-int/lit8 v5, v21, 0x2

    if-ge v7, v5, :cond_27

    int-to-float v3, v3

    sub-int/2addr v10, v1

    int-to-float v1, v10

    float-to-int v1, v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_14

    :cond_27
    sub-int/2addr v7, v6

    int-to-float v1, v7

    float-to-int v2, v1

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    int-to-float v2, v9

    sub-float v3, v2, v1

    .line 88
    :cond_28
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_29

    float-to-int v1, v3

    move-object/from16 v2, v16

    const/4 v3, 0x0

    .line 89
    invoke-virtual {v0, v2, v3, v8, v1}, Lmiuix/internal/widget/ListPopup;->showAtLocation(Landroid/view/View;III)V

    .line 90
    iget-object v1, v0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    goto :goto_15

    :cond_29
    float-to-int v1, v3

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_15

    :cond_2a
    move/from16 v20, v1

    .line 92
    :goto_15
    iget-object v1, v0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    move/from16 v3, p1

    .line 94
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setTextDirection(I)V

    move/from16 v3, p2

    .line 95
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 96
    iget-object v3, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 97
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 98
    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    if-eqz v20, :cond_2b

    return-void

    .line 99
    :cond_2b
    new-instance v1, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;

    invoke-direct {v1, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)V

    .line 100
    iput-object v1, v0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method
