.class public final Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public iconImage:Landroid/graphics/Bitmap;

.field public isDataUsageAvailable:Z

.field public text1:Ljava/lang/CharSequence;

.field public text2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text2:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text1:Ljava/lang/CharSequence;

    .line 8
    iput-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->iconImage:Landroid/graphics/Bitmap;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable:Z

    .line 13
    return-void
    .line 15
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
    instance-of v1, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text2:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text2:Ljava/lang/String;

    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text1:Ljava/lang/CharSequence;

    .line 25
    iget-object v3, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text1:Ljava/lang/CharSequence;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->iconImage:Landroid/graphics/Bitmap;

    .line 36
    iget-object v3, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->iconImage:Landroid/graphics/Bitmap;

    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable:Z

    .line 47
    iget-boolean p1, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable:Z

    .line 49
    if-eq p0, p1, :cond_5

    .line 51
    return v2

    .line 53
    :cond_5
    return v0
    .line 54
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text2:Ljava/lang/String;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text1:Ljava/lang/CharSequence;

    .line 15
    if-nez v2, :cond_1

    .line 17
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->iconImage:Landroid/graphics/Bitmap;

    .line 28
    if-nez v2, :cond_2

    .line 30
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hashCode()I

    .line 33
    move-result v1

    .line 36
    :goto_2
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable:Z

    .line 40
    if-eqz p0, :cond_3

    .line 42
    const/4 p0, 0x1

    .line 44
    :cond_3
    add-int/2addr v0, p0

    .line 45
    return v0
    .line 46
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text2:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text1:Ljava/lang/CharSequence;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->iconImage:Landroid/graphics/Bitmap;

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable:Z

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    const-string v4, "DataUsageInfo(text2="

    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, ", text1="

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, ", iconImage="

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, ", isDataUsageAvailable="

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, ")"

    .line 44
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    return-object p0
    .line 53
.end method
