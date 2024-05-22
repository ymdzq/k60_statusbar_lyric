.class public final Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;
.super Lcom/android/systemui/multishade/shared/model/ShadeConfig;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final swipeCollapseThreshold:F

.field public final swipeExpandThreshold:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/multishade/shared/model/ShadeId;->SINGLE:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/systemui/multishade/shared/model/ShadeConfig;-><init>(Ljava/util/List;)V

    .line 8
    iput p1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeCollapseThreshold:F

    .line 11
    iput p2, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeExpandThreshold:F

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
    instance-of v1, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;

    .line 12
    iget v1, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeCollapseThreshold:F

    .line 14
    iget v3, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeCollapseThreshold:F

    .line 16
    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget p0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeExpandThreshold:F

    .line 25
    iget p1, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeExpandThreshold:F

    .line 27
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 29
    move-result p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    return v0
    .line 36
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeCollapseThreshold:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget p0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeExpandThreshold:F

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 12
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
    .line 17
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "SingleShadeConfig(swipeCollapseThreshold="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeCollapseThreshold:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", swipeExpandThreshold="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget p0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;->swipeExpandThreshold:F

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, ")"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method
