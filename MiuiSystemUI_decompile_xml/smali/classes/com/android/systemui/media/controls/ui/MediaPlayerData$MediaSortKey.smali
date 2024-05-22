.class public final Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final data:Lcom/android/systemui/media/controls/models/player/MediaData;

.field public final isSsMediaRec:Z

.field public final isSsReactivated:Z

.field public final key:Ljava/lang/String;

.field public final updateTime:J


# direct methods
.method public constructor <init>(ZLcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->key:Ljava/lang/String;

    .line 9
    iput-wide p4, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->updateTime:J

    .line 11
    iput-boolean p6, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 12
    iget-boolean v1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 14
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 21
    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

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
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->key:Ljava/lang/String;

    .line 32
    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->key:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->updateTime:J

    .line 43
    iget-wide v5, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->updateTime:J

    .line 45
    cmp-long v1, v3, v5

    .line 47
    if-eqz v1, :cond_5

    .line 49
    return v2

    .line 51
    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    .line 52
    iget-boolean p1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    .line 54
    if-eq p0, p1, :cond_6

    .line 56
    return v2

    .line 58
    :cond_6
    return v0
    .line 59
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 3
    if-eqz v1, :cond_0

    .line 5
    move v1, v0

    .line 7
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 10
    invoke-virtual {v2}, Lcom/android/systemui/media/controls/models/player/MediaData;->hashCode()I

    .line 12
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    mul-int/lit8 v2, v2, 0x1f

    .line 17
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->key:Ljava/lang/String;

    .line 19
    const/16 v3, 0x1f

    .line 21
    invoke-static {v1, v2, v3}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 23
    move-result v1

    .line 26
    iget-wide v2, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->updateTime:J

    .line 27
    const/16 v4, 0x1f

    .line 29
    invoke-static {v2, v3, v1, v4}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 31
    move-result v1

    .line 34
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    .line 35
    if-eqz p0, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    move v0, p0

    .line 40
    :goto_0
    add-int/2addr v1, v0

    .line 41
    return v1
    .line 42
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MediaSortKey(isSsMediaRec="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", data="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", key="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->key:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", updateTime="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->updateTime:J

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", isSsReactivated="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, ")"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    return-object p0
    .line 63
.end method
