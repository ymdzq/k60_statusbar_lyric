.class public final Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    new-instance p0, Landroid/graphics/Paint;

    .line 9
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 8
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 10
    move-result v1

    .line 13
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 14
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 16
    move-result v2

    .line 19
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 20
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    .line 22
    move-result v3

    .line 25
    sub-int/2addr v0, v1

    .line 26
    sub-int/2addr v0, v3

    .line 27
    div-int/lit8 v0, v0, 0x2

    .line 28
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    mul-int/lit8 v0, v0, 0x2

    .line 32
    add-int v4, v1, v0

    .line 34
    add-int/2addr v0, v2

    .line 36
    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    return-void
    .line 45
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    return-void
    .line 7
.end method
