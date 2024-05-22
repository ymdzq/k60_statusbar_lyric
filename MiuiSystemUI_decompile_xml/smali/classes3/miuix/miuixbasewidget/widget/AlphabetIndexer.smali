.class public Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCancelOverlayTextColorAnim:Z

.field public final mEnableAutoDismiss:Z

.field public mFirstOmitItem:Landroid/widget/ImageView;

.field public mGroupCount:I

.field public mGroupItemCount:I

.field public final mHandler:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;

.field public mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field public mIndexer:Landroid/widget/SectionIndexer;

.field public mItemHeight:I

.field public mItemMargin:I

.field public mLastSelectedItem:Landroid/view/View;

.field public mLeftCount:I

.field public mMaxItemMargin:I

.field public mMinItemMargin:I

.field public mOmitItemHeight:I

.field public mOverlayBackground:Landroid/graphics/drawable/Drawable;

.field public mOverlayHeight:I

.field public final mParentLayoutChangeListener:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;

.field public mParentView:Landroid/view/View;

.field public mScreenHeightDp:I

.field public mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

.field public mUsageAlarmVibrationAttributes:Landroid/os/VibrationAttributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04050e    # @attr/miuixAppcompatAlphabetIndexerStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLeftCount:I

    .line 6
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentView:Landroid/view/View;

    .line 9
    new-instance v1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;

    invoke-direct {v1, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentLayoutChangeListener:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;

    .line 10
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mEnableAutoDismiss:Z

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mScreenHeightDp:I

    .line 12
    new-instance v1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;

    invoke-direct {v1, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer:[I

    const v4, 0x7f14062c    # @style/Widget.AlphabetIndexer.Starred.DayNight

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 15
    new-instance p3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object p3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 16
    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f070a26    # @dimen/miuix_appcompat_alphabet_indexer_overlay_text_size '29.0dp'

    .line 17
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/16 v2, 0x8

    .line 18
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    const p3, 0x7f060428    # @color/miuix_appcompat_alphabet_indexer_overlay_text_color '@color/miuix_color_blue_light_primary_default'

    .line 19
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    const/4 v2, 0x7

    .line 20
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    const p3, 0x7f14087b    # @style/Widget.TextAppearance.AlphabetIndexer.Overlay

    .line 21
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    const/4 p3, 0x6

    .line 22
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f070a1e    # @dimen/miuix_appcompat_alphabet_indexer_item_height '12.0dp'

    .line 23
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    const p3, 0x7f070a23    # @dimen/miuix_appcompat_alphabet_indexer_omit_item_height '4.0dp'

    .line 24
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOmitItemHeight:I

    const p3, 0x7f070a1f    # @dimen/miuix_appcompat_alphabet_indexer_item_margin '3.0dp'

    .line 25
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 26
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    const p3, 0x7f070a21    # @dimen/miuix_appcompat_alphabet_indexer_min_item_margin '2.0dp'

    .line 27
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMinItemMargin:I

    const p3, 0x7f070a2b    # @dimen/miuix_appcompat_alphabet_overlay_width '82.0dp'

    .line 28
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const p3, 0x7f070a2a    # @dimen/miuix_appcompat_alphabet_overlay_height '62.0dp'

    .line 29
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    const p3, 0x7f070a22    # @dimen/miuix_appcompat_alphabet_indexer_min_width '22.0dp'

    .line 30
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 31
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 35
    new-instance p3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;

    invoke-direct {p3, p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    filled-new-array {p3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 36
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 37
    new-instance p3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;

    invoke-direct {p3, p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    filled-new-array {p3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 38
    iget p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    invoke-virtual {p0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructItem(I)V

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mScreenHeightDp:I

    return-void
.end method

.method public static access$000(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 3
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v3, v3

    iget v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    iget v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMinItemMargin:I

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    mul-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    .line 4
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    move-result v3

    const/4 v5, 0x1

    if-gtz v3, :cond_0

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    move-result v3

    iget v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    div-int/2addr v7, v6

    add-int/2addr v7, v3

    add-int/2addr v7, v5

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    move-result v7

    .line 5
    :goto_0
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    move-result v3

    if-gtz v3, :cond_1

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    move-result v3

    iget v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    div-int/2addr v8, v6

    add-int/2addr v8, v3

    add-int/2addr v8, v5

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    move-result v8

    :goto_1
    add-int/2addr v4, v7

    add-int/2addr v4, v8

    if-gt v4, p1, :cond_5

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr p1, v3

    sub-int/2addr p1, v7

    sub-int/2addr p1, v8

    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v3, v3

    div-int/2addr p1, v3

    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v6

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v4, v4, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 8
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    if-eq v3, v4, :cond_2

    .line 9
    iget v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    goto/16 :goto_8

    :cond_2
    if-nez v2, :cond_3

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 17
    iget p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 18
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 19
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 20
    :cond_3
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    if-eq v2, p1, :cond_14

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    iget p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 23
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 24
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 25
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 26
    :cond_4
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->resetViews()V

    .line 27
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructItem(I)V

    goto/16 :goto_8

    .line 28
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 29
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->resetViews()V

    .line 30
    :cond_6
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    move-result v1

    if-gtz v1, :cond_7

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    move-result v1

    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    div-int/2addr v2, v6

    add-int/2addr v2, v1

    add-int/2addr v2, v5

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    move-result v2

    .line 31
    :goto_2
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    move-result v1

    if-gtz v1, :cond_8

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    move-result v1

    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    div-int/2addr v3, v6

    add-int/2addr v3, v1

    add-int/2addr v3, v5

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginBottom()I

    move-result v3

    .line 32
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    add-int v4, v1, v2

    add-int/2addr v4, v3

    if-lt v4, p1, :cond_9

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 33
    :cond_9
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length p1, p1

    .line 34
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMinItemMargin:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    .line 35
    iget v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOmitItemHeight:I

    add-int/2addr v7, v2

    add-int/2addr v7, v4

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    .line 36
    div-int v2, v1, v7

    iput v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    if-ge v2, v5, :cond_a

    .line 37
    iput v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 38
    :cond_a
    rem-int/2addr v1, v7

    add-int/lit8 v2, p1, -0x3

    .line 39
    iget v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    div-int v8, v2, v4

    iput v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    if-ge v8, v6, :cond_b

    .line 40
    iput v6, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 41
    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v4, v8

    mul-int/2addr v4, v7

    add-int/2addr v1, v4

    .line 42
    iput v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 43
    :cond_b
    iget v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    iget v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    mul-int/2addr v4, v7

    sub-int/2addr v2, v4

    iput v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLeftCount:I

    .line 44
    iput v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    if-lez v1, :cond_c

    .line 45
    div-int/2addr v1, v6

    mul-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x3

    div-int/2addr v1, v7

    add-int/2addr v1, v3

    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 46
    :cond_c
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const-string v3, "mipro-medium"

    .line 50
    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    move v4, v0

    :goto_4
    if-ge v4, p1, :cond_13

    .line 51
    iget v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    add-int/lit8 v8, v7, 0x1

    .line 52
    iget v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLeftCount:I

    mul-int/2addr v9, v8

    if-ge v4, v9, :cond_d

    move v7, v8

    move v8, v4

    goto :goto_5

    :cond_d
    sub-int v8, v4, v9

    :goto_5
    if-le v4, v5, :cond_10

    add-int/lit8 v9, p1, -0x2

    if-ge v4, v9, :cond_10

    sub-int/2addr v8, v5

    .line 53
    rem-int/2addr v8, v7

    if-nez v8, :cond_e

    goto :goto_6

    :cond_e
    if-ne v8, v5, :cond_12

    .line 54
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mFirstOmitItem:Landroid/widget/ImageView;

    if-nez v8, :cond_f

    .line 56
    iput-object v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mFirstOmitItem:Landroid/widget/ImageView;

    .line 57
    :cond_f
    iget v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOmitItemHeight:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 58
    iget v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOmitItemHeight:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setMaxWidth(I)V

    const v8, 0x7f0815dc    # @drawable/miuix_ic_omit 'res/drawable/miuix_ic_omit.xml'

    .line 59
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 61
    invoke-virtual {p0, v7, v2, v1}, Landroid/widget/LinearLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 62
    :cond_10
    :goto_6
    iget-object v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v7, v7, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    aget-object v7, v7, v4

    .line 63
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v9, 0x11

    .line 65
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHeight(I)V

    .line 67
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 68
    iget-object v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget v9, v9, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget v9, v9, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexerTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v0, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v9, "!"

    .line 70
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v7, "\u2665"

    :cond_11
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 72
    invoke-virtual {p0, v8, v2, v1}, Landroid/widget/LinearLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 73
    :cond_13
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    :cond_14
    :goto_8
    return-void
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 15
    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 17
    return-object p0
    .line 19
.end method

.method private getListOffset()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method private getMarginBottom()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8
    return p0
    .line 10
.end method

.method private getMarginTop()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    return p0
    .line 10
.end method

.method private getMarinEnd()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexer:Landroid/widget/SectionIndexer;

    .line 2
    return-object p0
    .line 4
.end method

.method private getUsageAlarmVibrationAttributes()Landroid/os/VibrationAttributes;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUsageAlarmVibrationAttributes:Landroid/os/VibrationAttributes;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    .line 6
    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 8
    const/16 v1, 0x11

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUsageAlarmVibrationAttributes:Landroid/os/VibrationAttributes;

    .line 21
    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mUsageAlarmVibrationAttributes:Landroid/os/VibrationAttributes;

    .line 23
    return-object p0
    .line 25
.end method


# virtual methods
.method public final constructItem(I)V
    .locals 9

    .line 1
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    const/4 v1, -0x2

    .line 6
    const/4 v2, -0x1

    .line 7
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    const/4 v1, 0x1

    .line 11
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 12
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 14
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 16
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 20
    const-string p1, "mipro-medium"

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 25
    move-result-object p1

    .line 28
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 29
    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 31
    array-length v4, v3

    .line 33
    move v5, v1

    .line 34
    :goto_0
    if-ge v5, v4, :cond_1

    .line 35
    aget-object v6, v3, v5

    .line 37
    new-instance v7, Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v8

    .line 44
    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    const/16 v8, 0x11

    .line 51
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 56
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 58
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 61
    iget-object v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 64
    iget v8, v8, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    .line 66
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v8, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 71
    iget v8, v8, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexerTextSize:I

    .line 73
    int-to-float v8, v8

    .line 75
    invoke-virtual {v7, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    const-string v8, "!"

    .line 79
    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 81
    move-result v8

    .line 84
    if-eqz v8, :cond_0

    .line 85
    const-string v6, "\u2665"

    .line 87
    :cond_0
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v6, 0x2

    .line 92
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 93
    invoke-virtual {p0, v7, v2, v0}, Landroid/widget/LinearLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 99
    goto :goto_0

    .line 101
    :cond_1
    return-void
    .line 102
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final getChildIndex(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 2
    iget-object v0, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 4
    array-length v0, v0

    .line 6
    add-int/lit8 v1, v0, -0x1

    .line 7
    if-le p1, v1, :cond_0

    .line 9
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, p1

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 14
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eq v3, v0, :cond_7

    .line 19
    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 21
    const/4 v5, 0x1

    .line 23
    if-le v3, v5, :cond_7

    .line 24
    if-le p1, v5, :cond_7

    .line 26
    add-int/lit8 v0, v0, -0x2

    .line 28
    if-lt p1, v0, :cond_2

    .line 30
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 32
    mul-int/lit8 p1, p1, 0x2

    .line 34
    add-int/2addr p1, v5

    .line 36
    if-ne v2, v1, :cond_1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    move v5, v4

    .line 40
    :goto_1
    add-int v2, p1, v5

    .line 41
    goto :goto_3

    .line 43
    :cond_2
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLeftCount:I

    .line 44
    if-lez v0, :cond_5

    .line 46
    add-int/lit8 v1, v3, 0x1

    .line 48
    mul-int/2addr v1, v0

    .line 50
    if-ge p1, v1, :cond_3

    .line 51
    add-int/2addr v3, v5

    .line 53
    sub-int/2addr p1, v5

    .line 54
    div-int v0, p1, v3

    .line 55
    rem-int/2addr p1, v3

    .line 57
    mul-int/lit8 v0, v0, 0x2

    .line 58
    add-int/2addr v0, v5

    .line 60
    if-nez p1, :cond_6

    .line 61
    goto :goto_2

    .line 63
    :cond_3
    sub-int v1, p1, v0

    .line 64
    sub-int/2addr v1, v5

    .line 66
    div-int/2addr v1, v3

    .line 67
    sub-int/2addr p1, v0

    .line 68
    sub-int/2addr p1, v5

    .line 69
    rem-int/2addr p1, v3

    .line 70
    mul-int/lit8 v1, v1, 0x2

    .line 71
    add-int/2addr v1, v5

    .line 73
    if-nez p1, :cond_4

    .line 74
    move v5, v4

    .line 76
    :cond_4
    add-int v2, v1, v5

    .line 77
    goto :goto_3

    .line 79
    :cond_5
    sub-int/2addr p1, v5

    .line 80
    div-int v0, p1, v3

    .line 81
    rem-int/2addr p1, v3

    .line 83
    mul-int/lit8 v0, v0, 0x2

    .line 84
    add-int/2addr v0, v5

    .line 86
    if-nez p1, :cond_6

    .line 87
    :goto_2
    move v5, v4

    .line 89
    :cond_6
    add-int v2, v0, v5

    .line 90
    :cond_7
    :goto_3
    if-gez v2, :cond_8

    .line 92
    goto :goto_4

    .line 94
    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 95
    move-result p1

    .line 98
    if-lt v2, p1, :cond_9

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 101
    move-result p0

    .line 104
    add-int/lit8 v4, p0, -0x1

    .line 105
    goto :goto_4

    .line 107
    :cond_9
    move v4, v2

    .line 108
    :goto_4
    return v4
    .line 109
.end method

.method public getIndexerIntrinsicWidth()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentView:Landroid/view/View;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentLayoutChangeListener:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 5
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mScreenHeightDp:I

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mScreenHeightDp:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 16
    const v0, 0x7f070a1f    # @dimen/miuix_appcompat_alphabet_indexer_item_margin '3.0dp'

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 20
    move-result p1

    .line 23
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 29
    const v0, 0x7f070a27    # @dimen/miuix_appcompat_alphabet_indexer_padding_vertical '12.0dp'

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 33
    move-result p1

    .line 36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 37
    move-result v0

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 41
    move-result v1

    .line 44
    invoke-virtual {p0, v0, p1, v1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 45
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->resetViews()V

    .line 48
    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mMaxItemMargin:I

    .line 51
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructItem(I)V

    .line 53
    :cond_0
    return-void
    .line 56
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentView:Landroid/view/View;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentLayoutChangeListener:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mParentView:Landroid/view/View;

    .line 15
    :cond_0
    return-void
    .line 17
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 8
    return-void
    .line 11
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop()V

    .line 2
    const/4 p0, 0x0

    .line 5
    return p0
    .line 6
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 13
    const/4 p0, 0x0

    .line 16
    return p0
    .line 17
.end method

.method public final resetViews()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupCount:I

    .line 3
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mGroupItemCount:I

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastSelectedItem:Landroid/view/View;

    .line 8
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mFirstOmitItem:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 12
    return-void
    .line 15
.end method

.method public setSectionIndexer(Landroid/widget/SectionIndexer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexer:Landroid/widget/SectionIndexer;

    .line 2
    return-void
    .line 4
.end method

.method public setVerticalPosition(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop()V

    .line 7
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildIndex(I)I

    .line 11
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 18
    instance-of v0, p1, Landroid/widget/TextView;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Landroid/widget/TextView;

    .line 23
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 25
    iget p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    .line 27
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    instance-of p0, p1, Landroid/widget/ImageView;

    .line 33
    if-eqz p0, :cond_1

    .line 35
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    const p0, 0x7f0815dc    # @drawable/miuix_ic_omit 'res/drawable/miuix_ic_omit.xml'

    .line 39
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    :cond_1
    :goto_0
    return-void
    .line 45
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 10
    move-result-object v0

    .line 13
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18
    return-void
    .line 21
.end method
