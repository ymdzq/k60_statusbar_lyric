.class public Lcom/android/settings/ai/LinearLayoutColorDivider;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LinearLayoutColorDivider.java"


# instance fields
.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mOrientation:I

.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mSize:I

    .line 24
    iput p4, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mOrientation:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 61
    iget p2, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mOrientation:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 62
    iget p0, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mSize:I

    invoke-virtual {p1, p3, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 64
    :cond_0
    iget p0, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mSize:I

    invoke-virtual {p1, p3, p3, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 29
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 30
    iget v0, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 32
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 33
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    .line 35
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 39
    iget v3, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mSize:I

    add-int/2addr v2, v3

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 40
    iget-object v2, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 41
    iget-object v2, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 45
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 46
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    .line 48
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 52
    iget v3, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mSize:I

    add-int/2addr v2, v3

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 53
    iget-object v2, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 54
    iget-object v2, p0, Lcom/android/settings/ai/LinearLayoutColorDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
