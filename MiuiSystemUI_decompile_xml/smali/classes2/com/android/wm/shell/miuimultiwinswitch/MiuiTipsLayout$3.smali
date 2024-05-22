.class Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$3;
.super Lmiuix/animation/property/ViewProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$3;->getValue(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 2

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x3b800000    # 0.00390625f

    cmpg-float p0, p0, v0

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    if-nez p0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    const/4 p0, 0x4

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$3;->setValue(Landroid/view/View;F)V

    return-void
.end method
