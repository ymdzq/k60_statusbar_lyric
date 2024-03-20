.class Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final CRLF_LENGTH:I

.field mFullLyric:Ljava/lang/String;

.field mLyricLines:Ljava/util/ArrayList;

.field mTimeArr:[I

.field final synthetic this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    .line 8
    return-void
    .line 10
.end method

.method private getLineNumber(J)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 3
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_2

    .line 6
    aget v2, v1, v0

    .line 8
    int-to-long v2, v2

    .line 10
    cmp-long v2, p1, v2

    .line 11
    if-ltz v2, :cond_1

    .line 13
    array-length v2, v1

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    if-ge v0, v2, :cond_0

    .line 18
    add-int/lit8 v2, v0, 0x1

    .line 20
    aget v1, v1, v2

    .line 22
    int-to-long v1, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 26
    :goto_1
    cmp-long v1, p1, v1

    .line 31
    if-gez v1, :cond_1

    .line 33
    return v0

    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    const/4 p0, -0x1

    .line 39
    return p0
    .line 40
.end method

.method private inflateLyricLines(Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    if-eqz p1, :cond_5

    .line 7
    array-length v0, v0

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    goto/16 :goto_4

    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    .line 25
    move v2, v0

    .line 26
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 27
    array-length v3, v3

    .line 29
    if-ge v2, v3, :cond_3

    .line 30
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/CharSequence;

    .line 36
    new-instance v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 38
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 40
    invoke-direct {v4, v5}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;-><init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 42
    iput-object v3, v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 45
    if-lez v2, :cond_1

    .line 47
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 49
    add-int/lit8 v5, v2, -0x1

    .line 51
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 56
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 57
    goto :goto_1

    .line 59
    :cond_1
    move-object v3, v1

    .line 60
    :goto_1
    if-eqz v3, :cond_2

    .line 61
    iget v5, v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 63
    iget-object v3, v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 65
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 67
    move-result v3

    .line 70
    add-int/2addr v3, v5

    .line 71
    iget v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    .line 72
    add-int/2addr v3, v5

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move v3, v0

    .line 76
    :goto_2
    iput v3, v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 77
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    const-string p1, ""

    .line 87
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 89
    :goto_3
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result p1

    .line 96
    if-ge v0, p1, :cond_4

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v1

    .line 114
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 115
    iget-object v1, v1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "\r\n"

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 133
    goto :goto_3

    .line 135
    :cond_4
    return-void

    .line 136
    :cond_5
    :goto_4
    iput-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 137
    iput-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 139
    return-void
    .line 141
.end method


# virtual methods
.method public getAfterLines(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 8
    move-result p1

    .line 11
    if-gez p1, :cond_1

    .line 12
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 14
    return-object p0

    .line 16
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 17
    array-length p2, p2

    .line 19
    add-int/lit8 p2, p2, -0x1

    .line 20
    if-ge p1, p2, :cond_2

    .line 22
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 29
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 30
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 32
    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 34
    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 38
    move-result p1

    .line 41
    add-int/2addr p1, v0

    .line 42
    iget v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    .line 43
    add-int/2addr p1, v0

    .line 45
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 48
    move-result p0

    .line 51
    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_2
    return-object v1
    .line 57
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 8
    move-result p1

    .line 11
    if-lez p1, :cond_1

    .line 12
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 20
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 22
    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 24
    iget p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    .line 26
    sub-int/2addr p1, p0

    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    return-object v1
    .line 35
.end method

.method public getLastLine(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 8
    move-result p1

    .line 11
    if-lez p1, :cond_1

    .line 12
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 16
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 24
    iget p2, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 26
    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    move-result p1

    .line 33
    add-int/2addr p1, p2

    .line 34
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    return-object v1
    .line 40
.end method

.method public getLine(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 8
    move-result p1

    .line 11
    const/4 p2, -0x1

    .line 12
    if-eq p1, p2, :cond_1

    .line 13
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 21
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 23
    iget p2, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 25
    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 29
    move-result p1

    .line 32
    add-int/2addr p1, p2

    .line 33
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    return-object v1
    .line 39
.end method

.method public getNextLine(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 8
    move-result p1

    .line 11
    const/4 p2, -0x1

    .line 12
    if-lt p1, p2, :cond_1

    .line 13
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 15
    array-length p2, p2

    .line 17
    add-int/lit8 p2, p2, -0x1

    .line 18
    if-ge p1, p2, :cond_1

    .line 20
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 24
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 29
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 30
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 32
    iget p2, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 34
    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 38
    move-result p1

    .line 41
    add-int/2addr p1, p2

    .line 42
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    return-object v1
    .line 48
.end method

.method public set([ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 2
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->inflateLyricLines(Ljava/util/ArrayList;)V

    .line 4
    return-void
    .line 7
.end method
