.class public final Lcom/android/systemui/shade/domain/model/ShadeModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final expansionAmount:F

.field public final isExpanded:Z

.field public final isUserDragging:Z


# direct methods
.method public constructor <init>(FZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->expansionAmount:F

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->isExpanded:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->isUserDragging:Z

    .line 9
    return-void
    .line 11
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
    instance-of v1, p1, Lcom/android/systemui/shade/domain/model/ShadeModel;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/shade/domain/model/ShadeModel;

    .line 12
    iget v1, p1, Lcom/android/systemui/shade/domain/model/ShadeModel;->expansionAmount:F

    .line 14
    iget v3, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->expansionAmount:F

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
    iget-boolean v1, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->isExpanded:Z

    .line 25
    iget-boolean v3, p1, Lcom/android/systemui/shade/domain/model/ShadeModel;->isExpanded:Z

    .line 27
    if-eq v1, v3, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->isUserDragging:Z

    .line 32
    iget-boolean p1, p1, Lcom/android/systemui/shade/domain/model/ShadeModel;->isUserDragging:Z

    .line 34
    if-eq p0, p1, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    return v0
    .line 39
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->expansionAmount:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    const/4 v1, 0x1

    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->isExpanded:Z

    .line 11
    if-eqz v2, :cond_0

    .line 13
    move v2, v1

    .line 15
    :cond_0
    add-int/2addr v0, v2

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->isUserDragging:Z

    .line 19
    if-eqz p0, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move v1, p0

    .line 24
    :goto_0
    add-int/2addr v0, v1

    .line 25
    return v0
    .line 26
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ShadeModel(expansionAmount="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->expansionAmount:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", isExpanded="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->isExpanded:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", isUserDragging="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/shade/domain/model/ShadeModel;->isUserDragging:Z

    .line 29
    const-string v1, ")"

    .line 31
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method
