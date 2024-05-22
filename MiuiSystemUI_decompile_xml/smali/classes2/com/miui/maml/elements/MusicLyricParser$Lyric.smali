.class public Lcom/miui/maml/elements/MusicLyricParser$Lyric;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private final EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

.field private final EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

.field private final mEntityList:Ljava/util/ArrayList;

.field private final mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

.field private mIsModified:Z

.field private mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

.field private final mOpenTime:J

.field private mOriginHeaderOffset:I


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 5
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;-><init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 18
    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 20
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    .line 22
    iput-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 24
    iput-boolean p3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 26
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 28
    const/4 p3, -0x1

    .line 30
    const-string v0, "\n"

    .line 31
    invoke-direct {p1, p3, v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 36
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result p2

    .line 43
    invoke-direct {p1, p2, v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 47
    return-void
    .line 49
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method private getTimeFromLyricShot(ID)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 2
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    if-lt p1, v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 16
    iget p0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 18
    sub-int/2addr p1, v0

    .line 20
    mul-int/lit16 p1, p1, 0x1f40

    .line 21
    add-int/2addr p1, p0

    .line 23
    int-to-long p0, p1

    .line 24
    const-wide v0, 0x40bf400000000000L    # 8000.0

    .line 25
    mul-double/2addr p2, v0

    .line 30
    double-to-long p2, p2

    .line 31
    add-long/2addr p0, p2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 40
    iget v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 42
    int-to-double v0, v0

    .line 44
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 45
    add-int/lit8 v3, p1, 0x1

    .line 47
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 53
    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 55
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 62
    check-cast p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 63
    iget p0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 65
    sub-int/2addr v2, p0

    .line 67
    int-to-double p0, v2

    .line 68
    mul-double/2addr p0, p2

    .line 69
    add-double/2addr p0, v0

    .line 70
    double-to-long p0, p0

    .line 71
    :goto_0
    return-wide p0
    .line 72
.end method


# virtual methods
.method public addOffset(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 2
    iget v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 4
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 7
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 10
    return-void
    .line 12
.end method

.method public correctLyric(Lcom/miui/maml/elements/MusicLyricParser$LyricShot;ID)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 2
    move-result v0

    .line 5
    if-ltz p2, :cond_5

    .line 6
    if-gt p2, v0, :cond_5

    .line 8
    iget v1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    .line 10
    if-ltz v1, :cond_5

    .line 12
    if-le v1, v0, :cond_0

    .line 14
    goto :goto_2

    .line 16
    :cond_0
    iget-wide v2, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 17
    invoke-direct {p0, v1, v2, v3}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    .line 19
    move-result-wide v0

    .line 22
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    .line 23
    move-result-wide v2

    .line 26
    iget v4, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    .line 27
    if-gt p2, v4, :cond_2

    .line 29
    if-ne p2, v4, :cond_1

    .line 31
    iget-wide p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 33
    cmpl-double p1, p3, p1

    .line 35
    if-lez p1, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 42
    :goto_1
    if-nez p1, :cond_3

    .line 43
    cmp-long p2, v0, v2

    .line 45
    if-lez p2, :cond_3

    .line 47
    return-void

    .line 49
    :cond_3
    if-eqz p1, :cond_4

    .line 50
    cmp-long p1, v0, v2

    .line 52
    if-gez p1, :cond_4

    .line 54
    return-void

    .line 56
    :cond_4
    sub-long/2addr v0, v2

    .line 57
    long-to-int p1, v0

    .line 58
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->addOffset(I)V

    .line 59
    :cond_5
    :goto_2
    return-void
    .line 62
.end method

.method public decorate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 16
    if-lez v0, :cond_2

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 24
    invoke-virtual {v2}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->isDecorated()Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    if-ge v1, v0, :cond_2

    .line 33
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 39
    invoke-virtual {v2}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->decorate()V

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    return-void
    .line 47
.end method

.method public getAfterLines(J)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getAfterLines(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getBeforeLines(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getLastLine(J)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLastLine(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getLine(J)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLine(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getLyricContent(I)Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 12
    if-lt p1, v0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 24
    :goto_0
    return-object p0
    .line 26
.end method

.method public getLyricShot(J)Lcom/miui/maml/elements/MusicLyricParser$LyricShot;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 2
    iget v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 4
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 13
    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 15
    add-int/2addr v1, v0

    .line 17
    int-to-long v3, v1

    .line 18
    cmp-long v1, v3, p1

    .line 19
    const-wide/16 v3, 0x0

    .line 21
    if-lez v1, :cond_0

    .line 23
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 25
    invoke-direct {p0, v2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 27
    return-object p0

    .line 30
    :cond_0
    const/4 v1, 0x1

    .line 31
    move v2, v1

    .line 32
    :goto_0
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v5

    .line 38
    if-ge v2, v5, :cond_3

    .line 39
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 46
    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 47
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 49
    add-int/2addr v5, v0

    .line 51
    int-to-long v6, v5

    .line 52
    cmp-long v6, v6, p1

    .line 53
    if-lez v6, :cond_2

    .line 55
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 57
    sub-int/2addr v2, v1

    .line 59
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 63
    check-cast p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 64
    iget p0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 66
    add-int/2addr p0, v0

    .line 68
    if-le v5, p0, :cond_1

    .line 69
    int-to-long v0, p0

    .line 71
    sub-long/2addr p1, v0

    .line 72
    long-to-double p1, p1

    .line 73
    sub-int/2addr v5, p0

    .line 74
    int-to-double v0, v5

    .line 75
    div-double v3, p1, v0

    .line 76
    :cond_1
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 78
    invoke-direct {p0, v2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 80
    return-object p0

    .line 83
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 89
    move-result v5

    .line 92
    sub-int/2addr v5, v1

    .line 93
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 97
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 98
    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 100
    add-int/2addr v2, v0

    .line 102
    int-to-long v5, v2

    .line 103
    sub-long/2addr p1, v5

    .line 104
    const-wide/16 v5, 0x1f40

    .line 105
    cmp-long v0, p1, v5

    .line 107
    if-gez v0, :cond_4

    .line 109
    long-to-double p1, p1

    .line 111
    const-wide v2, 0x40bf400000000000L    # 8000.0

    .line 112
    div-double/2addr p1, v2

    .line 117
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 118
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 120
    move-result p0

    .line 123
    sub-int/2addr p0, v1

    .line 124
    invoke-direct {v0, p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 125
    return-object v0

    .line 128
    :cond_4
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 129
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 133
    move-result p0

    .line 136
    invoke-direct {p1, p0, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 137
    return-object p1
    .line 140
.end method

.method public getNextLine(J)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getNextLine(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getOpenTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public getStringArr()Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 39
    iget-object v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
    .line 47
.end method

.method public getTimeArr()[I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 17
    new-array v0, v0, [I

    .line 18
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 37
    add-int/lit8 v4, v2, 0x1

    .line 39
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 41
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 43
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 45
    add-int/2addr v3, v5

    .line 47
    aput v3, v0, v2

    .line 48
    move v2, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
    .line 52
.end method

.method public isModified()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 2
    return p0
    .line 4
.end method

.method public recycleContent()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4
    return-void
    .line 7
.end method

.method public resetHeaderOffset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 2
    iget p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    .line 4
    iput p0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 6
    return-void
    .line 8
.end method

.method public set([ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->set([ILjava/util/ArrayList;)V

    .line 4
    return-void
    .line 7
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
