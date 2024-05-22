.class public abstract Landroidx/customview/widget/FocusStrategy;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    .line 1
    invoke-static {p1, p2, p0}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    .line 2
    move-result v0

    .line 5
    invoke-static {p1, p3, p0}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_e

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto/16 :goto_4

    .line 15
    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 17
    const/16 v1, 0x82

    .line 19
    const/16 v3, 0x21

    .line 21
    const/16 v4, 0x42

    .line 23
    const/16 v5, 0x11

    .line 25
    const/4 v6, 0x1

    .line 27
    if-eq p0, v5, :cond_4

    .line 28
    if-eq p0, v3, :cond_3

    .line 30
    if-eq p0, v4, :cond_2

    .line 32
    if-ne p0, v1, :cond_1

    .line 34
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    iget v8, p3, Landroid/graphics/Rect;->top:I

    .line 38
    if-gt v7, v8, :cond_5

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 49
    iget v8, p3, Landroid/graphics/Rect;->left:I

    .line 51
    if-gt v7, v8, :cond_5

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->top:I

    .line 56
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    .line 58
    if-lt v7, v8, :cond_5

    .line 60
    goto :goto_0

    .line 62
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    .line 63
    iget v8, p3, Landroid/graphics/Rect;->right:I

    .line 65
    if-lt v7, v8, :cond_5

    .line 67
    :goto_0
    move v7, v6

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    move v7, v2

    .line 71
    :goto_1
    if-nez v7, :cond_6

    .line 72
    return v6

    .line 74
    :cond_6
    if-eq p0, v5, :cond_d

    .line 75
    if-ne p0, v4, :cond_7

    .line 77
    goto :goto_3

    .line 79
    :cond_7
    invoke-static {p1, p2, p0}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    .line 80
    move-result p2

    .line 83
    if-eq p0, v5, :cond_b

    .line 84
    if-eq p0, v3, :cond_a

    .line 86
    if-eq p0, v4, :cond_9

    .line 88
    if-ne p0, v1, :cond_8

    .line 90
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 92
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 94
    goto :goto_2

    .line 96
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 97
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0

    .line 102
    :cond_9
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 103
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 105
    goto :goto_2

    .line 107
    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 108
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 110
    goto :goto_2

    .line 112
    :cond_b
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 113
    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 115
    :goto_2
    sub-int/2addr p0, p1

    .line 117
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    .line 118
    move-result p0

    .line 121
    if-ge p2, p0, :cond_c

    .line 122
    move v2, v6

    .line 124
    :cond_c
    return v2

    .line 125
    :cond_d
    :goto_3
    return v6

    .line 126
    :cond_e
    :goto_4
    return v2
    .line 127
.end method

.method public static beamsOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq p2, v0, :cond_3

    .line 6
    const/16 v0, 0x21

    .line 8
    if-eq p2, v0, :cond_1

    .line 10
    const/16 v0, 0x42

    .line 12
    if-eq p2, v0, :cond_3

    .line 14
    const/16 v0, 0x82

    .line 16
    if-ne p2, v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 28
    :cond_1
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 29
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 31
    if-lt p2, v0, :cond_2

    .line 33
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 35
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 37
    if-gt p1, p0, :cond_2

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    move v1, v2

    .line 42
    :goto_1
    return v1

    .line 43
    :cond_3
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 44
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 46
    if-lt p2, v0, :cond_4

    .line 48
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 50
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 52
    if-gt p1, p0, :cond_4

    .line 54
    goto :goto_2

    .line 56
    :cond_4
    move v1, v2

    .line 57
    :goto_2
    return v1
    .line 58
.end method

.method public static isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq p2, v0, :cond_9

    .line 6
    const/16 v0, 0x21

    .line 8
    if-eq p2, v0, :cond_6

    .line 10
    const/16 v0, 0x42

    .line 12
    if-eq p2, v0, :cond_3

    .line 14
    const/16 v0, 0x82

    .line 16
    if-ne p2, v0, :cond_2

    .line 18
    iget p2, p0, Landroid/graphics/Rect;->top:I

    .line 20
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 22
    if-lt p2, v0, :cond_0

    .line 24
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 26
    if-gt p2, v0, :cond_1

    .line 28
    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 30
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 32
    if-ge p0, p1, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    move v1, v2

    .line 37
    :goto_0
    return v1

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0

    .line 46
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 47
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 49
    if-lt p2, v0, :cond_4

    .line 51
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 53
    if-gt p2, v0, :cond_5

    .line 55
    :cond_4
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 57
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 59
    if-ge p0, p1, :cond_5

    .line 61
    goto :goto_1

    .line 63
    :cond_5
    move v1, v2

    .line 64
    :goto_1
    return v1

    .line 65
    :cond_6
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 66
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 68
    if-gt p2, v0, :cond_7

    .line 70
    iget p2, p0, Landroid/graphics/Rect;->top:I

    .line 72
    if-lt p2, v0, :cond_8

    .line 74
    :cond_7
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 76
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 78
    if-le p0, p1, :cond_8

    .line 80
    goto :goto_2

    .line 82
    :cond_8
    move v1, v2

    .line 83
    :goto_2
    return v1

    .line 84
    :cond_9
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 85
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 87
    if-gt p2, v0, :cond_a

    .line 89
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 91
    if-lt p2, v0, :cond_b

    .line 93
    :cond_a
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 95
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 97
    if-le p0, p1, :cond_b

    .line 99
    goto :goto_3

    .line 101
    :cond_b
    move v1, v2

    .line 102
    :goto_3
    return v1
    .line 103
.end method

.method public static majorAxisDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    if-eq p2, v0, :cond_3

    .line 4
    const/16 v0, 0x21

    .line 6
    if-eq p2, v0, :cond_2

    .line 8
    const/16 v0, 0x42

    .line 10
    if-eq p2, v0, :cond_1

    .line 12
    const/16 v0, 0x82

    .line 14
    if-ne p2, v0, :cond_0

    .line 16
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 18
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 30
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 31
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 33
    :goto_0
    sub-int/2addr p1, p0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 37
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    goto :goto_1

    .line 41
    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 42
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 44
    :goto_1
    sub-int p1, p0, p1

    .line 46
    :goto_2
    const/4 p0, 0x0

    .line 48
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 49
    move-result p0

    .line 52
    return p0
    .line 53
.end method

.method public static minorAxisDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    if-eq p2, v0, :cond_2

    .line 4
    const/16 v0, 0x21

    .line 6
    if-eq p2, v0, :cond_1

    .line 8
    const/16 v0, 0x42

    .line 10
    if-eq p2, v0, :cond_2

    .line 12
    const/16 v0, 0x82

    .line 14
    if-ne p2, v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 26
    :cond_1
    :goto_0
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 27
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 29
    move-result p0

    .line 32
    div-int/lit8 p0, p0, 0x2

    .line 33
    add-int/2addr p0, p2

    .line 35
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 38
    move-result p1

    .line 41
    div-int/lit8 p1, p1, 0x2

    .line 42
    add-int/2addr p1, p2

    .line 44
    sub-int/2addr p0, p1

    .line 45
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 46
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->top:I

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 53
    move-result p0

    .line 56
    div-int/lit8 p0, p0, 0x2

    .line 57
    add-int/2addr p0, p2

    .line 59
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 62
    move-result p1

    .line 65
    div-int/lit8 p1, p1, 0x2

    .line 66
    add-int/2addr p1, p2

    .line 68
    sub-int/2addr p0, p1

    .line 69
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 70
    move-result p0

    .line 73
    return p0
    .line 74
.end method
