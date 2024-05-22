.class public Lcom/miui/maml/util/MamlAccessHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlAccessHelper"


# instance fields
.field mHostView:Landroid/view/View;

.field mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    iput-object p2, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    .line 7
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    return v0

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/high16 p0, -0x80000000

    .line 40
    return p0
    .line 42
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 21
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    return-void
    .line 39
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    const/4 p3, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    const/16 v0, 0x10

    .line 7
    if-eq p2, v0, :cond_0

    .line 9
    return p3

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 12
    move-result-object p0

    .line 15
    if-ltz p1, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    move-result p2

    .line 21
    if-ge p1, p2, :cond_2

    .line 22
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 28
    const-string/jumbo p1, "up"

    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 33
    instance-of p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 36
    if-eqz p1, :cond_1

    .line 38
    check-cast p0, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->onActionUp()V

    .line 42
    :cond_1
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_2
    return p3
    .line 47
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 9
    if-ltz p1, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 15
    if-ge p1, v0, :cond_0

    .line 16
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 9
    const-string v0, ""

    .line 10
    const-string v1, "MamlAccessHelper"

    .line 12
    if-ltz p1, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 19
    if-ge p1, v2, :cond_1

    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "element.getContentDescription() == null "

    .line 36
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getName()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    move-object v0, p1

    .line 56
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    const/16 p1, 0x10

    .line 60
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 67
    move-result v0

    .line 70
    float-to-int v0, v0

    .line 71
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 72
    move-result v1

    .line 75
    float-to-int v1, v1

    .line 76
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 77
    move-result v2

    .line 80
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 81
    move-result v3

    .line 84
    add-float/2addr v3, v2

    .line 85
    float-to-int v2, v3

    .line 86
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 87
    move-result v3

    .line 90
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 91
    move-result p0

    .line 94
    add-float/2addr p0, v3

    .line 95
    float-to-int p0, p0

    .line 96
    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 100
    goto :goto_1

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v2, "virtualViewId not found "

    .line 106
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    new-instance p0, Landroid/graphics/Rect;

    .line 125
    const/4 p1, 0x0

    .line 127
    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 131
    :cond_2
    :goto_1
    return-void
    .line 134
.end method

.method public performAccessibilityAction(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    .line 2
    new-instance v1, Lcom/miui/maml/util/MamlAccessHelper$1;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/miui/maml/util/MamlAccessHelper$1;-><init>(Lcom/miui/maml/util/MamlAccessHelper;II)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public removeRoot()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    return-void
    .line 5
.end method
