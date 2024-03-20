.class public Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mArrow:Landroid/widget/ImageView;

.field public final mArrowIcon:Landroid/graphics/drawable/Drawable;

.field public mDescending:Z

.field public mDescendingEnabled:Z

.field public mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

.field public mFiltered:Z

.field public mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field public final mIndicatorVisibility:I

.field public mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

.field public mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 5
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getTabLayoutResource()I

    move-result v1

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x1020014    # @android:id/text1

    .line 7
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0a00e0    # @id/arrow

    .line 8
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    const v2, 0x7f0d0200    # @layout/miuix_appcompat_filter_sort_tab_view 'res/layout/miuix_appcompat_filter_sort_tab_view.xml'

    if-ne v1, v2, :cond_3

    .line 9
    sget-object v1, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView:[I

    const v2, 0x7f1406c1    # @style/Widget.FilterSortTabView.DayNight

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x2

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v2, 0x4

    .line 12
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x3

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x11

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f081511    # @drawable/miuix_appcompat_filter_sort_tab_view_bg_normal 'res/drawable/miuix_appcompat_filter_sort_tab_view_bg_normal.xml'

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_1

    .line 21
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 22
    :cond_1
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    if-eqz v1, :cond_2

    .line 24
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotationX(F)V

    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 26
    :goto_0
    new-instance p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$$ExternalSyntheticLambda0;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 27
    :cond_3
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_4

    .line 29
    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_4
    return-void
.end method

.method public static synthetic access$1300(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/util/HapticFeedbackCompat;
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

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
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 15
    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 17
    return-object p0
    .line 19
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDescendingEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTabLayoutResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d0200    # @layout/miuix_appcompat_filter_sort_tab_view 'res/layout/miuix_appcompat_filter_sort_tab_view.xml'

    .line 2
    return p0
    .line 5
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 2
    return-object p0
    .line 4
.end method

.method public setDescendingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 2
    return-void
    .line 4
.end method

.method public final setFiltered(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 6
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    if-ge v2, v0, :cond_1

    .line 20
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 22
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v3

    .line 27
    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 28
    if-eqz v4, :cond_0

    .line 30
    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 32
    if-eq v3, p0, :cond_0

    .line 34
    iget-boolean v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 36
    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v3, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 46
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 50
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 58
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 61
    const/4 v2, 0x1

    .line 63
    iput-boolean v2, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 64
    iput-boolean v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 66
    new-instance v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;

    .line 68
    invoke-direct {v1, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
    .line 76
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 2
    return-void
    .line 4
.end method

.method public setIndicatorVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    return-void
    .line 7
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;

    .line 2
    invoke-direct {v0, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    return-void
    .line 10
.end method

.method public setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 2
    return-void
    .line 4
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 2
    return-void
    .line 4
.end method
