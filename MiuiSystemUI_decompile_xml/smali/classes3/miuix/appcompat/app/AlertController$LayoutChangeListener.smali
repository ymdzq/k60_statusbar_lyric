.class Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final mHost:Ljava/lang/ref/WeakReference;

.field private final mWindowVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    .line 12
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 17
    return-void
    .line 19
.end method

.method private changeViewPadding(Landroid/view/View;II)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p2, p0, p3, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 3
    return-void
    .line 6
.end method

.method private handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiuix/appcompat/app/AlertController;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x0

    .line 9
    sub-int/2addr p0, v0

    .line 10
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 11
    sub-int/2addr p0, p2

    .line 13
    if-lez p0, :cond_1

    .line 14
    neg-int p0, p0

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 17
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 23
    move-result p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 27
    move-result-object p1

    .line 30
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    .line 31
    :cond_0
    add-int/2addr v0, p0

    .line 33
    sget-object p0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 34
    if-eqz p0, :cond_1

    .line 36
    invoke-interface {p0}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->cancelAnimator()V

    .line 38
    :cond_1
    invoke-virtual {p3, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 41
    return-void
    .line 44
.end method

.method private handleMultiWindowLandscapeChange(Lmiuix/appcompat/app/AlertController;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 11
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 13
    if-lez v2, :cond_1

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result v0

    .line 20
    sub-int v0, p2, v0

    .line 21
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 23
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 25
    if-ne v2, p2, :cond_0

    .line 27
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 29
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 35
    invoke-direct {p0, p1, v1, v0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 41
    invoke-direct {p0, p1, v1, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 49
    move-result p2

    .line 52
    if-gtz p2, :cond_3

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 55
    move-result p2

    .line 58
    if-lez p2, :cond_4

    .line 59
    :cond_3
    invoke-direct {p0, p1, v1, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    .line 61
    :cond_4
    :goto_0
    return-void
    .line 64
.end method


# virtual methods
.method public hasNavigationBarHeightInMultiWindowMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/app/AlertController;

    .line 8
    iget-object v0, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/appcompat/app/AlertController;

    .line 18
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 20
    invoke-static {v0, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 25
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 27
    if-nez v1, :cond_1

    .line 29
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Lmiuix/appcompat/app/AlertController;

    .line 39
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 41
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 43
    if-ne v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 47
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 49
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    check-cast p0, Lmiuix/appcompat/app/AlertController;

    .line 57
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getStatusBarHeight(Landroid/content/Context;)I

    .line 61
    move-result p0

    .line 64
    if-le v0, p0, :cond_0

    .line 65
    goto :goto_0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 70
    :goto_1
    return p0
    .line 71
.end method

.method public isInMultiScreenTop()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/app/AlertController;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 13
    iget-object v0, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v0, v2}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 17
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 20
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 22
    if-nez v0, :cond_0

    .line 24
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 26
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 28
    if-ne v0, v3, :cond_0

    .line 30
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 32
    int-to-float v0, v0

    .line 34
    const/high16 v2, 0x3f400000    # 0.75f

    .line 35
    mul-float/2addr v0, v2

    .line 37
    float-to-int v0, v0

    .line 38
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 39
    if-ltz v2, :cond_0

    .line 41
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 43
    if-gt p0, v0, :cond_0

    .line 45
    const/4 p0, 0x1

    .line 47
    move v1, p0

    .line 48
    :cond_0
    return v1
    .line 49
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 7
    check-cast p2, Lmiuix/appcompat/app/AlertController;

    .line 8
    if-eqz p2, :cond_0

    .line 10
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 14
    invoke-direct {p0, p2, p4}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->handleMultiWindowLandscapeChange(Lmiuix/appcompat/app/AlertController;I)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
