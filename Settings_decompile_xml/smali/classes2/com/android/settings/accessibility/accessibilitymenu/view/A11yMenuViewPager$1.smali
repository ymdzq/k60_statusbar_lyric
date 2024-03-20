.class Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;
.super Ljava/lang/Object;
.source "A11yMenuViewPager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->configureViewPagerAndFooter(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstTime:Z

.field final synthetic this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;


# direct methods
.method public static synthetic $r8$lambda$MEDbAVHz7u-U0nJp0EK1y0YE2Zw(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;Landroid/widget/GridView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->lambda$onGlobalLayout$0(Landroid/widget/GridView;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->isFirstTime:Z

    return-void
.end method

.method private synthetic lambda$onGlobalLayout$0(Landroid/widget/GridView;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->-$$Nest$madjustTextViewHeight(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;Landroid/widget/GridView;)V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    .line 67
    iget-boolean v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->isFirstTime:Z

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    invoke-static {v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->-$$Nest$fgetgridPageList(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    invoke-static {v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->-$$Nest$fgetgridPageList(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    if-eqz v0, :cond_6

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 78
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->isFirstTime:Z

    .line 79
    new-instance v2, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;Landroid/widget/GridView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    iget-object v1, v1, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->a11ymenu_layout_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 83
    iget-object v2, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    iget-object v2, v2, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->table_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 84
    iget-object v3, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    iget-object v3, v3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 85
    iget-object v4, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    iget-object v4, v4, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    add-int v4, v0, v2

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 89
    iget-object v3, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    iget-object v3, v3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    invoke-static {v4}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->-$$Nest$fgeta11yMenuLayout(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;)Landroid/view/ViewGroup;

    move-result-object v4

    sget v5, Lcom/android/settings/R$id;->footerlayout:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 91
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v5, v4

    sub-int v5, v4, v2

    sub-int/2addr v5, v1

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr v5, v0

    .line 92
    div-int/lit8 v5, v5, 0x4

    .line 93
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    invoke-static {v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->-$$Nest$fgetgridPageList(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    iget-object v0, v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/2addr v5, v2

    invoke-virtual {v0, v1, v5, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    iget-object v0, v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    return-void
.end method
