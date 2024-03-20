.class public final Lcom/android/systemui/keyguard/shared/model/DetectionStatus;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final isStrongBiometric:Z

.field public final sensorId:I

.field public final userId:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->sensorId:I

    .line 5
    iput p2, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->userId:I

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->isStrongBiometric:Z

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
    instance-of v1, p1, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;

    .line 12
    iget v1, p1, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->sensorId:I

    .line 14
    iget v3, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->sensorId:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->userId:I

    .line 21
    iget v3, p1, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->userId:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->isStrongBiometric:Z

    .line 28
    iget-boolean p1, p1, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->isStrongBiometric:Z

    .line 30
    if-eq p0, p1, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    return v0
    .line 35
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->sensorId:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->userId:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->isStrongBiometric:Z

    .line 18
    if-eqz p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    :cond_0
    add-int/2addr v0, p0

    .line 23
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "DetectionStatus(sensorId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->sensorId:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", userId="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->userId:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", isStrongBiometric="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;->isStrongBiometric:Z

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
