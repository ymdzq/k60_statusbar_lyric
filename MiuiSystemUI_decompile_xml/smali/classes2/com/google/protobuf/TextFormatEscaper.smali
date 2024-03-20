.class public abstract Lcom/google/protobuf/TextFormatEscaper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 4
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 12
    move-result v2

    .line 15
    if-ge v1, v2, :cond_4

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 18
    move-result v2

    .line 21
    const/16 v3, 0x22

    .line 22
    if-eq v2, v3, :cond_3

    .line 24
    const/16 v3, 0x27

    .line 26
    if-eq v2, v3, :cond_2

    .line 28
    const/16 v3, 0x5c

    .line 30
    if-eq v2, v3, :cond_1

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 34
    const/16 v4, 0x20

    .line 37
    if-lt v2, v4, :cond_0

    .line 39
    const/16 v4, 0x7e

    .line 41
    if-gt v2, v4, :cond_0

    .line 43
    int-to-char v2, v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_1

    .line 49
    :pswitch_0
    const-string v2, "\\r"

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    goto :goto_1

    .line 55
    :pswitch_1
    const-string v2, "\\f"

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    goto :goto_1

    .line 61
    :pswitch_2
    const-string v2, "\\v"

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    goto :goto_1

    .line 67
    :pswitch_3
    const-string v2, "\\n"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    goto :goto_1

    .line 73
    :pswitch_4
    const-string v2, "\\t"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    goto :goto_1

    .line 79
    :pswitch_5
    const-string v2, "\\b"

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    goto :goto_1

    .line 85
    :pswitch_6
    const-string v2, "\\a"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    ushr-int/lit8 v3, v2, 0x6

    .line 95
    and-int/lit8 v3, v3, 0x3

    .line 97
    add-int/lit8 v3, v3, 0x30

    .line 99
    int-to-char v3, v3

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    ushr-int/lit8 v3, v2, 0x3

    .line 105
    and-int/lit8 v3, v3, 0x7

    .line 107
    add-int/lit8 v3, v3, 0x30

    .line 109
    int-to-char v3, v3

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    and-int/lit8 v2, v2, 0x7

    .line 115
    add-int/lit8 v2, v2, 0x30

    .line 117
    int-to-char v2, v2

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    goto :goto_1

    .line 123
    :cond_1
    const-string v2, "\\\\"

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    goto :goto_1

    .line 129
    :cond_2
    const-string v2, "\\\'"

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    goto :goto_1

    .line 135
    :cond_3
    const-string v2, "\\\""

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 141
    goto/16 :goto_0

    .line 143
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 150
.end method
