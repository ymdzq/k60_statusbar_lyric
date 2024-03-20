.class public final Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;->uid:I

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;->packageName:Ljava/lang/String;

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
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;

    .line 12
    iget v1, p1, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;->uid:I

    .line 14
    iget v3, p0, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;->uid:I

    .line 16
    if-ne v3, v1, :cond_2

    .line 18
    iget-object p0, p0, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;->packageName:Ljava/lang/String;

    .line 20
    iget-object p1, p1, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;->packageName:Ljava/lang/String;

    .line 22
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    move v0, v2

    .line 31
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;->uid:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;->packageName:Ljava/lang/String;

    .line 8
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method
