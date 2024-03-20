.class public final Lcom/google/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Protobuf;


# instance fields
.field public final schemaCache:Ljava/util/concurrent/ConcurrentMap;

.field public final schemaFactory:Lcom/google/protobuf/ManifestSchemaFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/Protobuf;

    .line 2
    invoke-direct {v0}, Lcom/google/protobuf/Protobuf;-><init>()V

    .line 4
    sput-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    new-instance v0, Lcom/google/protobuf/ManifestSchemaFactory;

    .line 12
    invoke-direct {v0}, Lcom/google/protobuf/ManifestSchemaFactory;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/google/protobuf/Protobuf;->schemaFactory:Lcom/google/protobuf/ManifestSchemaFactory;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    if-eqz p1, :cond_f

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lcom/google/protobuf/Schema;

    .line 14
    if-nez v1, :cond_e

    .line 16
    iget-object p0, p0, Lcom/google/protobuf/Protobuf;->schemaFactory:Lcom/google/protobuf/ManifestSchemaFactory;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v1, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 23
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 27
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    sget-object v2, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 33
    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p1, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 51
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

    .line 52
    invoke-interface {p0, p1}, Lcom/google/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;

    .line 54
    move-result-object v2

    .line 57
    move-object p0, v2

    .line 58
    check-cast p0, Lcom/google/protobuf/RawMessageInfo;

    .line 59
    iget v3, p0, Lcom/google/protobuf/RawMessageInfo;->flags:I

    .line 61
    const/4 v4, 0x2

    .line 63
    and-int/2addr v3, v4

    .line 64
    const/4 v5, 0x1

    .line 65
    const/4 v6, 0x0

    .line 66
    if-ne v3, v4, :cond_2

    .line 67
    move v3, v5

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v3, v6

    .line 71
    :goto_1
    const-string v4, "Protobuf runtime is not correctly loaded."

    .line 72
    if-eqz v3, :cond_5

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 76
    move-result v1

    .line 79
    iget-object p0, p0, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 80
    if-eqz v1, :cond_3

    .line 82
    sget-object v1, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 84
    sget-object v2, Lcom/google/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/google/protobuf/ExtensionSchemaLite;

    .line 86
    new-instance v3, Lcom/google/protobuf/MessageSetSchema;

    .line 88
    invoke-direct {v3, v1, v2, p0}, Lcom/google/protobuf/MessageSetSchema;-><init>(Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MessageLite;)V

    .line 90
    goto :goto_2

    .line 93
    :cond_3
    sget-object v1, Lcom/google/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 94
    sget-object v2, Lcom/google/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/google/protobuf/ExtensionSchemaLite;

    .line 96
    if-eqz v2, :cond_4

    .line 98
    new-instance v3, Lcom/google/protobuf/MessageSetSchema;

    .line 100
    invoke-direct {v3, v1, v2, p0}, Lcom/google/protobuf/MessageSetSchema;-><init>(Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MessageLite;)V

    .line 102
    :goto_2
    move-object v1, v3

    .line 105
    goto/16 :goto_6

    .line 106
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 108
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p0

    .line 113
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 114
    move-result v1

    .line 117
    sget-object v3, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    .line 118
    sget-object v7, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    .line 120
    if-eqz v1, :cond_9

    .line 122
    iget p0, p0, Lcom/google/protobuf/RawMessageInfo;->flags:I

    .line 124
    and-int/2addr p0, v5

    .line 126
    if-ne p0, v5, :cond_6

    .line 127
    move-object v3, v7

    .line 129
    :cond_6
    if-ne v3, v7, :cond_7

    .line 130
    goto :goto_3

    .line 132
    :cond_7
    move v5, v6

    .line 133
    :goto_3
    if-eqz v5, :cond_8

    .line 134
    sget-object v3, Lcom/google/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 136
    sget-object v4, Lcom/google/protobuf/ListFieldSchema;->LITE_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;

    .line 138
    sget-object v5, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 140
    sget-object v6, Lcom/google/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/google/protobuf/ExtensionSchemaLite;

    .line 142
    sget-object v7, Lcom/google/protobuf/MapFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 144
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;

    .line 146
    move-result-object p0

    .line 149
    goto :goto_5

    .line 150
    :cond_8
    sget-object v3, Lcom/google/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 151
    sget-object v4, Lcom/google/protobuf/ListFieldSchema;->LITE_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;

    .line 153
    sget-object v5, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 155
    const/4 v6, 0x0

    .line 157
    sget-object v7, Lcom/google/protobuf/MapFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 158
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;

    .line 160
    move-result-object p0

    .line 163
    goto :goto_5

    .line 164
    :cond_9
    iget p0, p0, Lcom/google/protobuf/RawMessageInfo;->flags:I

    .line 165
    and-int/2addr p0, v5

    .line 167
    if-ne p0, v5, :cond_a

    .line 168
    move-object v3, v7

    .line 170
    :cond_a
    if-ne v3, v7, :cond_b

    .line 171
    goto :goto_4

    .line 173
    :cond_b
    move v5, v6

    .line 174
    :goto_4
    if-eqz v5, :cond_d

    .line 175
    sget-object v3, Lcom/google/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 177
    sget-object p0, Lcom/google/protobuf/ListFieldSchema;->FULL_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;

    .line 179
    sget-object v5, Lcom/google/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 181
    sget-object v6, Lcom/google/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/google/protobuf/ExtensionSchemaLite;

    .line 183
    if-eqz v6, :cond_c

    .line 185
    sget-object v7, Lcom/google/protobuf/MapFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 187
    move-object v4, p0

    .line 189
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;

    .line 190
    move-result-object p0

    .line 193
    goto :goto_5

    .line 194
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 195
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 197
    throw p0

    .line 200
    :cond_d
    sget-object v3, Lcom/google/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 201
    sget-object v4, Lcom/google/protobuf/ListFieldSchema;->FULL_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;

    .line 203
    sget-object v5, Lcom/google/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 205
    const/4 v6, 0x0

    .line 207
    sget-object v7, Lcom/google/protobuf/MapFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 208
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;

    .line 210
    move-result-object p0

    .line 213
    :goto_5
    move-object v1, p0

    .line 214
    :goto_6
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    move-result-object p0

    .line 218
    check-cast p0, Lcom/google/protobuf/Schema;

    .line 219
    if-eqz p0, :cond_e

    .line 221
    move-object v1, p0

    .line 223
    :cond_e
    return-object v1

    .line 224
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    .line 225
    const-string p1, "messageType"

    .line 227
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 229
    throw p0
    .line 232
.end method
