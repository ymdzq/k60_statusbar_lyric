.class public abstract Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static varargs setHeaderClockTypeface([Landroid/widget/TextView;)Z
    .locals 7

    .line 1
    const-string v0, "mipro-normal"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 5
    move-result-object v0

    .line 8
    iget-object v2, v0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 9
    array-length v3, v2

    .line 11
    move v4, v1

    .line 12
    :goto_0
    if-ge v4, v3, :cond_1

    .line 13
    aget-object v5, v2, v4

    .line 15
    const-string v6, "mipro"

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    sget-object v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->MI_PRO_TYPEFACE:Landroid/graphics/Typeface;

    .line 25
    const/4 v2, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    move v2, v1

    .line 32
    :goto_1
    array-length v3, p0

    .line 33
    :goto_2
    if-ge v1, v3, :cond_2

    .line 34
    aget-object v4, p0, v1

    .line 36
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_2

    .line 43
    :cond_2
    return v2
    .line 44
.end method
