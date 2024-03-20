.class public Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public final mIsMatchParentHeight:Z

.field public final mToolbarTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mIsMatchParentHeight:Z

    if-eqz p2, :cond_0

    .line 5
    sget-object v0, Lcom/android/settingslib/widget/R$styleable;->CollapsingCoordinatorLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mToolbarTitle:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mIsMatchParentHeight:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d006b    # @layout/collapsing_toolbar_content_layout 'res/layout/collapsing_toolbar_content_layout.xml'

    invoke-static {p1, p2, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a020c    # @id/collapsing_toolbar

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const p1, 0x7f0a00c6    # @id/app_bar

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 12
    iget-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p1, :cond_1

    const p2, 0x3f8ccccd    # 1.1f

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setLineSpacingMultiplier(F)V

    .line 14
    iget-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setHyphenationFrequency(I)V

    .line 15
    iget-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    new-instance p2, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStaticLayoutBuilderConfigurer(Lcom/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer;)V

    .line 16
    iget-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mToolbarTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mToolbarTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez p0, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 20
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {p1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 21
    new-instance p2, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout$1;

    invoke-direct {p2}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout$1;-><init>()V

    .line 22
    iput-object p2, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;

    .line 23
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result v0

    .line 5
    const v1, 0x7f0a022a    # @id/content_frame

    .line 6
    if-ne v0, v1, :cond_0

    .line 9
    iget-boolean v0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mIsMatchParentHeight:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, -0x1

    .line 15
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 26
    move-result v2

    .line 29
    const v3, 0x7f0a00c6    # @id/app_bar

    .line 30
    if-eq v2, v3, :cond_2

    .line 33
    if-ne v2, v1, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 40
    :goto_1
    if-eqz v1, :cond_3

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 43
    goto :goto_2

    .line 46
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :goto_2
    return-void
    .line 50
.end method

.method public getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCollapsingToolbarLayout()Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public getContentFrameLayout()Landroid/view/View;
    .locals 1

    .line 1
    const v0, 0x7f0a022a    # @id/content_frame

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
.end method

.method public getSupportToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 2
    const v0, 0x7f0a0934    # @id/support_action_bar

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 11
    return-object p0
    .line 13
.end method
