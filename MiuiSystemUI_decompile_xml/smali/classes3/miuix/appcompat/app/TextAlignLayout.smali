.class public Lmiuix/appcompat/app/TextAlignLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 5
    move-result p1

    .line 8
    const/4 p2, 0x1

    .line 9
    const/4 v0, 0x0

    .line 10
    move v2, p2

    .line 11
    move v1, v0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_2

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v3

    .line 18
    if-eqz v2, :cond_1

    .line 19
    instance-of v4, v3, Landroid/widget/TextView;

    .line 21
    if-eqz v4, :cond_1

    .line 23
    check-cast v3, Landroid/widget/TextView;

    .line 25
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    .line 27
    move-result v2

    .line 30
    if-gt v2, p2, :cond_0

    .line 31
    move v2, p2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v2, v0

    .line 35
    :goto_1
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    return-void
    .line 44
.end method
