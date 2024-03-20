.class public final Landroidx/window/embedding/SplitAttributes$SplitType;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final SPLIT_TYPE_EXPAND:Landroidx/window/embedding/SplitAttributes$SplitType;

.field public static final SPLIT_TYPE_HINGE:Landroidx/window/embedding/SplitAttributes$SplitType;


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 2
    const-string v1, "expandContainers"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$SplitType;-><init>(Ljava/lang/String;F)V

    .line 7
    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EXPAND:Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 10
    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    invoke-static {v0}, Landroidx/window/embedding/SplitAttributes$Companion;->ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 14
    new-instance v0, Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 17
    const-string v1, "hinge"

    .line 19
    const/high16 v2, -0x40800000    # -1.0f

    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$SplitType;-><init>(Ljava/lang/String;F)V

    .line 23
    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_HINGE:Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 26
    return-void
    .line 28
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    .line 5
    iput p2, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 12
    iget v1, p1, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    .line 14
    iget v3, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    .line 16
    cmpg-float v1, v3, v1

    .line 18
    if-nez v1, :cond_2

    .line 20
    move v1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move v1, v2

    .line 24
    :goto_0
    if-eqz v1, :cond_3

    .line 25
    iget-object p0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    .line 27
    iget-object p1, p1, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    .line 29
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result p0

    .line 34
    if-eqz p0, :cond_3

    .line 35
    goto :goto_1

    .line 37
    :cond_3
    move v0, v2

    .line 38
    :goto_1
    return v0
    .line 39
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    iget p0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    .line 8
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 10
    move-result p0

    .line 13
    mul-int/lit8 p0, p0, 0x1f

    .line 14
    add-int/2addr p0, v0

    .line 16
    return p0
    .line 17
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
