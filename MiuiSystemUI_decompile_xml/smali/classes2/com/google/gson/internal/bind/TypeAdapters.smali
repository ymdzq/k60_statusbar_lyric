.class public abstract Lcom/google/gson/internal/bind/TypeAdapters;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ATOMIC_BOOLEAN:Lcom/google/gson/TypeAdapter$1;

.field public static final ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final ATOMIC_INTEGER:Lcom/google/gson/TypeAdapter$1;

.field public static final ATOMIC_INTEGER_ARRAY:Lcom/google/gson/TypeAdapter$1;

.field public static final ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final ATOMIC_INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final BIG_DECIMAL:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final BIG_INTEGER:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final BIT_SET:Lcom/google/gson/TypeAdapter$1;

.field public static final BIT_SET_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final BOOLEAN:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final BOOLEAN_AS_STRING:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final BYTE:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final BYTE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final CALENDAR:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final CALENDAR_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final CHARACTER:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final CHARACTER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final CLASS:Lcom/google/gson/TypeAdapter$1;

.field public static final CLASS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final CURRENCY:Lcom/google/gson/TypeAdapter$1;

.field public static final CURRENCY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final DOUBLE:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final ENUM_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$29;

.field public static final FLOAT:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final INET_ADDRESS:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final INET_ADDRESS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final INTEGER:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final JSON_ELEMENT:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final JSON_ELEMENT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final LAZILY_PARSED_NUMBER:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final LOCALE:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final LOCALE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final LONG:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final SHORT:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final SHORT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final STRING:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final STRING_BUFFER:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final STRING_BUFFER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final STRING_BUILDER:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final STRING_BUILDER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final STRING_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final URI:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final URI_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final URL:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final URL_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final UUID:Lcom/google/gson/internal/bind/TypeAdapters$1;

.field public static final UUID_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 5
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    .line 8
    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 10
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS:Lcom/google/gson/TypeAdapter$1;

    .line 13
    const-class v0, Ljava/lang/Class;

    .line 15
    invoke-static {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 21
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 23
    const/16 v1, 0x14

    .line 25
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 27
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    .line 30
    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 32
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET:Lcom/google/gson/TypeAdapter$1;

    .line 35
    const-class v0, Ljava/util/BitSet;

    .line 37
    invoke-static {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 39
    move-result-object v0

    .line 42
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 43
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 45
    const/16 v1, 0x15

    .line 47
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 49
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 52
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 54
    const/16 v2, 0x16

    .line 56
    invoke-direct {v1, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 58
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 61
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 63
    const-class v2, Ljava/lang/Boolean;

    .line 65
    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 67
    move-result-object v0

    .line 70
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 71
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 73
    const/16 v1, 0x17

    .line 75
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 77
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 80
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 82
    const-class v2, Ljava/lang/Byte;

    .line 84
    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 86
    move-result-object v0

    .line 89
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 90
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 92
    const/16 v1, 0x18

    .line 94
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 96
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 99
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 101
    const-class v2, Ljava/lang/Short;

    .line 103
    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 105
    move-result-object v0

    .line 108
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 109
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 111
    const/16 v1, 0x19

    .line 113
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 115
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 118
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 120
    const-class v2, Ljava/lang/Integer;

    .line 122
    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 124
    move-result-object v0

    .line 127
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 128
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 130
    const/16 v1, 0x1a

    .line 132
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 134
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    .line 137
    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 139
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER:Lcom/google/gson/TypeAdapter$1;

    .line 142
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    invoke-static {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 146
    move-result-object v0

    .line 149
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 150
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 152
    const/16 v1, 0x1b

    .line 154
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 156
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    .line 159
    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 161
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN:Lcom/google/gson/TypeAdapter$1;

    .line 164
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    invoke-static {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 168
    move-result-object v0

    .line 171
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 172
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 174
    const/4 v1, 0x1

    .line 176
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 177
    new-instance v2, Lcom/google/gson/TypeAdapter$1;

    .line 180
    invoke-direct {v2, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 182
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY:Lcom/google/gson/TypeAdapter$1;

    .line 185
    const-class v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 187
    invoke-static {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 189
    move-result-object v0

    .line 192
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 193
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 195
    const/4 v2, 0x2

    .line 197
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 198
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 201
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 203
    const/4 v2, 0x3

    .line 205
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 206
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 209
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 211
    const/4 v2, 0x4

    .line 213
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 214
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 217
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 219
    const/4 v2, 0x5

    .line 221
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 222
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 225
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 227
    const-class v3, Ljava/lang/Character;

    .line 229
    invoke-static {v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 231
    move-result-object v0

    .line 234
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 235
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 237
    const/4 v2, 0x6

    .line 239
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 240
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 243
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 245
    const/4 v3, 0x7

    .line 247
    invoke-direct {v2, v3}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 248
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 251
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 253
    const/16 v3, 0x8

    .line 255
    invoke-direct {v2, v3}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 257
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 260
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 262
    const/16 v3, 0x9

    .line 264
    invoke-direct {v2, v3}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 266
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->LAZILY_PARSED_NUMBER:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 269
    const-class v2, Ljava/lang/String;

    .line 271
    invoke-static {v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 273
    move-result-object v0

    .line 276
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 277
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 279
    const/16 v2, 0xa

    .line 281
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 283
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 286
    const-class v2, Ljava/lang/StringBuilder;

    .line 288
    invoke-static {v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 290
    move-result-object v0

    .line 293
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 294
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 296
    const/16 v2, 0xb

    .line 298
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 300
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 303
    const-class v2, Ljava/lang/StringBuffer;

    .line 305
    invoke-static {v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 307
    move-result-object v0

    .line 310
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 311
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 313
    const/16 v2, 0xc

    .line 315
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 317
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->URL:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 320
    const-class v2, Ljava/net/URL;

    .line 322
    invoke-static {v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 324
    move-result-object v0

    .line 327
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 328
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 330
    const/16 v2, 0xd

    .line 332
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 334
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->URI:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 337
    const-class v2, Ljava/net/URI;

    .line 339
    invoke-static {v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 341
    move-result-object v0

    .line 344
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 345
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 347
    const/16 v2, 0xe

    .line 349
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 351
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 354
    const-class v2, Ljava/net/InetAddress;

    .line 356
    new-instance v3, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 358
    invoke-direct {v3, v2, v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;I)V

    .line 360
    sput-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 363
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 365
    const/16 v2, 0xf

    .line 367
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 369
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->UUID:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 372
    const-class v2, Ljava/util/UUID;

    .line 374
    invoke-static {v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 376
    move-result-object v0

    .line 379
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 380
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 382
    const/16 v2, 0x10

    .line 384
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 386
    new-instance v2, Lcom/google/gson/TypeAdapter$1;

    .line 389
    invoke-direct {v2, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 391
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY:Lcom/google/gson/TypeAdapter$1;

    .line 394
    const-class v0, Ljava/util/Currency;

    .line 396
    invoke-static {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 398
    move-result-object v0

    .line 401
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 402
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 404
    const/16 v2, 0x11

    .line 406
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 408
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 411
    const-class v2, Ljava/util/Calendar;

    .line 413
    const-class v3, Ljava/util/GregorianCalendar;

    .line 415
    new-instance v4, Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 417
    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;I)V

    .line 419
    sput-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 422
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 424
    const/16 v2, 0x12

    .line 426
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 428
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 431
    const-class v2, Ljava/util/Locale;

    .line 433
    invoke-static {v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 435
    move-result-object v0

    .line 438
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 439
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 441
    const/16 v2, 0x13

    .line 443
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>(I)V

    .line 445
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 448
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 450
    const-class v3, Lcom/google/gson/JsonElement;

    .line 452
    invoke-direct {v2, v3, v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;I)V

    .line 454
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 457
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$29;

    .line 459
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;-><init>()V

    .line 461
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$29;

    .line 464
    return-void
    .line 466
.end method

.method public static newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$31;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;I)V

    return-object v0
.end method

.method public static newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$32;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$32;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;I)V

    return-object v0
.end method
