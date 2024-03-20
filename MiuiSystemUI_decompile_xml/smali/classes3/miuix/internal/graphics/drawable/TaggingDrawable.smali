.class public final Lmiuix/internal/graphics/drawable/TaggingDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mRawState:[I

.field public mTaggingState:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 6
    const/4 p1, 0x0

    .line 9
    new-array v1, p1, [I

    .line 10
    iput-object v1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    .line 12
    new-array p1, p1, [I

    .line 14
    iput-object p1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 16
    invoke-virtual {p0, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final setState([I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 2
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    iput-object p1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 11
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    .line 13
    array-length v2, p1

    .line 15
    array-length v3, v0

    .line 16
    add-int/2addr v2, v3

    .line 17
    new-array v2, v2, [I

    .line 18
    array-length v3, v0

    .line 20
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    array-length v0, v0

    .line 24
    array-length v3, p1

    .line 25
    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-super {p0, v2}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->setState([I)Z

    .line 29
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_0
    return v1
    .line 34
.end method

.method public final setTaggingState([I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    .line 2
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    .line 10
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 12
    array-length v1, v0

    .line 14
    array-length v2, p1

    .line 15
    add-int/2addr v1, v2

    .line 16
    new-array v1, v1, [I

    .line 17
    array-length v2, p1

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    array-length p1, p1

    .line 24
    array-length v2, v0

    .line 25
    invoke-static {v0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-super {p0, v1}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->setState([I)Z

    .line 29
    :cond_0
    return-void
    .line 32
.end method
