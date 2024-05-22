.class public abstract Lmiuix/internal/util/AnimHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static addPressAnim(Landroid/view/View;)V
    .locals 5

    .line 1
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 2
    filled-new-array {p0}, [Landroid/view/View;

    .line 4
    move-result-object v1

    .line 7
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 8
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 12
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 17
    const/high16 v4, 0x3f800000    # 1.0f

    .line 19
    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 21
    move-result-object v1

    .line 24
    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    .line 25
    invoke-interface {v1, p0, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 27
    filled-new-array {p0}, [Landroid/view/View;

    .line 30
    move-result-object v1

    .line 33
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 34
    move-result-object v1

    .line 37
    invoke-interface {v1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 38
    move-result-object v1

    .line 41
    invoke-interface {v1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 42
    move-result-object v0

    .line 45
    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 46
    invoke-interface {v0, p0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 48
    return-void
    .line 51
.end method

.method public static addPressAnimWithBg(Landroid/view/View;)V
    .locals 7

    .line 1
    filled-new-array {p0}, [Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 10
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1, v1, v1, v1}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    .line 15
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 20
    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    invoke-interface {v0, v4, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 24
    move-result-object v0

    .line 27
    filled-new-array {p0}, [Landroid/view/View;

    .line 28
    move-result-object v3

    .line 31
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 32
    move-result-object v3

    .line 35
    invoke-interface {v3}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 36
    move-result-object v3

    .line 39
    invoke-interface {v3, v1, v1, v1, v1}, Lmiuix/animation/IHoverStyle;->setTint(FFFF)Lmiuix/animation/IHoverStyle;

    .line 40
    move-result-object v3

    .line 43
    sget-object v5, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 44
    invoke-interface {v3, v5}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 46
    move-result-object v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 58
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 62
    move-result v5

    .line 65
    const v6, 0x3da3d70a    # 0.08f

    .line 66
    if-eqz v5, :cond_0

    .line 69
    invoke-interface {v0, v6, v4, v4, v4}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    .line 71
    invoke-interface {v3, v6, v4, v4, v4}, Lmiuix/animation/IHoverStyle;->setBackgroundColor(FFFF)Lmiuix/animation/IHoverStyle;

    .line 74
    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {v0, v6, v1, v1, v1}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    .line 78
    invoke-interface {v3, v6, v1, v1, v1}, Lmiuix/animation/IHoverStyle;->setBackgroundColor(FFFF)Lmiuix/animation/IHoverStyle;

    .line 81
    :goto_0
    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 84
    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 86
    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    .line 89
    invoke-interface {v3, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 91
    return-void
    .line 94
.end method
