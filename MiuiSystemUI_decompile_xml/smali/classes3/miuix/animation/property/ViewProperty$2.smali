.class Lmiuix/animation/property/ViewProperty$2;
.super Lmiuix/animation/property/ViewProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/property/ViewProperty$2;->getValue(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/ViewProperty$2;->setValue(Landroid/view/View;F)V

    return-void
.end method
