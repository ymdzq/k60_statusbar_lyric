.class public abstract Lkotlin/jvm/JvmClassMappingKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 2

    .line 1
    check-cast p0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    .line 2
    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v1

    .line 22
    sparse-switch v1, :sswitch_data_0

    .line 23
    goto/16 :goto_0

    .line 26
    :sswitch_0
    const-string/jumbo v1, "short"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    goto/16 :goto_0

    .line 37
    :cond_1
    const-class p0, Ljava/lang/Short;

    .line 39
    goto/16 :goto_0

    .line 41
    :sswitch_1
    const-string v1, "float"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    const-class p0, Ljava/lang/Float;

    .line 52
    goto :goto_0

    .line 54
    :sswitch_2
    const-string v1, "boolean"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    const-class p0, Ljava/lang/Boolean;

    .line 64
    goto :goto_0

    .line 66
    :sswitch_3
    const-string/jumbo v1, "void"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    const-class p0, Ljava/lang/Void;

    .line 77
    goto :goto_0

    .line 79
    :sswitch_4
    const-string v1, "long"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    goto :goto_0

    .line 88
    :cond_5
    const-class p0, Ljava/lang/Long;

    .line 89
    goto :goto_0

    .line 91
    :sswitch_5
    const-string v1, "char"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    goto :goto_0

    .line 100
    :cond_6
    const-class p0, Ljava/lang/Character;

    .line 101
    goto :goto_0

    .line 103
    :sswitch_6
    const-string v1, "byte"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 109
    if-nez v0, :cond_7

    .line 110
    goto :goto_0

    .line 112
    :cond_7
    const-class p0, Ljava/lang/Byte;

    .line 113
    goto :goto_0

    .line 115
    :sswitch_7
    const-string v1, "int"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v0

    .line 121
    if-nez v0, :cond_8

    .line 122
    goto :goto_0

    .line 124
    :cond_8
    const-class p0, Ljava/lang/Integer;

    .line 125
    goto :goto_0

    .line 127
    :sswitch_8
    const-string v1, "double"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v0

    .line 133
    if-nez v0, :cond_9

    .line 134
    goto :goto_0

    .line 136
    :cond_9
    const-class p0, Ljava/lang/Double;

    .line 137
    :goto_0
    return-object p0

    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
    .line 140
.end method
