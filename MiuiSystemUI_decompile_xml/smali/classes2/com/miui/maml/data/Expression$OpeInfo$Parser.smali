.class public Lcom/miui/maml/data/Expression$OpeInfo$Parser;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mFlags:[I

.field private mMatch:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    .line 5
    move-result v0

    .line 8
    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public accept(CZ)Z
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_1

    .line 4
    move p2, v1

    .line 6
    :goto_0
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    .line 7
    move-result v2

    .line 10
    if-ge p2, v2, :cond_0

    .line 11
    iget-object v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 13
    aput v1, v2, p2

    .line 15
    add-int/lit8 p2, p2, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iput v1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 20
    iput v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 22
    :cond_1
    move p2, v1

    .line 24
    move v2, p2

    .line 25
    :goto_1
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    .line 26
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-ge p2, v3, :cond_6

    .line 31
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 33
    aget v3, v3, p2

    .line 35
    if-ne v3, v0, :cond_2

    .line 37
    goto :goto_3

    .line 39
    :cond_2
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$100()[Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 43
    aget-object v3, v3, p2

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 46
    move-result v5

    .line 49
    iget v6, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 50
    if-le v5, v6, :cond_5

    .line 52
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    .line 54
    move-result v5

    .line 57
    if-ne v5, p1, :cond_5

    .line 58
    iget v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 62
    move-result v3

    .line 65
    sub-int/2addr v3, v4

    .line 66
    if-ne v2, v3, :cond_3

    .line 67
    move v2, v4

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v2, v1

    .line 71
    :goto_2
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 72
    aput v1, v3, p2

    .line 74
    if-eqz v2, :cond_4

    .line 76
    iput p2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 78
    :cond_4
    move v2, v4

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 82
    aput v0, v3, p2

    .line 84
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 86
    goto :goto_1

    .line 88
    :cond_6
    if-eqz v2, :cond_7

    .line 89
    iget p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 91
    add-int/2addr p1, v4

    .line 93
    iput p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 94
    :cond_7
    return v2
    .line 96
.end method

.method public getMatch()Lcom/miui/maml/data/Expression$Ope;
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/miui/maml/data/Expression$Ope;->values()[Lcom/miui/maml/data/Expression$Ope;

    .line 10
    move-result-object v0

    .line 13
    iget p0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 14
    aget-object p0, v0, p0

    .line 16
    :goto_0
    return-object p0
    .line 18
.end method
