.class public final Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBoundFlags:I

.field public mChildEnd:I

.field public mChildStart:I

.field public mRvEnd:I

.field public mRvStart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final boundsMatch()Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 2
    and-int/lit8 v1, v0, 0x7

    .line 4
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 12
    iget v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 14
    if-le v1, v6, :cond_0

    .line 16
    move v1, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-ne v1, v6, :cond_1

    .line 20
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v1, v3

    .line 24
    :goto_0
    shl-int/2addr v1, v5

    .line 25
    and-int/2addr v1, v0

    .line 26
    if-nez v1, :cond_2

    .line 27
    return v5

    .line 29
    :cond_2
    and-int/lit8 v1, v0, 0x70

    .line 30
    if-eqz v1, :cond_5

    .line 32
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 34
    iget v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 36
    if-le v1, v6, :cond_3

    .line 38
    move v1, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    if-ne v1, v6, :cond_4

    .line 42
    move v1, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    move v1, v3

    .line 46
    :goto_1
    shl-int/2addr v1, v3

    .line 47
    and-int/2addr v1, v0

    .line 48
    if-nez v1, :cond_5

    .line 49
    return v5

    .line 51
    :cond_5
    and-int/lit16 v1, v0, 0x700

    .line 52
    if-eqz v1, :cond_8

    .line 54
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 56
    iget v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 58
    if-le v1, v6, :cond_6

    .line 60
    move v1, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_6
    if-ne v1, v6, :cond_7

    .line 64
    move v1, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_7
    move v1, v3

    .line 68
    :goto_2
    shl-int/lit8 v1, v1, 0x8

    .line 69
    and-int/2addr v1, v0

    .line 71
    if-nez v1, :cond_8

    .line 72
    return v5

    .line 74
    :cond_8
    and-int/lit16 v1, v0, 0x7000

    .line 75
    if-eqz v1, :cond_b

    .line 77
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 79
    iget p0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 81
    if-le v1, p0, :cond_9

    .line 83
    move v2, v4

    .line 85
    goto :goto_3

    .line 86
    :cond_9
    if-ne v1, p0, :cond_a

    .line 87
    goto :goto_3

    .line 89
    :cond_a
    move v2, v3

    .line 90
    :goto_3
    shl-int/lit8 p0, v2, 0xc

    .line 91
    and-int/2addr p0, v0

    .line 93
    if-nez p0, :cond_b

    .line 94
    return v5

    .line 96
    :cond_b
    return v4
    .line 97
.end method
