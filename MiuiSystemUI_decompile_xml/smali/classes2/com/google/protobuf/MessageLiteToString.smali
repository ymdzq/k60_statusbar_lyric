.class public abstract Lcom/google/protobuf/MessageLiteToString;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INDENT_BUFFER:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x50

    .line 2
    new-array v0, v0, [C

    .line 4
    sput-object v0, Lcom/google/protobuf/MessageLiteToString;->INDENT_BUFFER:[C

    .line 6
    const/16 v1, 0x20

    .line 8
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 10
    return-void
    .line 13
.end method

.method public static indent(Ljava/lang/StringBuilder;I)V
    .locals 3

    .line 1
    :goto_0
    if-lez p1, :cond_1

    .line 2
    const/16 v0, 0x50

    .line 4
    if-le p1, v0, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    move v0, p1

    .line 9
    :goto_1
    sget-object v1, Lcom/google/protobuf/MessageLiteToString;->INDENT_BUFFER:[C

    .line 10
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 13
    sub-int/2addr p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return-void
    .line 18
.end method

.method public static printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1
    instance-of v0, p3, Ljava/util/List;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    check-cast p3, Ljava/util/List;

    .line 6
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p3

    .line 11
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    instance-of v0, p3, Ljava/util/Map;

    .line 27
    if-eqz v0, :cond_3

    .line 29
    check-cast p3, Ljava/util/Map;

    .line 31
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    move-result-object p3

    .line 36
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p3

    .line 40
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    goto :goto_1

    .line 56
    :cond_2
    return-void

    .line 57
    :cond_3
    const/16 v0, 0xa

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {p0, p1}, Lcom/google/protobuf/MessageLiteToString;->indent(Ljava/lang/StringBuilder;I)V

    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 66
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    goto :goto_3

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 79
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 83
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const/4 v1, 0x1

    .line 90
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 91
    move-result v2

    .line 94
    if-ge v1, v2, :cond_6

    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 97
    move-result v2

    .line 100
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 101
    move-result v3

    .line 104
    if-eqz v3, :cond_5

    .line 105
    const-string v3, "_"

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_5
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 112
    move-result v2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 119
    goto :goto_2

    .line 121
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p2

    .line 125
    :goto_3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    instance-of p2, p3, Ljava/lang/String;

    .line 129
    const/16 v0, 0x22

    .line 131
    const-string v1, ": \""

    .line 133
    if-eqz p2, :cond_7

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    check-cast p3, Ljava/lang/String;

    .line 140
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 142
    new-instance p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 144
    sget-object p2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 146
    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 148
    move-result-object p2

    .line 151
    invoke-direct {p1, p2}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 152
    invoke-static {p1}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    goto :goto_4

    .line 165
    :cond_7
    instance-of p2, p3, Lcom/google/protobuf/ByteString;

    .line 166
    if-eqz p2, :cond_8

    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    check-cast p3, Lcom/google/protobuf/ByteString;

    .line 173
    invoke-static {p3}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    goto :goto_4

    .line 185
    :cond_8
    instance-of p2, p3, Lcom/google/protobuf/GeneratedMessageLite;

    .line 186
    const-string/jumbo v0, "}"

    .line 188
    const-string v1, "\n"

    .line 191
    const-string v2, " {"

    .line 193
    if-eqz p2, :cond_9

    .line 195
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    check-cast p3, Lcom/google/protobuf/GeneratedMessageLite;

    .line 200
    add-int/lit8 p2, p1, 0x2

    .line 202
    invoke-static {p3, p0, p2}, Lcom/google/protobuf/MessageLiteToString;->reflectivePrintWithIndent(Lcom/google/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V

    .line 204
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {p0, p1}, Lcom/google/protobuf/MessageLiteToString;->indent(Ljava/lang/StringBuilder;I)V

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    goto :goto_4

    .line 216
    :cond_9
    instance-of p2, p3, Ljava/util/Map$Entry;

    .line 217
    if-eqz p2, :cond_a

    .line 219
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    check-cast p3, Ljava/util/Map$Entry;

    .line 224
    add-int/lit8 p2, p1, 0x2

    .line 226
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 228
    move-result-object v2

    .line 231
    const-string v3, "key"

    .line 232
    invoke-static {p0, p2, v3, v2}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 234
    const-string/jumbo v2, "value"

    .line 237
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 240
    move-result-object p3

    .line 243
    invoke-static {p0, p2, v2, p3}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {p0, p1}, Lcom/google/protobuf/MessageLiteToString;->indent(Ljava/lang/StringBuilder;I)V

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    goto :goto_4

    .line 256
    :cond_a
    const-string p1, ": "

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    :goto_4
    return-void
    .line 265
.end method

.method public static reflectivePrintWithIndent(Lcom/google/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    new-instance v3, Ljava/util/HashSet;

    .line 8
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    new-instance v4, Ljava/util/HashMap;

    .line 13
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    new-instance v5, Ljava/util/TreeMap;

    .line 18
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 20
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    move-result-object v6

    .line 26
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 27
    move-result-object v6

    .line 30
    array-length v7, v6

    .line 31
    const/4 v8, 0x0

    .line 32
    move v9, v8

    .line 33
    :goto_0
    const/4 v10, 0x3

    .line 34
    const-string v11, "get"

    .line 35
    const-string v12, "has"

    .line 37
    const-string/jumbo v13, "set"

    .line 39
    if-ge v9, v7, :cond_7

    .line 42
    aget-object v14, v6, v9

    .line 44
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 46
    move-result v15

    .line 49
    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 50
    move-result v15

    .line 53
    if-eqz v15, :cond_0

    .line 54
    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 57
    move-result-object v15

    .line 60
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 61
    move-result v15

    .line 64
    if-ge v15, v10, :cond_1

    .line 65
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 68
    move-result-object v10

    .line 71
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    move-result v10

    .line 75
    if-eqz v10, :cond_2

    .line 76
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 78
    move-result-object v10

    .line 81
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 86
    move-result v10

    .line 89
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 90
    move-result v10

    .line 93
    if-nez v10, :cond_3

    .line 94
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 97
    move-result-object v10

    .line 100
    array-length v10, v10

    .line 101
    if-eqz v10, :cond_4

    .line 102
    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 105
    move-result-object v10

    .line 108
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    move-result v10

    .line 112
    if-eqz v10, :cond_5

    .line 113
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 115
    move-result-object v10

    .line 118
    invoke-virtual {v4, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 123
    move-result-object v10

    .line 126
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 127
    move-result v10

    .line 130
    if-eqz v10, :cond_6

    .line 131
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 133
    move-result-object v10

    .line 136
    invoke-virtual {v5, v10, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_6
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 140
    goto :goto_0

    .line 142
    :cond_7
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 143
    move-result-object v6

    .line 146
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 147
    move-result-object v6

    .line 150
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    move-result v7

    .line 154
    if-eqz v7, :cond_17

    .line 155
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    move-result-object v7

    .line 160
    check-cast v7, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 163
    move-result-object v9

    .line 166
    check-cast v9, Ljava/lang/String;

    .line 167
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 169
    move-result-object v9

    .line 172
    const-string v14, "List"

    .line 173
    invoke-virtual {v9, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 175
    move-result v15

    .line 178
    if-eqz v15, :cond_8

    .line 179
    const-string v15, "OrBuilderList"

    .line 181
    invoke-virtual {v9, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 183
    move-result v15

    .line 186
    if-nez v15, :cond_8

    .line 187
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v14

    .line 192
    if-nez v14, :cond_8

    .line 193
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 195
    move-result-object v14

    .line 198
    check-cast v14, Ljava/lang/reflect/Method;

    .line 199
    if-eqz v14, :cond_8

    .line 201
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 203
    move-result-object v15

    .line 206
    const-class v10, Ljava/util/List;

    .line 207
    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result v10

    .line 212
    if-eqz v10, :cond_8

    .line 213
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 215
    move-result v7

    .line 218
    add-int/lit8 v7, v7, -0x4

    .line 219
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 221
    move-result-object v7

    .line 224
    new-array v9, v8, [Ljava/lang/Object;

    .line 225
    invoke-static {v0, v14, v9}, Lcom/google/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    move-result-object v9

    .line 230
    invoke-static {v1, v2, v7, v9}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 231
    goto/16 :goto_6

    .line 234
    :cond_8
    const-string v10, "Map"

    .line 236
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 238
    move-result v14

    .line 241
    if-eqz v14, :cond_9

    .line 242
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    move-result v10

    .line 247
    if-nez v10, :cond_9

    .line 248
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 250
    move-result-object v10

    .line 253
    check-cast v10, Ljava/lang/reflect/Method;

    .line 254
    if-eqz v10, :cond_9

    .line 256
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 258
    move-result-object v14

    .line 261
    const-class v15, Ljava/util/Map;

    .line 262
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result v14

    .line 267
    if-eqz v14, :cond_9

    .line 268
    const-class v14, Ljava/lang/Deprecated;

    .line 270
    invoke-virtual {v10, v14}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 272
    move-result v14

    .line 275
    if-nez v14, :cond_9

    .line 276
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 278
    move-result v14

    .line 281
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 282
    move-result v14

    .line 285
    if-eqz v14, :cond_9

    .line 286
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 288
    move-result v7

    .line 291
    const/4 v14, 0x3

    .line 292
    sub-int/2addr v7, v14

    .line 293
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 294
    move-result-object v7

    .line 297
    new-array v9, v8, [Ljava/lang/Object;

    .line 298
    invoke-static {v0, v10, v9}, Lcom/google/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-result-object v9

    .line 303
    invoke-static {v1, v2, v7, v9}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 304
    goto/16 :goto_6

    .line 307
    :cond_9
    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    move-result-object v10

    .line 312
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 313
    move-result v10

    .line 316
    if-nez v10, :cond_a

    .line 317
    goto/16 :goto_6

    .line 319
    :cond_a
    const-string v10, "Bytes"

    .line 321
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 323
    move-result v10

    .line 326
    if-eqz v10, :cond_b

    .line 327
    new-instance v10, Ljava/lang/StringBuilder;

    .line 329
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 334
    move-result v14

    .line 337
    add-int/lit8 v14, v14, -0x5

    .line 338
    invoke-virtual {v9, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 340
    move-result-object v14

    .line 343
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v10

    .line 350
    invoke-virtual {v5, v10}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 351
    move-result v10

    .line 354
    if-eqz v10, :cond_b

    .line 355
    goto/16 :goto_6

    .line 357
    :cond_b
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 359
    move-result-object v7

    .line 362
    check-cast v7, Ljava/lang/reflect/Method;

    .line 363
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    move-result-object v10

    .line 368
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    move-result-object v10

    .line 372
    check-cast v10, Ljava/lang/reflect/Method;

    .line 373
    if-eqz v7, :cond_16

    .line 375
    new-array v14, v8, [Ljava/lang/Object;

    .line 377
    invoke-static {v0, v7, v14}, Lcom/google/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    move-result-object v7

    .line 382
    if-nez v10, :cond_15

    .line 383
    instance-of v10, v7, Ljava/lang/Boolean;

    .line 385
    const/4 v14, 0x1

    .line 387
    if-eqz v10, :cond_c

    .line 388
    move-object v10, v7

    .line 390
    check-cast v10, Ljava/lang/Boolean;

    .line 391
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 393
    move-result v10

    .line 396
    xor-int/2addr v10, v14

    .line 397
    goto/16 :goto_4

    .line 398
    :cond_c
    instance-of v10, v7, Ljava/lang/Integer;

    .line 400
    if-eqz v10, :cond_d

    .line 402
    move-object v10, v7

    .line 404
    check-cast v10, Ljava/lang/Integer;

    .line 405
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 407
    move-result v10

    .line 410
    if-nez v10, :cond_13

    .line 411
    goto :goto_3

    .line 413
    :cond_d
    instance-of v10, v7, Ljava/lang/Float;

    .line 414
    if-eqz v10, :cond_e

    .line 416
    move-object v10, v7

    .line 418
    check-cast v10, Ljava/lang/Float;

    .line 419
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 421
    move-result v10

    .line 424
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 425
    move-result v10

    .line 428
    if-nez v10, :cond_13

    .line 429
    goto :goto_3

    .line 431
    :cond_e
    instance-of v10, v7, Ljava/lang/Double;

    .line 432
    if-eqz v10, :cond_f

    .line 434
    move-object v10, v7

    .line 436
    check-cast v10, Ljava/lang/Double;

    .line 437
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 439
    move-result-wide v16

    .line 442
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 443
    move-result-wide v16

    .line 446
    const-wide/16 v18, 0x0

    .line 447
    cmp-long v10, v16, v18

    .line 449
    if-nez v10, :cond_13

    .line 451
    goto :goto_3

    .line 453
    :cond_f
    instance-of v10, v7, Ljava/lang/String;

    .line 454
    if-eqz v10, :cond_10

    .line 456
    const-string v10, ""

    .line 458
    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 460
    move-result v10

    .line 463
    goto :goto_4

    .line 464
    :cond_10
    instance-of v10, v7, Lcom/google/protobuf/ByteString;

    .line 465
    if-eqz v10, :cond_11

    .line 467
    sget-object v10, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 469
    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 471
    move-result v10

    .line 474
    goto :goto_4

    .line 475
    :cond_11
    instance-of v10, v7, Lcom/google/protobuf/MessageLite;

    .line 476
    if-eqz v10, :cond_12

    .line 478
    move-object v10, v7

    .line 480
    check-cast v10, Lcom/google/protobuf/MessageLite;

    .line 481
    check-cast v10, Lcom/google/protobuf/GeneratedMessageLite;

    .line 483
    sget-object v15, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 485
    invoke-virtual {v10, v15}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 487
    move-result-object v10

    .line 490
    check-cast v10, Lcom/google/protobuf/GeneratedMessageLite;

    .line 491
    if-ne v7, v10, :cond_13

    .line 493
    goto :goto_3

    .line 495
    :cond_12
    instance-of v10, v7, Ljava/lang/Enum;

    .line 496
    if-eqz v10, :cond_13

    .line 498
    move-object v10, v7

    .line 500
    check-cast v10, Ljava/lang/Enum;

    .line 501
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 503
    move-result v10

    .line 506
    if-nez v10, :cond_13

    .line 507
    :goto_3
    move v10, v14

    .line 509
    goto :goto_4

    .line 510
    :cond_13
    move v10, v8

    .line 511
    :goto_4
    if-nez v10, :cond_14

    .line 512
    goto :goto_5

    .line 514
    :cond_14
    move v14, v8

    .line 515
    goto :goto_5

    .line 516
    :cond_15
    new-array v14, v8, [Ljava/lang/Object;

    .line 517
    invoke-static {v0, v10, v14}, Lcom/google/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    move-result-object v10

    .line 522
    check-cast v10, Ljava/lang/Boolean;

    .line 523
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 525
    move-result v14

    .line 528
    :goto_5
    if-eqz v14, :cond_16

    .line 529
    invoke-static {v1, v2, v9, v7}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 531
    :cond_16
    :goto_6
    const/4 v10, 0x3

    .line 534
    goto/16 :goto_2

    .line 535
    :cond_17
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 537
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 539
    if-eqz v0, :cond_18

    .line 541
    :goto_7
    iget v3, v0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 543
    if-ge v8, v3, :cond_18

    .line 545
    iget-object v3, v0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 547
    aget v3, v3, v8

    .line 549
    const/4 v4, 0x3

    .line 551
    ushr-int/2addr v3, v4

    .line 552
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 553
    move-result-object v3

    .line 556
    iget-object v5, v0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 557
    aget-object v5, v5, v8

    .line 559
    invoke-static {v1, v2, v3, v5}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 561
    add-int/lit8 v8, v8, 0x1

    .line 564
    goto :goto_7

    .line 566
    :cond_18
    return-void
    .line 567
.end method
