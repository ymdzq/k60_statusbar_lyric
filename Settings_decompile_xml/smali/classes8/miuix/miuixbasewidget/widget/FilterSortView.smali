.class public Lmiuix/miuixbasewidget/widget/FilterSortView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    }
.end annotation


# instance fields
.field private mAnimExecuted:Z

.field private mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field private mEnabled:Z

.field private mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

.field private mFilteredId:I

.field private mFilteredUpdated:Z

.field private mHoverBgView:Landroid/view/View;

.field private mNeedAnim:Z

.field private mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

.field private final mPadding:I

.field private mTabCount:I

.field private mTabViewChildIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5LQJAMuyaG1O_5mPkbbInj-DPVQ(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->lambda$updateFiltered$0(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 57
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 58
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 60
    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 387
    new-instance v2, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 402
    new-instance v2, Lmiuix/miuixbasewidget/widget/FilterSortView$2;

    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$2;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 72
    sget-object v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView:[I

    sget v3, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortView_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView_filterSortViewBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 75
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView_filterSortTabViewCoverBg:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 76
    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView_android_enabled:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 80
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->initHoverBgView()V

    .line 82
    invoke-direct {p0, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->initCoverBg(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .locals 0

    .line 45
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/miuixbasewidget/widget/FilterSortView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    return p0
.end method

.method static synthetic access$402(Lmiuix/miuixbasewidget/widget/FilterSortView;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    return p1
.end method

.method static synthetic access$500(Lmiuix/miuixbasewidget/widget/FilterSortView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    return p0
.end method

.method static synthetic access$502(Lmiuix/miuixbasewidget/widget/FilterSortView;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    return p1
.end method

.method static synthetic access$600(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/miuixbasewidget/widget/FilterSortView;)I
    .locals 0

    .line 45
    iget p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    return p0
.end method

.method private inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lmiuix/miuixbasewidget/R$layout;->layout_filter_tab_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    return-object p0
.end method

.method private initCoverBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    .line 110
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initHoverBgView()V
    .locals 4

    .line 87
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 88
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 91
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    sget v1, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_filter_sort_hover_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 93
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 95
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 96
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 97
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 98
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 99
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 100
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private synthetic lambda$updateFiltered$0(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 0

    .line 358
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshTabState()V
    .locals 3

    const/4 v0, 0x0

    .line 316
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 317
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 318
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v2, :cond_0

    .line 319
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 320
    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateFiltered(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 353
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 354
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 355
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 356
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 358
    new-instance p1, Lmiuix/miuixbasewidget/widget/FilterSortView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$$ExternalSyntheticLambda0;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .locals 1

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object p0

    return-object p0
.end method

.method public addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .locals 3

    .line 156
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V

    .line 158
    iget-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    .line 159
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V

    const/4 v1, 0x0

    .line 160
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 161
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    .line 165
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 167
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 168
    invoke-virtual {p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateTabViews(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 169
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 171
    invoke-virtual {v0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public checkBackgroundTabViewAdded()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 340
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 341
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 383
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 384
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 327
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 328
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    if-nez p2, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz p1, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateFiltered(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    .line 332
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 308
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 309
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 310
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 311
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->refreshTabState()V

    :cond_0
    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .locals 4

    .line 200
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 201
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 202
    iput-boolean v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 203
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    goto :goto_1

    .line 204
    :cond_1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    if-eqz v0, :cond_2

    .line 205
    iput-boolean v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 207
    :cond_2
    :goto_1
    invoke-static {p1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 208
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateChildIdsFromXml()V

    return-void
.end method

.method protected setNeedAnim(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    return-void
.end method

.method public setTabIncatorVisibility(I)V
    .locals 3

    const/4 v0, 0x0

    .line 185
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 186
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 187
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v2, :cond_0

    .line 188
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 189
    invoke-virtual {v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setIndicatorVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateChildIdsFromXml()V
    .locals 5

    .line 286
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 287
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 289
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 290
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v3, :cond_0

    .line 291
    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 292
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 293
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    invoke-virtual {v2, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V

    .line 294
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-virtual {v2, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 300
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 301
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateTabViews(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 302
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_2
    return-void
.end method

.method protected updateTabViews(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 362
    :goto_0
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 363
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 364
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/4 v3, -0x2

    .line 365
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 366
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalWeight(IF)V

    if-nez v1, :cond_0

    move v6, v0

    goto :goto_1

    .line 368
    :cond_0
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v6, v3

    .line 369
    :goto_1
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    move v9, v0

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v9, v3

    .line 370
    :goto_2
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->centerVertically(II)V

    const/4 v5, 0x6

    const/4 v10, 0x6

    const/4 v11, 0x7

    if-nez v6, :cond_2

    move v7, v10

    goto :goto_3

    :cond_2
    move v7, v11

    :goto_3
    if-nez v6, :cond_3

    .line 372
    iget v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    move v8, v3

    goto :goto_4

    :cond_3
    move v8, v0

    :goto_4
    move-object v3, p1

    move v4, v2

    .line 371
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x7

    if-nez v9, :cond_4

    move v7, v11

    goto :goto_5

    :cond_4
    move v7, v10

    :goto_5
    if-nez v9, :cond_5

    .line 374
    iget v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    move v8, v3

    goto :goto_6

    :cond_5
    move v8, v0

    :goto_6
    move-object v3, p1

    move v4, v2

    move v6, v9

    .line 373
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x3

    .line 376
    iget v8, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x4

    const/4 v7, 0x4

    .line 377
    iget v8, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
