.class public final Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mIdMap:Ljava/util/HashMap;

.field public final mNames:Ljava/util/HashMap;

.field public mSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public mUnknownCount:I

.field public mWriter:Ljava/io/Writer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroidx/constraintlayout/helper/widget/LogJson;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mUnknownCount:I

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mIdMap:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mNames:Ljava/util/HashMap;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final getName(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->getSimpleName(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final getSimpleName(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mIdMap:Ljava/util/HashMap;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 11
    const-string v2, ""

    .line 12
    if-eqz v1, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    if-nez p1, :cond_1

    .line 39
    const-string p0, "parent"

    .line 41
    return-object p0

    .line 43
    :cond_1
    const-string/jumbo v1, "unknown"

    .line 44
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mNames:Ljava/util/HashMap;

    .line 47
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/String;

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    const/4 v3, -0x1

    .line 70
    if-eq p1, v3, :cond_3

    .line 71
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object v3

    .line 78
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget v4, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mUnknownCount:I

    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 91
    iput v4, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mUnknownCount:I

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 102
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget v1, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mUnknownCount:I

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 110
    iput v1, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mUnknownCount:I

    .line 112
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 120
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object p0

    .line 124
    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 142
    return-object p0
    .line 143
.end method

.method public final writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 6
    const-string v1, "    "

    .line 8
    invoke-virtual {v1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p4

    .line 13
    invoke-virtual {v0, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    iget-object p4, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 17
    const-string v0, ":["

    .line 19
    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 21
    iget-object p4, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 24
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->getName(I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 33
    const-string p4, ", "

    .line 35
    invoke-virtual {p1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "\'"

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p5

    .line 58
    invoke-virtual {p1, p5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 59
    const/high16 p1, -0x80000000

    .line 62
    if-nez p2, :cond_1

    .line 64
    if-eq p3, p1, :cond_2

    .line 66
    :cond_1
    iget-object p5, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 81
    invoke-virtual {p5, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 82
    if-eq p3, p1, :cond_2

    .line 85
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 104
    const-string p1, "],\n"

    .line 106
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    return-void
    .line 111
.end method

.method public final writeDimension(Ljava/lang/String;IIFII)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "    "

    .line 3
    if-nez p2, :cond_9

    .line 5
    const/4 p2, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne p6, v0, :cond_3

    .line 9
    if-eq p5, v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    if-eq p3, v2, :cond_2

    .line 14
    if-eq p3, p2, :cond_1

    .line 16
    goto/16 :goto_2

    .line 18
    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, ": \'"

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, "%\',\n"

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 47
    goto/16 :goto_2

    .line 50
    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string p1, ": \'???????????\',\n"

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    return-void

    .line 74
    :cond_3
    :goto_0
    if-eqz p3, :cond_6

    .line 75
    if-eq p3, v2, :cond_5

    .line 77
    if-eq p3, p2, :cond_4

    .line 79
    const-string p1, "-----"

    .line 81
    goto :goto_1

    .line 83
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string p1, ": {value: \'"

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    const-string p1, "%\'"

    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    const-string p2, ": {value:\'wrap\'"

    .line 110
    invoke-static {v1, p1, p2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 115
    goto :goto_1

    .line 116
    :cond_6
    const-string p2, ": {value:\'spread\'"

    .line 117
    invoke-static {v1, p1, p2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 122
    :goto_1
    if-eq p6, v0, :cond_7

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string p1, ", max: "

    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 144
    :cond_7
    if-eq p6, v0, :cond_8

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string p1, ", min: "

    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 166
    :cond_8
    const-string/jumbo p2, "},\n"

    .line 167
    invoke-static {p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 173
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 174
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 176
    return-void

    .line 179
    :cond_9
    const/4 p3, -0x2

    .line 180
    if-ne p2, p3, :cond_a

    .line 181
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 183
    new-instance p2, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string p1, ": \'wrap\',\n"

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 202
    goto :goto_2

    .line 205
    :cond_a
    if-ne p2, v0, :cond_b

    .line 206
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string p1, ": \'parent\',\n"

    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 227
    goto :goto_2

    .line 230
    :cond_b
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 231
    new-instance p3, Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string p1, ": "

    .line 241
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string p1, ",\n"

    .line 249
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 257
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 258
    :goto_2
    return-void
    .line 261
.end method

.method public final writeLayout()V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 4
    const-string/jumbo v1, "{\n"

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 12
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    .line 14
    move-result-object v8

    .line 17
    array-length v9, v8

    .line 18
    const/4 v10, 0x0

    .line 19
    move v11, v10

    .line 20
    :goto_0
    if-ge v11, v9, :cond_11

    .line 21
    aget v0, v8, v11

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v1

    .line 32
    iget-object v2, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 33
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 35
    move-result-object v12

    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v0

    .line 42
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->getSimpleName(I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 46
    const-string v1, "LogJson"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    goto/16 :goto_b

    .line 55
    :cond_0
    iget-object v1, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "  "

    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v3, ":{\n"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    iget-object v13, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 81
    iget-object v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 83
    const-string v2, ""

    .line 85
    const-string v3, "]\n"

    .line 87
    const-string v14, ", "

    .line 89
    if-eqz v1, :cond_3

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v4, "type: \'_"

    .line 95
    const-string v5, "_\' , contains: ["

    .line 98
    invoke-static {v4, v0, v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 103
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    move v0, v10

    .line 107
    :goto_1
    iget-object v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 108
    array-length v5, v4

    .line 110
    if-ge v0, v5, :cond_2

    .line 111
    aget v4, v4, v0

    .line 113
    if-nez v0, :cond_1

    .line 115
    move-object v5, v2

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    move-object v5, v14

    .line 119
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->getName(I)Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 126
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 130
    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 150
    :cond_3
    iget-object v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 153
    if-eqz v0, :cond_6

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "  type: \'???\' , contains: ["

    .line 159
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 164
    const-string v4, ","

    .line 166
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 171
    move v4, v10

    .line 172
    :goto_3
    array-length v5, v1

    .line 173
    if-ge v4, v5, :cond_5

    .line 174
    aget-object v5, v1, v4

    .line 176
    if-nez v4, :cond_4

    .line 178
    move-object v6, v2

    .line 180
    goto :goto_4

    .line 181
    :cond_4
    move-object v6, v14

    .line 182
    :goto_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v6, "`"

    .line 186
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    add-int/lit8 v4, v4, 0x1

    .line 197
    goto :goto_3

    .line 199
    :cond_5
    iget-object v1, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 216
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 217
    :cond_6
    const-string v1, "height"

    .line 220
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 222
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 224
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 226
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 228
    iget v6, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 230
    move-object/from16 v0, p0

    .line 232
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeDimension(Ljava/lang/String;IIFII)V

    .line 234
    const-string/jumbo v1, "width"

    .line 237
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 240
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 242
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 244
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 246
    iget v6, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 248
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeDimension(Ljava/lang/String;IIFII)V

    .line 250
    const-string v4, "left"

    .line 253
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 255
    const-string v5, "left"

    .line 257
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 259
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 261
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v4, "left"

    .line 266
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 268
    const-string/jumbo v5, "right"

    .line 270
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 273
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 275
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v4, "right"

    .line 280
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 283
    const-string v5, "left"

    .line 285
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 287
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 289
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v4, "right"

    .line 294
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 297
    const-string/jumbo v5, "right"

    .line 299
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 302
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 304
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v4, "baseline"

    .line 309
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 311
    const-string v5, "baseline"

    .line 313
    const/4 v6, -0x1

    .line 315
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 316
    const/4 v15, -0x1

    .line 318
    move v2, v15

    .line 319
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v4, "baseline"

    .line 323
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 325
    const-string/jumbo v5, "top"

    .line 327
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 330
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v4, "baseline"

    .line 335
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 337
    const-string v5, "bottom"

    .line 339
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 341
    move v2, v6

    .line 343
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v4, "top"

    .line 347
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 350
    const-string v5, "bottom"

    .line 352
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 354
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 356
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v4, "top"

    .line 361
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 364
    const-string/jumbo v5, "top"

    .line 366
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 369
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 371
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v4, "bottom"

    .line 376
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 378
    const-string v5, "bottom"

    .line 380
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 382
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 384
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v4, "bottom"

    .line 389
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 391
    const-string/jumbo v5, "top"

    .line 393
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 396
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 398
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v4, "start"

    .line 403
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 406
    const-string/jumbo v5, "start"

    .line 408
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 411
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 413
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string/jumbo v4, "start"

    .line 418
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 421
    const-string v5, "end"

    .line 423
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 425
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 427
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v4, "end"

    .line 432
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 434
    const-string/jumbo v5, "start"

    .line 436
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 439
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 441
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v4, "end"

    .line 446
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 448
    const-string v5, "end"

    .line 450
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 452
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 454
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeConstraint(IIILjava/lang/String;Ljava/lang/String;)V

    .line 456
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 459
    const-string v1, "horizontalBias"

    .line 461
    const/high16 v2, 0x3f000000    # 0.5f

    .line 463
    invoke-virtual {v7, v1, v0, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 465
    const-string/jumbo v0, "verticalBias"

    .line 468
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 471
    invoke-virtual {v7, v0, v1, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 473
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 476
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 478
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 480
    const/4 v3, -0x1

    .line 482
    const-string v4, "],\n"

    .line 483
    if-ne v0, v3, :cond_7

    .line 485
    goto :goto_5

    .line 487
    :cond_7
    iget-object v3, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 488
    const-string v5, "    circle"

    .line 490
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 492
    iget-object v3, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 495
    const-string v5, ":["

    .line 497
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 499
    iget-object v3, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 502
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->getName(I)Ljava/lang/String;

    .line 504
    move-result-object v0

    .line 507
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 508
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    .line 513
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 525
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    .line 530
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    move-result-object v1

    .line 544
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 545
    :goto_5
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 548
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 550
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 552
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 554
    const-string v5, "orientation"

    .line 556
    invoke-virtual {v7, v0, v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(ILjava/lang/String;)V

    .line 558
    const-string v0, "guideBegin"

    .line 561
    invoke-virtual {v7, v1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(ILjava/lang/String;)V

    .line 563
    const-string v0, "guideEnd"

    .line 566
    invoke-virtual {v7, v2, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(ILjava/lang/String;)V

    .line 568
    const-string v0, "guidePercent"

    .line 571
    invoke-virtual {v7, v0, v3}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;F)V

    .line 573
    const-string v0, "dimensionRatio"

    .line 576
    iget-object v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 578
    invoke-virtual {v7, v0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "barrierMargin"

    .line 583
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 585
    invoke-virtual {v7, v1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(ILjava/lang/String;)V

    .line 587
    const-string/jumbo v0, "type"

    .line 590
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 593
    invoke-virtual {v7, v1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(ILjava/lang/String;)V

    .line 595
    const-string v0, "ReferenceId"

    .line 598
    iget-object v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 600
    invoke-virtual {v7, v0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-boolean v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 605
    const/4 v1, 0x1

    .line 607
    const-string v2, ",\n"

    .line 608
    const-string v3, ": "

    .line 610
    if-ne v0, v1, :cond_8

    .line 612
    goto :goto_6

    .line 614
    :cond_8
    iget-object v1, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 615
    const-string v5, "    mBarrierAllowsGoneWidgets"

    .line 617
    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 619
    iget-object v1, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 622
    new-instance v5, Ljava/lang/StringBuilder;

    .line 624
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    move-result-object v0

    .line 635
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 636
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 639
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 641
    :goto_6
    const-string v0, "WrapBehavior"

    .line 644
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 646
    invoke-virtual {v7, v1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(ILjava/lang/String;)V

    .line 648
    const-string/jumbo v0, "verticalWeight"

    .line 651
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 654
    invoke-virtual {v7, v0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;F)V

    .line 656
    const-string v0, "horizontalWeight"

    .line 659
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 661
    invoke-virtual {v7, v0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;F)V

    .line 663
    const-string v0, "horizontalChainStyle"

    .line 666
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 668
    invoke-virtual {v7, v1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(ILjava/lang/String;)V

    .line 670
    const-string/jumbo v0, "verticalChainStyle"

    .line 673
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 676
    invoke-virtual {v7, v1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(ILjava/lang/String;)V

    .line 678
    const-string v0, "barrierDirection"

    .line 681
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 683
    invoke-virtual {v7, v1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(ILjava/lang/String;)V

    .line 685
    iget-object v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 688
    if-eqz v0, :cond_b

    .line 690
    iget-object v1, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 692
    const-string v5, "    ReferenceIds"

    .line 694
    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 696
    iget-object v1, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 699
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 701
    move v1, v10

    .line 704
    :goto_7
    array-length v5, v0

    .line 705
    if-ge v1, v5, :cond_a

    .line 706
    iget-object v5, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 708
    new-instance v6, Ljava/lang/StringBuilder;

    .line 710
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    if-nez v1, :cond_9

    .line 715
    const-string v13, "["

    .line 717
    goto :goto_8

    .line 719
    :cond_9
    move-object v13, v14

    .line 720
    :goto_8
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    aget v13, v0, v1

    .line 724
    invoke-virtual {v7, v13}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->getName(I)Ljava/lang/String;

    .line 726
    move-result-object v13

    .line 729
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    move-result-object v6

    .line 736
    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 737
    add-int/lit8 v1, v1, 0x1

    .line 740
    goto :goto_7

    .line 742
    :cond_a
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 743
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 745
    :cond_b
    iget-object v0, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 748
    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 750
    if-eqz v1, :cond_c

    .line 752
    const-string v1, "elevation"

    .line 754
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 756
    invoke-virtual {v7, v1, v4}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;F)V

    .line 758
    :cond_c
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 761
    const-string/jumbo v4, "rotationX"

    .line 763
    const/4 v5, 0x0

    .line 766
    invoke-virtual {v7, v4, v1, v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 767
    const-string/jumbo v1, "rotationY"

    .line 770
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 773
    invoke-virtual {v7, v1, v4, v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 775
    const-string/jumbo v1, "rotationZ"

    .line 778
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 781
    invoke-virtual {v7, v1, v4, v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 783
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 786
    const-string/jumbo v4, "scaleX"

    .line 788
    const/high16 v6, 0x3f800000    # 1.0f

    .line 791
    invoke-virtual {v7, v4, v1, v6}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 793
    const-string/jumbo v1, "scaleY"

    .line 796
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 799
    invoke-virtual {v7, v1, v4, v6}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 801
    const-string/jumbo v1, "translationX"

    .line 804
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 807
    invoke-virtual {v7, v1, v4, v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 809
    const-string/jumbo v1, "translationY"

    .line 812
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 815
    invoke-virtual {v7, v1, v4, v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 817
    const-string/jumbo v1, "translationZ"

    .line 820
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 823
    invoke-virtual {v7, v1, v0, v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeVariable(Ljava/lang/String;FF)V

    .line 825
    iget-object v0, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 828
    if-eqz v0, :cond_10

    .line 830
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 832
    move-result v1

    .line 835
    if-lez v1, :cond_10

    .line 836
    iget-object v1, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 838
    const-string v4, "    custom: {\n"

    .line 840
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 845
    move-result-object v1

    .line 848
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 849
    move-result-object v1

    .line 852
    :cond_d
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 853
    move-result v4

    .line 856
    if-eqz v4, :cond_f

    .line 857
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 859
    move-result-object v4

    .line 862
    check-cast v4, Ljava/lang/String;

    .line 863
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    move-result-object v4

    .line 868
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 869
    if-nez v4, :cond_e

    .line 871
    goto :goto_9

    .line 873
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 874
    const-string v6, "      "

    .line 876
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 878
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 881
    invoke-static {v5, v6, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 883
    move-result-object v5

    .line 886
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 887
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 889
    move-result v6

    .line 892
    packed-switch v6, :pswitch_data_0

    .line 893
    goto :goto_a

    .line 896
    :pswitch_0
    invoke-static {v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    move-result-object v5

    .line 900
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 901
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    move-result-object v5

    .line 909
    goto :goto_a

    .line 910
    :pswitch_1
    const-string v6, "\'"

    .line 911
    invoke-static {v5, v6}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    move-result-object v5

    .line 916
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    .line 917
    invoke-static {v5, v4, v6}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 919
    move-result-object v5

    .line 922
    goto :goto_a

    .line 923
    :pswitch_2
    const/4 v5, 0x0

    .line 924
    goto :goto_a

    .line 925
    :pswitch_3
    invoke-static {v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    move-result-object v5

    .line 929
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 930
    new-instance v6, Ljava/lang/StringBuilder;

    .line 932
    const-string v12, "00000000"

    .line 934
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 936
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 939
    move-result-object v4

    .line 942
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 946
    move-result-object v4

    .line 949
    new-instance v6, Ljava/lang/StringBuilder;

    .line 950
    const-string v12, "#"

    .line 952
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 957
    move-result v12

    .line 960
    add-int/lit8 v12, v12, -0x8

    .line 961
    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 963
    move-result-object v4

    .line 966
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 970
    move-result-object v4

    .line 973
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 977
    move-result-object v5

    .line 980
    goto :goto_a

    .line 981
    :pswitch_4
    invoke-static {v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    move-result-object v5

    .line 985
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 986
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 991
    move-result-object v5

    .line 994
    goto :goto_a

    .line 995
    :pswitch_5
    invoke-static {v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    move-result-object v5

    .line 999
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 1000
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1005
    move-result-object v5

    .line 1008
    :goto_a
    if-eqz v5, :cond_d

    .line 1009
    iget-object v4, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 1011
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    move-result-object v5

    .line 1016
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1017
    goto/16 :goto_9

    .line 1020
    :cond_f
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 1022
    const-string v1, "     } \n"

    .line 1024
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1026
    :cond_10
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 1029
    const-string v1, "  },\n"

    .line 1031
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1033
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 1036
    goto/16 :goto_0

    .line 1038
    :cond_11
    iget-object v0, v7, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 1040
    const-string/jumbo v1, "},\n"

    .line 1042
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1045
    return-void

    .line 1048
    nop

    .line 1049
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
    .line 1050
.end method

.method public final writeVariable(ILjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v1, "    "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final writeVariable(Ljava/lang/String;F)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v1, "    "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final writeVariable(Ljava/lang/String;FF)V
    .locals 1

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object p3, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v0, "    "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final writeVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v1, "    "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    const-string v0, ": \'"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    const-string p1, "\',\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
