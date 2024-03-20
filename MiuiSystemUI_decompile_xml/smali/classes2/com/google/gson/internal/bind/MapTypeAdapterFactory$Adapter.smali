.class public final Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/google/gson/TypeAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final constructor:Lcom/google/gson/internal/ObjectConstructor;

.field public final keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

.field public final synthetic this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

.field public final valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    .line 2
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 4
    new-instance p1, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 7
    invoke-direct {p1, p2, p4, p3}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    .line 9
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 12
    new-instance p1, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 14
    invoke-direct {p1, p2, p6, p5}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    .line 16
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 19
    iput-object p7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 10
    const/4 p0, 0x0

    .line 13
    goto/16 :goto_4

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    .line 16
    invoke-interface {v1}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map;

    .line 22
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 24
    iget-object v3, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 26
    iget-object p0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 28
    const-string v4, "duplicate key: "

    .line 30
    if-ne v0, v2, :cond_3

    .line 32
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    invoke-virtual {v3, p1}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 53
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    new-instance p0, Lcom/google/gson/JsonSyntaxException;

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 82
    goto/16 :goto_3

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 87
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    .line 90
    move-result v0

    .line 93
    if-eqz v0, :cond_9

    .line 94
    sget-object v0, Lcom/google/gson/stream/JsonReader$1;->INSTANCE:Lcom/google/gson/stream/JsonReader$1;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    iget v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 101
    if-nez v0, :cond_4

    .line 103
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 105
    move-result v0

    .line 108
    :cond_4
    const/16 v2, 0xd

    .line 109
    if-ne v0, v2, :cond_5

    .line 111
    const/16 v0, 0x9

    .line 113
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 115
    goto :goto_2

    .line 117
    :cond_5
    const/16 v2, 0xc

    .line 118
    if-ne v0, v2, :cond_6

    .line 120
    const/16 v0, 0x8

    .line 122
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 124
    goto :goto_2

    .line 126
    :cond_6
    const/16 v2, 0xe

    .line 127
    if-ne v0, v2, :cond_8

    .line 129
    const/16 v0, 0xa

    .line 131
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 133
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 138
    invoke-virtual {v3, p1}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 139
    move-result-object v2

    .line 142
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-result-object v2

    .line 146
    if-nez v2, :cond_7

    .line 147
    goto :goto_1

    .line 149
    :cond_7
    new-instance p0, Lcom/google/gson/JsonSyntaxException;

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 163
    invoke-direct {p0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    .line 164
    throw p0

    .line 167
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "Expected a name but was "

    .line 172
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 177
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 194
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    throw p0

    .line 198
    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 199
    :goto_3
    move-object p0, v1

    .line 202
    :goto_4
    return-object p0
    .line 203
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 6
    goto/16 :goto_8

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    .line 11
    iget-boolean v0, v0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    .line 13
    iget-object v1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 15
    if-nez v0, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    .line 19
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 39
    check-cast p2, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)V

    .line 50
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 56
    invoke-virtual {v1, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 57
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    .line 61
    goto/16 :goto_8

    .line 64
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 68
    move-result v2

    .line 71
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 77
    move-result v3

    .line 80
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 84
    move-result-object p2

    .line 87
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object p2

    .line 91
    const/4 v3, 0x0

    .line 92
    move v4, v3

    .line 93
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v5

    .line 97
    if-eqz v5, :cond_6

    .line 98
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v5

    .line 103
    check-cast v5, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 106
    move-result-object v6

    .line 109
    iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 110
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    :try_start_0
    new-instance v8, Lcom/google/gson/internal/bind/JsonTreeWriter;

    .line 115
    invoke-direct {v8}, Lcom/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 117
    invoke-virtual {v7, v8, v6}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 120
    iget-object v6, v8, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    .line 123
    check-cast v6, Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    move-result v6

    .line 130
    if-eqz v6, :cond_5

    .line 131
    iget-object v6, v8, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 138
    move-result-object v5

    .line 141
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    instance-of v5, v6, Lcom/google/gson/JsonArray;

    .line 148
    if-nez v5, :cond_4

    .line 150
    instance-of v5, v6, Lcom/google/gson/JsonObject;

    .line 152
    if-eqz v5, :cond_3

    .line 154
    goto :goto_2

    .line 156
    :cond_3
    move v5, v3

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    :goto_2
    const/4 v5, 0x1

    .line 159
    :goto_3
    or-int/2addr v4, v5

    .line 160
    goto :goto_1

    .line 161
    :cond_5
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    const-string p2, "Expected one JSON element but was "

    .line 166
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object p2, v8, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 179
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :catch_0
    move-exception p0

    .line 184
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 185
    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    .line 187
    throw p1

    .line 190
    :cond_6
    if-eqz v4, :cond_8

    .line 191
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 196
    move-result p0

    .line 199
    :goto_4
    if-ge v3, p0, :cond_7

    .line 200
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    .line 202
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    move-result-object p2

    .line 208
    check-cast p2, Lcom/google/gson/JsonElement;

    .line 209
    invoke-static {p2, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    .line 211
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    move-result-object p2

    .line 217
    invoke-virtual {v1, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 224
    goto :goto_4

    .line 226
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    .line 227
    goto/16 :goto_8

    .line 230
    :cond_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 235
    move-result p0

    .line 238
    :goto_5
    if-ge v3, p0, :cond_10

    .line 239
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    move-result-object p2

    .line 244
    check-cast p2, Lcom/google/gson/JsonElement;

    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    instance-of v4, p2, Lcom/google/gson/JsonPrimitive;

    .line 250
    if-eqz v4, :cond_e

    .line 252
    if-eqz v4, :cond_d

    .line 254
    check-cast p2, Lcom/google/gson/JsonPrimitive;

    .line 256
    iget-object v4, p2, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 258
    instance-of v5, v4, Ljava/lang/Number;

    .line 260
    if-eqz v5, :cond_9

    .line 262
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 264
    move-result-object p2

    .line 267
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    move-result-object p2

    .line 271
    goto :goto_7

    .line 272
    :cond_9
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 273
    if-eqz v5, :cond_b

    .line 275
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 277
    if-eqz v5, :cond_a

    .line 279
    check-cast v4, Ljava/lang/Boolean;

    .line 281
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 283
    move-result p2

    .line 286
    goto :goto_6

    .line 287
    :cond_a
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 288
    move-result-object p2

    .line 291
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 292
    move-result p2

    .line 295
    :goto_6
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 296
    move-result-object p2

    .line 299
    goto :goto_7

    .line 300
    :cond_b
    instance-of v4, v4, Ljava/lang/String;

    .line 301
    if-eqz v4, :cond_c

    .line 303
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 305
    move-result-object p2

    .line 308
    goto :goto_7

    .line 309
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    .line 310
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 312
    throw p0

    .line 315
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    .line 318
    const-string v0, "Not a JSON Primitive: "

    .line 320
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object p1

    .line 331
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 332
    throw p0

    .line 335
    :cond_e
    instance-of p2, p2, Lcom/google/gson/JsonNull;

    .line 336
    if-eqz p2, :cond_f

    .line 338
    const-string p2, "null"

    .line 340
    :goto_7
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 345
    move-result-object p2

    .line 348
    invoke-virtual {v1, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 349
    add-int/lit8 v3, v3, 0x1

    .line 352
    goto :goto_5

    .line 354
    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    .line 355
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 357
    throw p0

    .line 360
    :cond_10
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    .line 361
    :goto_8
    return-void
    .line 364
.end method
