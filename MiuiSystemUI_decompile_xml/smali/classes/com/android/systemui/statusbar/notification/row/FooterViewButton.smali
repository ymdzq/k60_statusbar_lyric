.class public Lcom/android/systemui/statusbar/notification/row/FooterViewButton;
.super Lcom/android/systemui/statusbar/AlphaOptimizedButton;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Landroid/widget/Button;->mParent:Landroid/view/ViewParent;

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    .line 9
    move-result v0

    .line 12
    iget-object p0, p0, Landroid/widget/Button;->mParent:Landroid/view/ViewParent;

    .line 13
    check-cast p0, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    .line 17
    move-result p0

    .line 20
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 21
    int-to-float v1, v1

    .line 23
    add-float/2addr v1, v0

    .line 24
    float-to-int v1, v1

    .line 25
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 26
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 28
    int-to-float v1, v1

    .line 30
    add-float/2addr v1, v0

    .line 31
    float-to-int v0, v1

    .line 32
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 33
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 35
    int-to-float v0, v0

    .line 37
    add-float/2addr v0, p0

    .line 38
    float-to-int v0, v0

    .line 39
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 40
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 42
    int-to-float v0, v0

    .line 44
    add-float/2addr v0, p0

    .line 45
    float-to-int p0, v0

    .line 46
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 47
    return-void
    .line 49
.end method
