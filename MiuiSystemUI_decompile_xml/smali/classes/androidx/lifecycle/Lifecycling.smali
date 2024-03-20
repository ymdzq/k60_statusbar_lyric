.class public abstract Landroidx/lifecycle/Lifecycling;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sCallbackCache:Ljava/util/Map;

.field public static final sClassToAdapters:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    sput-object v0, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    .line 14
    return-void
    .line 16
.end method

.method public static createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .locals 0

    .line 1
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    throw p1

    .line 20
    :catch_1
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/RuntimeException;

    .line 22
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    throw p1

    .line 27
    :catch_2
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/RuntimeException;

    .line 29
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    throw p1
    .line 34
.end method

.method public static getAdapterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    const-string v1, "."

    .line 7
    const-string v2, "_"

    .line 9
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p0, "_LifecycleAdapter"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public static getObserverConstructorType(Ljava/lang/Class;)I
    .locals 12

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v1, :cond_1

    .line 24
    goto/16 :goto_b

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 29
    move-result-object v3

    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 36
    if-eqz v3, :cond_2

    .line 37
    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string v3, ""

    .line 44
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 46
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 53
    move-result v5

    .line 56
    add-int/2addr v5, v2

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 61
    :goto_1
    invoke-static {v4}, Landroidx/lifecycle/Lifecycling;->getAdapterName(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 66
    move-result v5

    .line 69
    if-eqz v5, :cond_4

    .line 70
    goto :goto_2

    .line 72
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v3, "."

    .line 81
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 92
    :goto_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 93
    move-result-object v3

    .line 96
    filled-new-array {p0}, [Ljava/lang/Class;

    .line 97
    move-result-object v4

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 101
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    .line 105
    move-result v4

    .line 108
    if-nez v4, :cond_5

    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_3

    .line 114
    :catch_0
    move-exception p0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    .line 116
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 118
    throw v0

    .line 121
    :catch_1
    move-object v3, v1

    .line 122
    :cond_5
    :goto_3
    sget-object v4, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    .line 123
    if-eqz v3, :cond_6

    .line 125
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 127
    move-result-object v1

    .line 130
    check-cast v4, Ljava/util/HashMap;

    .line 131
    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    goto/16 :goto_a

    .line 136
    :cond_6
    sget-object v3, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    .line 138
    iget-object v5, v3, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    .line 140
    check-cast v5, Ljava/util/HashMap;

    .line 142
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v6

    .line 147
    check-cast v6, Ljava/lang/Boolean;

    .line 148
    const/4 v7, 0x0

    .line 150
    if-eqz v6, :cond_7

    .line 151
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    move-result v3

    .line 156
    goto :goto_5

    .line 157
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 158
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    .line 161
    array-length v8, v6

    .line 162
    move v9, v7

    .line 163
    :goto_4
    if-ge v9, v8, :cond_9

    .line 164
    aget-object v10, v6, v9

    .line 166
    const-class v11, Landroidx/lifecycle/OnLifecycleEvent;

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 170
    move-result-object v10

    .line 173
    check-cast v10, Landroidx/lifecycle/OnLifecycleEvent;

    .line 174
    if-eqz v10, :cond_8

    .line 176
    invoke-virtual {v3, p0, v6}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 178
    move v3, v2

    .line 181
    goto :goto_5

    .line 182
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 183
    goto :goto_4

    .line 185
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 186
    invoke-virtual {v5, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move v3, v7

    .line 191
    :goto_5
    if-eqz v3, :cond_a

    .line 192
    goto/16 :goto_b

    .line 194
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 196
    move-result-object v3

    .line 199
    const-class v5, Landroidx/lifecycle/LifecycleObserver;

    .line 200
    if-eqz v3, :cond_b

    .line 202
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 204
    move-result v6

    .line 207
    if-eqz v6, :cond_b

    .line 208
    move v6, v2

    .line 210
    goto :goto_6

    .line 211
    :cond_b
    move v6, v7

    .line 212
    :goto_6
    if-eqz v6, :cond_d

    .line 213
    invoke-static {v3}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    .line 215
    move-result v1

    .line 218
    if-ne v1, v2, :cond_c

    .line 219
    goto :goto_b

    .line 221
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    .line 222
    move-object v6, v4

    .line 224
    check-cast v6, Ljava/util/HashMap;

    .line 225
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    move-result-object v3

    .line 230
    check-cast v3, Ljava/util/Collection;

    .line 231
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 236
    move-result-object v3

    .line 239
    array-length v6, v3

    .line 240
    move v8, v7

    .line 241
    :goto_7
    if-ge v8, v6, :cond_12

    .line 242
    aget-object v9, v3, v8

    .line 244
    if-eqz v9, :cond_e

    .line 246
    invoke-virtual {v5, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 248
    move-result v10

    .line 251
    if-eqz v10, :cond_e

    .line 252
    move v10, v2

    .line 254
    goto :goto_8

    .line 255
    :cond_e
    move v10, v7

    .line 256
    :goto_8
    if-nez v10, :cond_f

    .line 257
    goto :goto_9

    .line 259
    :cond_f
    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    .line 260
    move-result v10

    .line 263
    if-ne v10, v2, :cond_10

    .line 264
    goto :goto_b

    .line 266
    :cond_10
    if-nez v1, :cond_11

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    .line 269
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    :cond_11
    move-object v10, v4

    .line 274
    check-cast v10, Ljava/util/HashMap;

    .line 275
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    move-result-object v9

    .line 280
    check-cast v9, Ljava/util/Collection;

    .line 281
    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 286
    goto :goto_7

    .line 288
    :cond_12
    if-eqz v1, :cond_13

    .line 289
    check-cast v4, Ljava/util/HashMap;

    .line 291
    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :goto_a
    const/4 v2, 0x2

    .line 296
    :cond_13
    :goto_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    move-result-object v1

    .line 300
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return v2

    .line 304
    :catch_2
    move-exception p0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 306
    const-string v1, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    .line 308
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    throw v0
    .line 313
.end method
