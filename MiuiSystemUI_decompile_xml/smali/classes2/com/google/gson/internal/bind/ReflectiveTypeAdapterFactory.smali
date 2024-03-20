.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field public final excluder:Lcom/google/gson/internal/Excluder;

.field public final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field public final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final reflectionFilters:Ljava/util/List;


# direct methods
.method public static -$$Nest$smcheckAccessible(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/lang/reflect/Member;

    .line 3
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 5
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 15
    :cond_0
    sget-object v0, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->INSTANCE:Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;

    .line 16
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->canAccess(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    return-void

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    invoke-static {p1, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 30
    const-string v0, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    .line 32
    invoke-static {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
    .line 41
.end method

.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/List;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 7
    iput-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 9
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 11
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 13
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 2
    const-class v1, Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    .line 14
    invoke-static {v1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->getFilterResult(Ljava/util/List;)V

    .line 16
    sget-object v1, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 19
    invoke-virtual {v1, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->isRecord(Ljava/lang/Class;)Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    new-instance v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;

    .line 27
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/Map;

    .line 30
    move-result-object p0

    .line 33
    invoke-direct {v1, v0, p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 34
    return-object v1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 38
    invoke-virtual {v1, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 40
    move-result-object v1

    .line 43
    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;

    .line 44
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/Map;

    .line 47
    move-result-object p0

    .line 50
    invoke-direct {v2, v1, p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    .line 51
    return-object v2
    .line 54
.end method

.method public final getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/Map;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v15, p1

    .line 4
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 6
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    return-object v14

    .line 17
    :cond_0
    move-object/from16 v1, p2

    .line 18
    iget-object v13, v1, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 20
    move-object/from16 v11, p3

    .line 22
    move-object v12, v1

    .line 24
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 25
    if-eq v11, v1, :cond_14

    .line 27
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 29
    move-result-object v10

    .line 32
    move-object/from16 v9, p3

    .line 33
    if-eq v11, v9, :cond_1

    .line 35
    array-length v1, v10

    .line 37
    if-lez v1, :cond_1

    .line 38
    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    .line 40
    invoke-static {v1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->getFilterResult(Ljava/util/List;)V

    .line 42
    :cond_1
    const/16 v16, 0x0

    .line 45
    array-length v8, v10

    .line 47
    const/4 v1, 0x0

    .line 48
    move v7, v1

    .line 49
    :goto_1
    iget-object v2, v12, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 50
    if-ge v7, v8, :cond_13

    .line 52
    aget-object v6, v10, v7

    .line 54
    const/4 v3, 0x1

    .line 56
    invoke-virtual {v0, v6, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    .line 57
    move-result v3

    .line 60
    invoke-virtual {v0, v6, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    .line 61
    move-result v4

    .line 64
    if-nez v3, :cond_2

    .line 65
    if-nez v4, :cond_2

    .line 67
    move/from16 v35, v7

    .line 69
    move/from16 v36, v8

    .line 71
    move-object/from16 v27, v10

    .line 73
    move-object/from16 p2, v11

    .line 75
    move-object/from16 v28, v12

    .line 77
    move-object/from16 v37, v13

    .line 79
    move-object v0, v14

    .line 81
    goto/16 :goto_d

    .line 82
    :cond_2
    const/16 v17, 0x0

    .line 84
    if-eqz p4, :cond_6

    .line 86
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 88
    move-result v5

    .line 91
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 92
    move-result v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    goto :goto_3

    .line 98
    :cond_3
    sget-object v1, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 99
    invoke-virtual {v1, v11, v6}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 101
    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 105
    const-class v5, Lcom/google/gson/annotations/SerializedName;

    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 110
    move-result-object v5

    .line 113
    if-eqz v5, :cond_5

    .line 114
    const-class v5, Lcom/google/gson/annotations/SerializedName;

    .line 116
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 118
    move-result-object v5

    .line 121
    if-eqz v5, :cond_4

    .line 122
    goto :goto_2

    .line 124
    :cond_4
    const/4 v0, 0x0

    .line 125
    invoke-static {v1, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 129
    new-instance v1, Lcom/google/gson/JsonIOException;

    .line 130
    const-string v2, "@SerializedName on "

    .line 132
    const-string v3, " is not supported"

    .line 134
    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 139
    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 140
    throw v1

    .line 143
    :cond_5
    :goto_2
    move-object/from16 v18, v1

    .line 144
    move/from16 v19, v4

    .line 146
    goto :goto_4

    .line 148
    :cond_6
    move v1, v4

    .line 149
    :goto_3
    move/from16 v19, v1

    .line 150
    move-object/from16 v18, v17

    .line 152
    :goto_4
    if-nez v18, :cond_7

    .line 154
    invoke-static {v6}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 156
    :cond_7
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 159
    move-result-object v1

    .line 162
    new-instance v4, Ljava/util/HashMap;

    .line 163
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 165
    invoke-static {v2, v11, v1, v4}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 168
    move-result-object v5

    .line 171
    const-class v1, Lcom/google/gson/annotations/SerializedName;

    .line 172
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 174
    move-result-object v1

    .line 177
    check-cast v1, Lcom/google/gson/annotations/SerializedName;

    .line 178
    if-nez v1, :cond_8

    .line 180
    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 182
    invoke-interface {v1, v6}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 187
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 188
    move-result-object v1

    .line 191
    goto :goto_5

    .line 192
    :cond_8
    invoke-interface {v1}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 196
    invoke-interface {v1}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 200
    array-length v4, v1

    .line 201
    if-nez v4, :cond_9

    .line 202
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 204
    move-result-object v1

    .line 207
    :goto_5
    const/4 v2, 0x1

    .line 208
    move-object v4, v1

    .line 209
    move/from16 v20, v2

    .line 210
    move/from16 p2, v3

    .line 212
    goto :goto_6

    .line 214
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 215
    move/from16 p2, v3

    .line 217
    array-length v3, v1

    .line 219
    const/16 v20, 0x1

    .line 220
    add-int/lit8 v3, v3, 0x1

    .line 222
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v4, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 230
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 233
    move-result v3

    .line 236
    const/4 v1, 0x0

    .line 237
    move v2, v1

    .line 238
    move-object/from16 v21, v17

    .line 239
    move/from16 v1, p2

    .line 241
    :goto_7
    if-ge v2, v3, :cond_11

    .line 243
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    move-result-object v22

    .line 248
    move-object/from16 v23, v14

    .line 249
    move-object/from16 v14, v22

    .line 251
    check-cast v14, Ljava/lang/String;

    .line 253
    if-eqz v2, :cond_a

    .line 255
    const/4 v1, 0x0

    .line 257
    :cond_a
    move/from16 v22, v1

    .line 258
    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    .line 260
    invoke-direct {v1, v5}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 262
    move/from16 p2, v2

    .line 265
    iget-object v2, v1, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 267
    move/from16 v24, v3

    .line 269
    instance-of v3, v2, Ljava/lang/Class;

    .line 271
    if-eqz v3, :cond_b

    .line 273
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 275
    move-result v2

    .line 278
    if-eqz v2, :cond_b

    .line 279
    move/from16 v25, v20

    .line 281
    goto :goto_8

    .line 283
    :cond_b
    const/4 v2, 0x0

    .line 284
    move/from16 v25, v2

    .line 285
    :goto_8
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 287
    move-result v2

    .line 290
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 291
    move-result v3

    .line 294
    if-eqz v3, :cond_c

    .line 295
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 297
    move-result v2

    .line 300
    if-eqz v2, :cond_c

    .line 301
    move/from16 v26, v20

    .line 303
    goto :goto_9

    .line 305
    :cond_c
    const/4 v2, 0x0

    .line 306
    move/from16 v26, v2

    .line 307
    :goto_9
    const-class v2, Lcom/google/gson/annotations/JsonAdapter;

    .line 309
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 311
    move-result-object v2

    .line 314
    check-cast v2, Lcom/google/gson/annotations/JsonAdapter;

    .line 315
    if-eqz v2, :cond_d

    .line 317
    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 319
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 324
    invoke-static {v3, v15, v1, v2}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    .line 326
    move-result-object v2

    .line 329
    goto :goto_a

    .line 330
    :cond_d
    move-object/from16 v2, v17

    .line 331
    :goto_a
    if-eqz v2, :cond_e

    .line 333
    move/from16 v27, v20

    .line 335
    goto :goto_b

    .line 337
    :cond_e
    const/4 v3, 0x0

    .line 338
    move/from16 v27, v3

    .line 339
    :goto_b
    if-nez v2, :cond_f

    .line 341
    invoke-virtual {v15, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 343
    move-result-object v2

    .line 346
    :cond_f
    move-object/from16 v28, v2

    .line 347
    new-instance v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .line 349
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 351
    move-result-object v29

    .line 354
    move-object/from16 v30, v1

    .line 355
    move-object v1, v3

    .line 357
    move/from16 v31, p2

    .line 358
    move-object v2, v14

    .line 360
    move-object/from16 v32, v3

    .line 361
    move-object/from16 v3, v29

    .line 363
    move-object/from16 v29, v4

    .line 365
    move/from16 v4, v22

    .line 367
    move-object/from16 v33, v5

    .line 369
    move/from16 v5, v19

    .line 371
    move-object/from16 v34, v6

    .line 373
    move/from16 v6, v16

    .line 375
    move/from16 v35, v7

    .line 377
    move-object/from16 v7, v18

    .line 379
    move/from16 v36, v8

    .line 381
    move-object/from16 v8, v34

    .line 383
    move/from16 v9, v27

    .line 385
    move-object/from16 v27, v10

    .line 387
    move-object/from16 v10, v28

    .line 389
    move-object/from16 p2, v11

    .line 391
    move-object/from16 v11, p1

    .line 393
    move-object/from16 v28, v12

    .line 395
    move-object/from16 v12, v30

    .line 397
    move-object/from16 v37, v13

    .line 399
    move/from16 v13, v25

    .line 401
    move-object v15, v14

    .line 403
    move-object/from16 v0, v23

    .line 404
    move/from16 v14, v26

    .line 406
    invoke-direct/range {v1 .. v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;ZZ)V

    .line 408
    move-object/from16 v1, v32

    .line 411
    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    move-result-object v1

    .line 416
    check-cast v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .line 417
    move-object/from16 v2, v21

    .line 419
    if-nez v2, :cond_10

    .line 421
    move-object/from16 v21, v1

    .line 423
    goto :goto_c

    .line 425
    :cond_10
    move-object/from16 v21, v2

    .line 426
    :goto_c
    add-int/lit8 v2, v31, 0x1

    .line 428
    move-object/from16 v15, p1

    .line 430
    move-object/from16 v11, p2

    .line 432
    move-object/from16 v9, p3

    .line 434
    move-object v14, v0

    .line 436
    move/from16 v1, v22

    .line 437
    move/from16 v3, v24

    .line 439
    move-object/from16 v10, v27

    .line 441
    move-object/from16 v12, v28

    .line 443
    move-object/from16 v4, v29

    .line 445
    move-object/from16 v5, v33

    .line 447
    move-object/from16 v6, v34

    .line 449
    move/from16 v7, v35

    .line 451
    move/from16 v8, v36

    .line 453
    move-object/from16 v13, v37

    .line 455
    move-object/from16 v0, p0

    .line 457
    goto/16 :goto_7

    .line 459
    :cond_11
    move/from16 v35, v7

    .line 461
    move/from16 v36, v8

    .line 463
    move-object/from16 v27, v10

    .line 465
    move-object/from16 p2, v11

    .line 467
    move-object/from16 v28, v12

    .line 469
    move-object/from16 v37, v13

    .line 471
    move-object v0, v14

    .line 473
    move-object/from16 v2, v21

    .line 474
    const/4 v1, 0x0

    .line 476
    if-nez v2, :cond_12

    .line 477
    :goto_d
    add-int/lit8 v7, v35, 0x1

    .line 479
    move-object/from16 v15, p1

    .line 481
    move-object/from16 v11, p2

    .line 483
    move-object/from16 v9, p3

    .line 485
    move-object v14, v0

    .line 487
    move-object/from16 v10, v27

    .line 488
    move-object/from16 v12, v28

    .line 490
    move/from16 v8, v36

    .line 492
    move-object/from16 v13, v37

    .line 494
    move-object/from16 v0, p0

    .line 496
    goto/16 :goto_1

    .line 498
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    .line 502
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    move-object/from16 v3, v37

    .line 507
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    const-string v3, " declares multiple JSON fields named "

    .line 512
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v2, v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->name:Ljava/lang/String;

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    move-result-object v1

    .line 525
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 526
    throw v0

    .line 529
    :cond_13
    move-object/from16 p2, v11

    .line 530
    move-object v3, v13

    .line 532
    move-object v0, v14

    .line 533
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 534
    move-result-object v1

    .line 537
    new-instance v4, Ljava/util/HashMap;

    .line 538
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 540
    move-object/from16 v5, p2

    .line 543
    invoke-static {v2, v5, v1, v4}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 545
    move-result-object v1

    .line 548
    new-instance v12, Lcom/google/gson/reflect/TypeToken;

    .line 549
    invoke-direct {v12, v1}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 551
    iget-object v11, v12, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 554
    move-object/from16 v15, p1

    .line 556
    move-object/from16 v0, p0

    .line 558
    goto/16 :goto_0

    .line 560
    :cond_14
    move-object v0, v14

    .line 562
    return-object v0
    .line 563
.end method

.method public final includeField(Ljava/lang/reflect/Field;Z)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {v0}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0, p2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Z)V

    .line 19
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    if-nez v0, :cond_7

    .line 25
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 27
    move-result v0

    .line 30
    and-int/lit16 v0, v0, 0x88

    .line 31
    if-eqz v0, :cond_1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 43
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    .line 47
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    :goto_1
    move p0, v2

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    if-eqz p2, :cond_4

    .line 55
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 57
    goto :goto_2

    .line 59
    :cond_4
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 60
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 62
    move-result p1

    .line 65
    if-nez p1, :cond_6

    .line 66
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result p1

    .line 75
    if-nez p1, :cond_5

    .line 76
    goto :goto_3

    .line 78
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 82
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 83
    const/4 p0, 0x0

    .line 86
    throw p0

    .line 87
    :cond_6
    :goto_3
    move p0, v1

    .line 88
    :goto_4
    if-nez p0, :cond_7

    .line 89
    move v1, v2

    .line 91
    :cond_7
    return v1
    .line 92
.end method
