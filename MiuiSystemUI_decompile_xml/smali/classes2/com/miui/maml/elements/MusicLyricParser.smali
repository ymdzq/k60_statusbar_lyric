.class public Lcom/miui/maml/elements/MusicLyricParser;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final INTERVAL_OF_LAST:I = 0x1f40

.field private static final LINE_PARSE_IGNORE:I = 0x1

.field private static final LINE_PARSE_REGULAR:I = 0x2

.field private static final LINE_PARSE_STOP:I = 0x0

.field public static final MAX_VALID_TIME:I = 0x112a880

.field private static final TAG_ALBUM:Ljava/lang/String; = "al"

.field private static final TAG_ARTIST:Ljava/lang/String; = "ar"

.field private static final TAG_EDITOR:Ljava/lang/String; = "by"

.field private static final TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

.field private static final TAG_OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG_TITLE:Ljava/lang/String; = "ti"

.field private static final TAG_VERSION:Ljava/lang/String; = "ve"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/miui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTime(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->access$000(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-le v0, v1, :cond_1

    .line 14
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 21
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 23
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 28
    check-cast v4, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 29
    iget v4, v4, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 31
    if-ne v3, v4, :cond_1

    .line 33
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 39
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 44
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 45
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 47
    div-int/lit8 v3, v3, 0x2

    .line 49
    iput v3, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 51
    :cond_1
    move v2, v1

    .line 53
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .line 54
    if-ge v2, v3, :cond_3

    .line 56
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 62
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 64
    add-int/lit8 v4, v2, 0x1

    .line 66
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v5

    .line 71
    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 72
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 74
    if-ne v3, v5, :cond_2

    .line 76
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 81
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 82
    add-int/lit8 v2, v2, -0x1

    .line 84
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 89
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 90
    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 92
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v5

    .line 97
    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 98
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 100
    add-int/2addr v2, v5

    .line 102
    div-int/lit8 v2, v2, 0x2

    .line 103
    iput v2, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 105
    :cond_2
    move v2, v4

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    return-void
    .line 109
.end method

.method private static doParse(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .locals 7

    .line 1
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 2
    invoke-direct {v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    const-string v2, "\r\n"

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p0, :cond_3

    .line 19
    array-length v3, p0

    .line 21
    move v4, v2

    .line 22
    :goto_0
    if-ge v2, v3, :cond_2

    .line 23
    aget-object v5, p0, v2

    .line 25
    invoke-static {v5, v0, v1}, Lcom/miui/maml/elements/MusicLyricParser;->parseLine(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I

    .line 27
    move-result v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    const/4 v6, 0x1

    .line 34
    if-ne v5, v6, :cond_1

    .line 35
    move v4, v6

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    move v2, v4

    .line 41
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    move-result p0

    .line 45
    if-nez p0, :cond_4

    .line 46
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;

    .line 48
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;-><init>()V

    .line 50
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 53
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 56
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;-><init>(Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V

    .line 58
    goto :goto_2

    .line 61
    :cond_4
    const/4 p0, 0x0

    .line 62
    :goto_2
    return-object p0
    .line 63
.end method

.method private static parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    array-length v1, p0

    .line 3
    sub-int/2addr v1, v0

    .line 4
    aget-object v1, p0, v1

    .line 5
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 7
    move-result-wide v1

    .line 10
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 11
    mul-double/2addr v1, v3

    .line 16
    double-to-int v1, v1

    .line 17
    array-length v2, p0

    .line 18
    const/4 v3, 0x2

    .line 19
    sub-int/2addr v2, v3

    .line 20
    const/16 v4, 0x3c

    .line 21
    const/4 v5, 0x0

    .line 23
    move v6, v4

    .line 24
    :goto_0
    if-ltz v2, :cond_0

    .line 25
    aget-object v7, p0, v2

    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    move-result v7

    .line 32
    mul-int/2addr v7, v6

    .line 33
    mul-int/2addr v6, v4

    .line 34
    add-int/2addr v5, v7

    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    mul-int/lit16 v5, v5, 0x3e8

    .line 39
    add-int/2addr v5, v1

    .line 41
    const p0, 0x112a880

    .line 42
    if-ge v5, p0, :cond_1

    .line 45
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 47
    invoke-direct {p0, v5, p2}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .line 49
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_1
    move v0, v3

    .line 55
    :catch_0
    return v0
    .line 56
.end method

.method private static parseHeader(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;)I
    .locals 3

    .line 1
    const-string v0, ":"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ltz v0, :cond_6

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    move-result v2

    .line 14
    sub-int/2addr v2, v1

    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    add-int/2addr v0, v1

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    const-string v0, "al"

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->album:Ljava/lang/String;

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "ar"

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->artist:Ljava/lang/String;

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    const-string/jumbo v0, "ti"

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->title:Ljava/lang/String;

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "by"

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->editor:Ljava/lang/String;

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    const-string/jumbo v0, "ve"

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->version:Ljava/lang/String;

    .line 83
    goto :goto_0

    .line 85
    :cond_5
    const-string v0, "offset"

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    move-result p0

    .line 97
    iput p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    const/4 v1, 0x2

    .line 100
    :catch_0
    :cond_6
    :goto_1
    return v1
    .line 101
.end method

.method private static parseLine(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    move-result-object p0

    .line 19
    const-string v0, ""

    .line 20
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    const-string v0, "]"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 28
    move-result v2

    .line 31
    const/4 v3, -0x1

    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    return v1

    .line 35
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 36
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 41
    const-string v5, "["

    .line 42
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 44
    move-result v6

    .line 47
    if-ne v6, v3, :cond_2

    .line 48
    return v1

    .line 50
    :cond_2
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    array-length v0, p0

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v3, 0x2

    .line 61
    move v6, v2

    .line 62
    move v7, v3

    .line 63
    :goto_0
    if-ge v6, v0, :cond_6

    .line 64
    aget-object v8, p0, v6

    .line 66
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    move-result v9

    .line 71
    if-nez v9, :cond_3

    .line 72
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    move-result-object v8

    .line 78
    const-string v9, ":"

    .line 79
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    move-result-object v9

    .line 84
    array-length v10, v9

    .line 85
    if-ge v10, v3, :cond_4

    .line 86
    goto :goto_1

    .line 88
    :cond_4
    aget-object v7, v9, v2

    .line 89
    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v7

    .line 94
    if-eqz v7, :cond_5

    .line 95
    invoke-static {v9, p2, v4}, Lcom/miui/maml/elements/MusicLyricParser;->parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 97
    move-result v7

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-static {v8, p1}, Lcom/miui/maml/elements/MusicLyricParser;->parseHeader(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;)I

    .line 102
    move-result v7

    .line 105
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 106
    goto :goto_0

    .line 108
    :cond_6
    return v7
    .line 109
.end method

.method public static parseLyric(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/miui/maml/elements/MusicLyricParser;->doParse(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/miui/maml/elements/MusicLyricParser;->correctTime(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_0
    :goto_0
    return-object v0
    .line 17
.end method
