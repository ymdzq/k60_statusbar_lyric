.class public final Lkotlin/random/XorWowRandom;
.super Lkotlin/random/Random;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private addend:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    not-int v0, p1

    .line 2
    shl-int/lit8 v1, p1, 0xa

    .line 3
    ushr-int/lit8 v2, p2, 0x4

    .line 5
    xor-int/2addr v1, v2

    .line 7
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    .line 8
    iput p1, p0, Lkotlin/random/XorWowRandom;->x:I

    .line 11
    iput p2, p0, Lkotlin/random/XorWowRandom;->y:I

    .line 13
    const/4 v2, 0x0

    .line 15
    iput v2, p0, Lkotlin/random/XorWowRandom;->z:I

    .line 16
    iput v2, p0, Lkotlin/random/XorWowRandom;->w:I

    .line 18
    iput v0, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 20
    iput v1, p0, Lkotlin/random/XorWowRandom;->addend:I

    .line 22
    or-int/2addr p1, p2

    .line 24
    or-int/2addr p1, v2

    .line 25
    or-int/2addr p1, v2

    .line 26
    or-int/2addr p1, v0

    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p1, v2

    .line 32
    :goto_0
    if-eqz p1, :cond_2

    .line 33
    :goto_1
    const/16 p1, 0x40

    .line 35
    if-ge v2, p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->nextInt()I

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    return-void

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string p1, "Initial state must have at least one non-zero element."

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0
    .line 57
.end method


# virtual methods
.method public final nextInt()I
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/random/XorWowRandom;->x:I

    .line 2
    ushr-int/lit8 v1, v0, 0x2

    .line 4
    xor-int/2addr v0, v1

    .line 6
    iget v1, p0, Lkotlin/random/XorWowRandom;->y:I

    .line 7
    iput v1, p0, Lkotlin/random/XorWowRandom;->x:I

    .line 9
    iget v1, p0, Lkotlin/random/XorWowRandom;->z:I

    .line 11
    iput v1, p0, Lkotlin/random/XorWowRandom;->y:I

    .line 13
    iget v1, p0, Lkotlin/random/XorWowRandom;->w:I

    .line 15
    iput v1, p0, Lkotlin/random/XorWowRandom;->z:I

    .line 17
    iget v1, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 19
    iput v1, p0, Lkotlin/random/XorWowRandom;->w:I

    .line 21
    shl-int/lit8 v2, v0, 0x1

    .line 23
    xor-int/2addr v0, v2

    .line 25
    xor-int/2addr v0, v1

    .line 26
    shl-int/lit8 v1, v1, 0x4

    .line 27
    xor-int/2addr v0, v1

    .line 29
    iput v0, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 30
    iget v1, p0, Lkotlin/random/XorWowRandom;->addend:I

    .line 32
    const v2, 0x587c5

    .line 34
    add-int/2addr v1, v2

    .line 37
    iput v1, p0, Lkotlin/random/XorWowRandom;->addend:I

    .line 38
    add-int/2addr v0, v1

    .line 40
    return v0
    .line 41
.end method
