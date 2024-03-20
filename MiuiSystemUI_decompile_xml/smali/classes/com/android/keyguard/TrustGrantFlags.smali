.class public final Lcom/android/keyguard/TrustGrantFlags;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mFlags:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/keyguard/TrustGrantFlags;->mFlags:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/keyguard/TrustGrantFlags;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/keyguard/TrustGrantFlags;

    .line 8
    iget p1, p1, Lcom/android/keyguard/TrustGrantFlags;->mFlags:I

    .line 10
    iget p0, p0, Lcom/android/keyguard/TrustGrantFlags;->mFlags:I

    .line 12
    if-ne p1, p0, :cond_1

    .line 14
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
    .line 17
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/TrustGrantFlags;->mFlags:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "["

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget p0, p0, Lcom/android/keyguard/TrustGrantFlags;->mFlags:I

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "]="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    and-int/lit8 v1, p0, 0x1

    .line 19
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    move v1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v2

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    const-string v1, "initiatedByUser|"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_1
    and-int/lit8 v1, p0, 0x2

    .line 35
    if-eqz v1, :cond_2

    .line 37
    move v1, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v1, v2

    .line 41
    :goto_1
    if-eqz v1, :cond_3

    .line 42
    const-string v1, "dismissKeyguard|"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_3
    and-int/lit8 v1, p0, 0x4

    .line 49
    if-eqz v1, :cond_4

    .line 51
    move v1, v3

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    move v1, v2

    .line 55
    :goto_2
    if-eqz v1, :cond_5

    .line 56
    const-string/jumbo v1, "temporaryAndRenewable|"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_5
    and-int/lit8 p0, p0, 0x8

    .line 64
    if-eqz p0, :cond_6

    .line 66
    move v2, v3

    .line 68
    :cond_6
    if-eqz v2, :cond_7

    .line 69
    const-string p0, "displayMessage|"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    return-object p0
    .line 80
.end method
