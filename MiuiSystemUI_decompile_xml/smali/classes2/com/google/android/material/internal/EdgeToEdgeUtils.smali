.class public abstract Lcom/google/android/material/internal/EdgeToEdgeUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static setLightStatusBar(Landroid/view/Window;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 5
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 7
    iget-object p0, v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 10
    iget-object v0, v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    .line 12
    const/16 v1, 0x8

    .line 14
    if-eqz p1, :cond_1

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 24
    move-result v0

    .line 27
    const/16 v2, 0x2000

    .line 28
    or-int/2addr v0, v2

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 31
    :cond_0
    invoke-interface {p0, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 40
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 44
    move-result v0

    .line 47
    const/16 v2, -0x2001

    .line 48
    and-int/2addr v0, v2

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 54
    invoke-interface {p0, p1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 55
    :goto_0
    return-void
    .line 58
.end method
