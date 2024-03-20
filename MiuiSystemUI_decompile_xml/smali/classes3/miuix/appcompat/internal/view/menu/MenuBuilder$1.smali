.class public final Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    .line 6
    move-result p0

    .line 9
    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_5

    .line 21
    goto :goto_2

    .line 23
    :cond_0
    iget p0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 24
    and-int/lit8 v0, p0, 0x1

    .line 26
    const/4 v2, 0x0

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v0, v2

    .line 33
    :goto_0
    iget v3, p2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 34
    and-int/2addr v3, v1

    .line 36
    if-ne v3, v1, :cond_2

    .line 37
    move v3, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v3, v2

    .line 41
    :goto_1
    if-eq v0, v3, :cond_4

    .line 42
    and-int/2addr p0, v1

    .line 44
    if-ne p0, v1, :cond_3

    .line 45
    move v2, v1

    .line 47
    :cond_3
    if-eqz v2, :cond_5

    .line 48
    :goto_2
    const/4 v1, -0x1

    .line 50
    goto :goto_3

    .line 51
    :cond_4
    iget p0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 52
    iget p1, p2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 54
    sub-int v1, p0, p1

    .line 56
    :cond_5
    :goto_3
    return v1
    .line 58
.end method
