.class public final synthetic Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    sget-object p0, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    .line 2
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    iget-object p0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 6
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    .line 8
    move-result-object v0

    .line 11
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 12
    if-lez v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setChildInsets(Landroidx/core/view/WindowInsetsCompat;Z)V

    .line 19
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method
