.class public final Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mViewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 16
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    move-result v2

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 24
    move-result p0

    .line 27
    sub-int/2addr v0, v1

    .line 28
    sub-int/2addr v0, p0

    .line 29
    div-int/lit8 v0, v0, 0x2

    .line 30
    add-int/2addr v1, v0

    .line 32
    add-int/2addr v2, v0

    .line 33
    int-to-float p0, v1

    .line 34
    int-to-float v1, v2

    .line 35
    int-to-float v0, v0

    .line 36
    invoke-virtual {p1, p0, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    :cond_0
    return-void
    .line 40
.end method
