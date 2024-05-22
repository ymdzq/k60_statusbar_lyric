.class public Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public lastInsets:Ljava/lang/Object;

.field public statusBarBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->statusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->lastInsets:Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->lastInsets:Ljava/lang/Object;

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->lastInsets:Ljava/lang/Object;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    check-cast v0, Landroid/view/WindowInsets;

    .line 9
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 11
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->statusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 19
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    iget-object p0, p0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->statusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    :cond_0
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->statusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    move v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 11
    if-eqz p1, :cond_1

    .line 14
    goto :goto_1

    .line 16
    :cond_1
    move v0, v1

    .line 17
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 21
    return-void
    .line 24
.end method
