.class public final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;
.super Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

.field public final id:Ljava/lang/String;

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

.field public final text:Lcom/android/systemui/common/shared/model/Text;

.field public final timeoutMs:I

.field public final vibrationEffect:Landroid/os/VibrationEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/shared/model/TintedIcon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;Landroid/os/VibrationEffect;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    .line 11
    iput p5, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    .line 13
    iput-object p6, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 17
    return-void
    .line 19
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
    instance-of v1, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    .line 25
    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

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
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    .line 36
    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

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
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    .line 47
    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    .line 49
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    return v2

    .line 57
    :cond_5
    const-string v1, "Media Transfer Chip View (Sender)"

    .line 58
    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 63
    if-nez v1, :cond_6

    .line 64
    return v2

    .line 66
    :cond_6
    const-string v1, "MEDIA_TRANSFER_ACTIVATED_SENDER"

    .line 67
    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    return v2

    .line 75
    :cond_7
    iget v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    .line 76
    iget v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    .line 78
    if-eq v1, v3, :cond_8

    .line 80
    return v2

    .line 82
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    .line 83
    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    .line 85
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    move-result v1

    .line 90
    if-nez v1, :cond_9

    .line 91
    return v2

    .line 93
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 94
    iget-object p1, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 96
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    move-result p0

    .line 101
    if-nez p0, :cond_a

    .line 102
    return v2

    .line 104
    :cond_a
    return v0
    .line 105
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/temporarydisplay/ViewPriority;->NORMAL:Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTimeoutMs()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    .line 2
    return p0
    .line 4
.end method

.method public final getWakeReason()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MEDIA_TRANSFER_ACTIVATED_SENDER"

    .line 2
    return-object p0
    .line 4
.end method

.method public final getWindowTitle()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Media Transfer Chip View (Sender)"

    .line 2
    return-object p0
    .line 4
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/common/shared/model/TintedIcon;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    const/4 v0, 0x0

    .line 19
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    .line 20
    if-nez v2, :cond_0

    .line 22
    move v2, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 26
    move-result v2

    .line 29
    :goto_0
    add-int/2addr v1, v2

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    .line 33
    if-nez v2, :cond_1

    .line 35
    move v2, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v2}, Landroid/os/VibrationEffect;->hashCode()I

    .line 39
    move-result v2

    .line 42
    :goto_1
    add-int/2addr v1, v2

    .line 43
    mul-int/lit8 v1, v1, 0x1f

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 46
    mul-int/lit8 v1, v1, 0x1f

    .line 48
    const v2, 0x2a7856c

    .line 50
    add-int/2addr v1, v2

    .line 53
    mul-int/lit8 v1, v1, 0x1f

    .line 54
    const v2, 0x3e8ba99c

    .line 56
    add-int/2addr v1, v2

    .line 59
    mul-int/lit8 v1, v1, 0x1f

    .line 60
    iget v2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    .line 62
    const/16 v3, 0x1f

    .line 64
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 66
    move-result v1

    .line 69
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    .line 70
    invoke-static {v2, v1, v3}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 72
    move-result v1

    .line 75
    sget-object v2, Lcom/android/systemui/temporarydisplay/ViewPriority;->NORMAL:Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    .line 78
    move-result v2

    .line 81
    add-int/2addr v2, v1

    .line 82
    mul-int/lit8 v2, v2, 0x1f

    .line 83
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 85
    if-nez p0, :cond_2

    .line 87
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->hashCode()I

    .line 90
    move-result v0

    .line 93
    :goto_2
    add-int/2addr v2, v0

    .line 94
    return v2
    .line 95
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ChipbarInfo(startIcon="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", text="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", endItem="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", vibrationEffect="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", allowSwipeToDismiss=true, windowTitle=Media Transfer Chip View (Sender), wakeReason=MEDIA_TRANSFER_ACTIVATED_SENDER, timeoutMs="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", id="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", priority="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-object v1, Lcom/android/systemui/temporarydisplay/ViewPriority;->NORMAL:Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", instanceId="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string p0, ")"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    return-object p0
    .line 93
.end method
