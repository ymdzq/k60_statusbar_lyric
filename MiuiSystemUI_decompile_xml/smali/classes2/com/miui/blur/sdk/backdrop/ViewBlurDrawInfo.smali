.class public interface abstract Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;


# virtual methods
.method public getBlurOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    instance-of v0, p0, Landroid/view/View;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    .line 12
    move-result-object v0

    .line 15
    check-cast p0, Landroid/view/View;

    .line 16
    invoke-virtual {v0, p0, p1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getWidth()I

    .line 22
    move-result v0

    .line 25
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getHeight()I

    .line 26
    move-result p0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 31
    :goto_0
    return-void
    .line 34
.end method

.method public getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 14
    and-int/lit8 v0, v0, 0x30

    .line 16
    const/16 v1, 0x20

    .line 18
    if-ne v0, v1, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 27
    move-result-object p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 32
    move-result-object p0

    .line 35
    :goto_1
    return-object p0
    .line 36
.end method

.method public getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 2
    return-object p0
    .line 4
.end method

.method public getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 2
    return-object p0
    .line 4
.end method

.method public getBlurViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getOutlineProvider()Landroid/view/ViewOutlineProvider;
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
    .line 14
.end method

.method public abstract getViewRootImpl()Landroid/view/ViewRootImpl;
.end method
