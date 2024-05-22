.class public final Lcom/miui/systemui/statusbar/phone/AppLockHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ACCESS_CONTROL_LOCK_ENABLED:Landroid/net/Uri;

.field public static final APP_LOCK_STATE_CHANGED:Landroid/net/Uri;

.field public static final sACLockEnabledAsUser:Landroid/util/SparseBooleanArray;

.field public static sAppLocks:Ljava/util/Map;


# instance fields
.field public final getMaskRunnable:Lcom/miui/systemui/statusbar/phone/AppLockHelper$$ExternalSyntheticLambda0;

.field public final mBgHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->sAppLocks:Ljava/util/Map;

    .line 7
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 9
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 11
    sput-object v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->sACLockEnabledAsUser:Landroid/util/SparseBooleanArray;

    .line 14
    const-string v0, "access_control_lock_enabled"

    .line 16
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object v0

    .line 21
    sput-object v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->ACCESS_CONTROL_LOCK_ENABLED:Landroid/net/Uri;

    .line 22
    const-string v0, "applock_mask_notify"

    .line 24
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->APP_LOCK_STATE_CHANGED:Landroid/net/Uri;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 7
    move-result-object v1

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    move-result-object v2

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 21
    move-result-object v3

    .line 24
    new-instance v4, Ljava/lang/ThreadLocal;

    .line 25
    invoke-direct {v4}, Ljava/lang/ThreadLocal;-><init>()V

    .line 27
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 32
    new-instance v4, Lcom/google/gson/internal/ConstructorConstructor;

    .line 35
    invoke-direct {v4, v1, v3}, Lcom/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    sget-object v5, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 45
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v5, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->DOUBLE_FACTORY:Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    .line 50
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 86
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 88
    const-class v6, Ljava/lang/Long;

    .line 90
    invoke-static {v5, v6, v2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 92
    move-result-object v5

    .line 95
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 99
    new-instance v6, Lcom/google/gson/Gson$1;

    .line 101
    const/4 v7, 0x0

    .line 103
    invoke-direct {v6, v7}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 104
    const-class v8, Ljava/lang/Double;

    .line 107
    invoke-static {v5, v8, v6}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 109
    move-result-object v5

    .line 112
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 116
    new-instance v6, Lcom/google/gson/Gson$1;

    .line 118
    const/4 v8, 0x1

    .line 120
    invoke-direct {v6, v8}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 121
    const-class v9, Ljava/lang/Float;

    .line 124
    invoke-static {v5, v9, v6}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 126
    move-result-object v5

    .line 129
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v5, Lcom/google/gson/internal/bind/NumberTypeAdapter;->LAZILY_PARSED_NUMBER_FACTORY:Lcom/google/gson/internal/bind/NumberTypeAdapter$1;

    .line 133
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v5, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 138
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v5, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 143
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 148
    new-instance v6, Lcom/google/gson/Gson$4;

    .line 150
    invoke-direct {v6, v2, v7}, Lcom/google/gson/Gson$4;-><init>(Lcom/google/gson/TypeAdapter;I)V

    .line 152
    new-instance v9, Lcom/google/gson/TypeAdapter$1;

    .line 155
    invoke-direct {v9, v6}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 157
    invoke-static {v5, v9}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 160
    move-result-object v5

    .line 163
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 167
    new-instance v6, Lcom/google/gson/Gson$4;

    .line 169
    invoke-direct {v6, v2, v8}, Lcom/google/gson/Gson$4;-><init>(Lcom/google/gson/TypeAdapter;I)V

    .line 171
    new-instance v2, Lcom/google/gson/TypeAdapter$1;

    .line 174
    invoke-direct {v2, v6}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 176
    invoke-static {v5, v2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 179
    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 186
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 191
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 196
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const-class v2, Ljava/math/BigDecimal;

    .line 206
    sget-object v5, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 208
    invoke-static {v2, v5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 210
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const-class v2, Ljava/math/BigInteger;

    .line 217
    sget-object v5, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 219
    invoke-static {v2, v5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 221
    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const-class v2, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 228
    sget-object v5, Lcom/google/gson/internal/bind/TypeAdapters;->LAZILY_PARSED_NUMBER:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 230
    invoke-static {v2, v5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 232
    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 239
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 244
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 249
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 254
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 259
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 264
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 269
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v2, Lcom/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/google/gson/internal/bind/DateTypeAdapter$1;

    .line 274
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 279
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    sget-boolean v2, Lcom/google/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    .line 284
    if-eqz v2, :cond_0

    .line 286
    sget-object v2, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIME_FACTORY:Lcom/google/gson/internal/sql/SqlTimeTypeAdapter$1;

    .line 288
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v2, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_FACTORY:Lcom/google/gson/internal/sql/SqlDateTypeAdapter$1;

    .line 293
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v2, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_FACTORY:Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter$1;

    .line 298
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    sget-object v2, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/google/gson/internal/bind/ArrayTypeAdapter$1;

    .line 303
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 308
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v2, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    .line 313
    invoke-direct {v2, v4}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 315
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v2, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    .line 321
    invoke-direct {v2, v4}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 323
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v2, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 329
    invoke-direct {v2, v4}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 331
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v5, Lcom/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$29;

    .line 337
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v5, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    .line 342
    invoke-direct {v5, v4, v0, v2, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/List;)V

    .line 344
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 350
    new-instance v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper$$ExternalSyntheticLambda0;

    .line 353
    invoke-direct {v0, p0, v7}, Lcom/miui/systemui/statusbar/phone/AppLockHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/systemui/statusbar/phone/AppLockHelper;I)V

    .line 355
    iput-object v0, p0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->getMaskRunnable:Lcom/miui/systemui/statusbar/phone/AppLockHelper$$ExternalSyntheticLambda0;

    .line 358
    iput-object p2, p0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->mMainHandler:Landroid/os/Handler;

    .line 360
    iput-object p3, p0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->mBgHandler:Landroid/os/Handler;

    .line 362
    const-string/jumbo p2, "security"

    .line 364
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 367
    move-result-object p1

    .line 370
    check-cast p1, Lmiui/security/SecurityManager;

    .line 371
    iput-object p1, p0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 373
    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 375
    move-result p0

    .line 378
    if-eqz p0, :cond_1

    .line 379
    goto :goto_0

    .line 381
    :cond_1
    const-wide/16 p0, 0x3e8

    .line 382
    invoke-virtual {p3, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    :goto_0
    return-void
    .line 387
.end method

.method public static getChangedAppLockInfoCore(ILjava/util/Map;Ljava/util/Map;)Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/HashSet;

    .line 8
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 10
    check-cast p1, Ljava/util/HashMap;

    .line 13
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    check-cast p1, Ljava/util/Collection;

    .line 19
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 21
    new-instance p1, Ljava/util/HashSet;

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p0

    .line 29
    new-instance v1, Ljava/util/HashSet;

    .line 30
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 32
    invoke-interface {p2, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Ljava/util/Collection;

    .line 39
    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 41
    new-instance p0, Ljava/util/HashSet;

    .line 44
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 46
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 62
    check-cast p2, Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_0

    .line 78
    :cond_1
    return-object p0
    .line 79
.end method

.method public static isACLockEnabledAsUser(Landroid/content/ContentResolver;I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    move p1, v1

    .line 9
    :cond_0
    sget-object v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->sACLockEnabledAsUser:Landroid/util/SparseBooleanArray;

    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 12
    move-result v2

    .line 15
    if-gez v2, :cond_2

    .line 16
    const-string v2, "access_control_lock_enabled"

    .line 18
    const/4 v3, -0x1

    .line 20
    invoke-static {p0, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    move-result p0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne p0, v2, :cond_1

    .line 26
    move v1, v2

    .line 28
    :cond_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 29
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 33
    move-result v1

    .line 36
    :goto_0
    return v1
    .line 37
.end method
