.class public final Lcom/android/wm/shell/bubbles/storage/BubbleEntity;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final desiredHeight:I

.field public final desiredHeightResId:I

.field public final isDismissable:Z

.field public final key:Ljava/lang/String;

.field public final locus:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final shortcutId:Ljava/lang/String;

.field public final taskId:I

.field public final title:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    .line 11
    iput p5, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    .line 13
    iput p6, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    .line 15
    iput-object p7, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    .line 17
    iput p8, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    .line 19
    iput-object p9, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    .line 21
    iput-boolean p10, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    .line 23
    return-void
    .line 25
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
    instance-of v1, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 12
    iget v1, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 14
    iget v3, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    .line 21
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    .line 32
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    .line 43
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    .line 45
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    return v2

    .line 53
    :cond_5
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    .line 54
    iget v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    .line 56
    if-eq v1, v3, :cond_6

    .line 58
    return v2

    .line 60
    :cond_6
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    .line 61
    iget v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    .line 63
    if-eq v1, v3, :cond_7

    .line 65
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    .line 68
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    .line 70
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 75
    if-nez v1, :cond_8

    .line 76
    return v2

    .line 78
    :cond_8
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    .line 79
    iget v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    .line 81
    if-eq v1, v3, :cond_9

    .line 83
    return v2

    .line 85
    :cond_9
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    .line 86
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    .line 88
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 93
    if-nez v1, :cond_a

    .line 94
    return v2

    .line 96
    :cond_a
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    .line 97
    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    .line 99
    if-eq p0, p1, :cond_b

    .line 101
    return v2

    .line 103
    :cond_b
    return v0
    .line 104
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    .line 24
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 26
    move-result v0

    .line 29
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    .line 30
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 32
    move-result v0

    .line 35
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    .line 36
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 38
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    .line 43
    if-nez v2, :cond_0

    .line 45
    move v2, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 49
    move-result v2

    .line 52
    :goto_0
    add-int/2addr v0, v2

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget v2, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    .line 56
    const/16 v3, 0x1f

    .line 58
    invoke-static {v2, v0, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 60
    move-result v0

    .line 63
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    .line 64
    if-nez v2, :cond_1

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 69
    move-result v1

    .line 72
    :goto_1
    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    .line 76
    if-eqz p0, :cond_2

    .line 78
    const/4 p0, 0x1

    .line 80
    :cond_2
    add-int/2addr v0, p0

    .line 81
    return v0
    .line 82
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "BubbleEntity(userId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", packageName="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", shortcutId="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", key="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", desiredHeight="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", desiredHeightResId="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", title="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", taskId="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", locus="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", isDismissable="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    .line 99
    const-string v1, ")"

    .line 101
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 106
    return-object p0
    .line 107
.end method
