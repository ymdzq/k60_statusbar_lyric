.class Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutChangeListener"
.end annotation


# instance fields
.field private final mHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AlertController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 1

    .line 2649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2650
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 2651
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private changeViewPadding(Landroid/view/View;II)V
    .locals 0

    const/4 p0, 0x0

    .line 2723
    invoke-virtual {p1, p2, p0, p3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiuix/appcompat/app/AlertController;)V
    .locals 1

    .line 2689
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {p3}, Lmiuix/appcompat/app/AlertController;->access$2700(Lmiuix/appcompat/app/AlertController;)I

    move-result v0

    sub-int/2addr p0, v0

    .line 2690
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    if-lez p0, :cond_1

    neg-int p0, p0

    .line 2697
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2700
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 2701
    iget p2, p1, Landroid/graphics/Insets;->bottom:I

    :cond_0
    add-int/2addr p2, p0

    .line 2714
    invoke-static {}, Lmiuix/appcompat/widget/DialogAnimHelper;->cancelAnimator()V

    .line 2719
    :cond_1
    invoke-static {p3, p2}, Lmiuix/appcompat/app/AlertController;->access$2100(Lmiuix/appcompat/app/AlertController;I)V

    return-void
.end method

.method private handleMultiWindowLandscapeChange(Lmiuix/appcompat/app/AlertController;I)V
    .locals 3

    .line 2727
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2728
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_1

    .line 2729
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, p2, v0

    .line 2731
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v2, p2, :cond_0

    .line 2733
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    .line 2736
    :cond_0
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    .line 2739
    :cond_1
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    .line 2742
    :cond_2
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    move-result-object p1

    .line 2743
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    if-gtz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    if-lez p2, :cond_4

    .line 2745
    :cond_3
    invoke-direct {p0, p1, v1, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public hasNavigationBarHeightInMultiWindowMode()Z
    .locals 3

    .line 2757
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AlertController;

    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AlertController;

    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 2758
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AlertController;

    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_1

    .line 2760
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AlertController;

    invoke-static {p0}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmiuix/core/util/EnvStateManager;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result p0

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    return v2
.end method

.method public isInMultiScreenTop()Z
    .locals 4

    .line 2776
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AlertController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2778
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v3

    invoke-static {v2, v3}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 2779
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_0

    .line 2782
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 2783
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    :cond_0
    return v1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 2657
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/AlertController;

    if-eqz p2, :cond_0

    .line 2660
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2661
    invoke-direct {p0, p2, p4}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->handleMultiWindowLandscapeChange(Lmiuix/appcompat/app/AlertController;I)V

    :cond_0
    return-void
.end method
