.class public Lcom/google/android/material/circularreveal/CircularRevealGridLayout;
.super Landroid/widget/GridLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field public final helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-direct {p1, p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    return-void
.end method


# virtual methods
.method public final actualDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public final actualIsOpaque()Z
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/GridLayout;->isOpaque()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final buildCircularRevealCache()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method

.method public final destroyCircularRevealCache()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->draw(Landroid/graphics/Canvas;)V

    .line 10
    :goto_0
    return-void
    .line 13
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    return-object p0
    .line 6
.end method

.method public getCircularRevealScrimColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final isOpaque()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/widget/GridLayout;->isOpaque()Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
    .line 7
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 4
    return-void
    .line 7
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 4
    return-void
    .line 7
.end method
