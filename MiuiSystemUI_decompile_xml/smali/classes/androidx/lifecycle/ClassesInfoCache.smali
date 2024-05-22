.class public final Landroidx/lifecycle/ClassesInfoCache;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sInstance:Landroidx/lifecycle/ClassesInfoCache;


# instance fields
.field public final mCallbackMap:Ljava/util/Map;

.field public final mHasLifecycleMethods:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ClassesInfoCache;

    .line 2
    invoke-direct {v0}, Landroidx/lifecycle/ClassesInfoCache;-><init>()V

    .line 4
    sput-object v0, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    .line 17
    return-void
    .line 19
.end method

.method public static verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .locals 3

    .line 1
    check-cast p0, Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    if-ne p2, v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "Method "

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string p0, " in "

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string p0, " already declared with different @OnLifecycleEvent value: previous value "

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string p0, ", new value "

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1

    .line 68
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 69
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    return-void
    .line 74
.end method


# virtual methods
.method public final createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 24
    move-result-object v0

    .line 27
    array-length v2, v0

    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    if-ge v4, v2, :cond_2

    .line 31
    aget-object v5, v0, v4

    .line 33
    invoke-virtual {p0, v5}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 35
    move-result-object v5

    .line 38
    iget-object v5, v5, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    .line 39
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 41
    move-result-object v5

    .line 44
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v5

    .line 48
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 58
    check-cast v6, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    move-result-object v7

    .line 64
    check-cast v7, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    .line 65
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    move-result-object v6

    .line 70
    check-cast v6, Landroidx/lifecycle/Lifecycle$Event;

    .line 71
    invoke-static {v1, v7, v6, p1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 73
    goto :goto_1

    .line 76
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    if-eqz p2, :cond_3

    .line 80
    goto :goto_2

    .line 82
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 83
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_2
    array-length v0, p2

    .line 87
    move v2, v3

    .line 88
    move v4, v2

    .line 89
    :goto_3
    if-ge v2, v0, :cond_b

    .line 90
    aget-object v5, p2, v2

    .line 92
    const-class v6, Landroidx/lifecycle/OnLifecycleEvent;

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 96
    move-result-object v6

    .line 99
    check-cast v6, Landroidx/lifecycle/OnLifecycleEvent;

    .line 100
    if-nez v6, :cond_4

    .line 102
    goto :goto_6

    .line 104
    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 105
    move-result-object v4

    .line 108
    array-length v7, v4

    .line 109
    const/4 v8, 0x1

    .line 110
    if-lez v7, :cond_6

    .line 111
    const-class v7, Landroidx/lifecycle/LifecycleOwner;

    .line 113
    aget-object v9, v4, v3

    .line 115
    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 117
    move-result v7

    .line 120
    if-eqz v7, :cond_5

    .line 121
    move v7, v8

    .line 123
    goto :goto_4

    .line 124
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 125
    const-string p1, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0

    .line 132
    :cond_6
    move v7, v3

    .line 133
    :goto_4
    invoke-interface {v6}, Landroidx/lifecycle/OnLifecycleEvent;->value()Landroidx/lifecycle/Lifecycle$Event;

    .line 134
    move-result-object v6

    .line 137
    array-length v9, v4

    .line 138
    const/4 v10, 0x2

    .line 139
    if-le v9, v8, :cond_9

    .line 140
    const-class v7, Landroidx/lifecycle/Lifecycle$Event;

    .line 142
    aget-object v9, v4, v8

    .line 144
    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 146
    move-result v7

    .line 149
    if-eqz v7, :cond_8

    .line 150
    sget-object v7, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    .line 152
    if-ne v6, v7, :cond_7

    .line 154
    move v7, v10

    .line 156
    goto :goto_5

    .line 157
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 158
    const-string p1, "Second arg is supported only for ON_ANY value"

    .line 160
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p0

    .line 165
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 166
    const-string p1, "invalid parameter type. second arg must be an event"

    .line 168
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    throw p0

    .line 173
    :cond_9
    :goto_5
    array-length v4, v4

    .line 174
    if-gt v4, v10, :cond_a

    .line 175
    new-instance v4, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    .line 177
    invoke-direct {v4, v7, v5}, Landroidx/lifecycle/ClassesInfoCache$MethodReference;-><init>(ILjava/lang/reflect/Method;)V

    .line 179
    invoke-static {v1, v4, v6, p1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 182
    move v4, v8

    .line 185
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 186
    goto :goto_3

    .line 188
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 189
    const-string p1, "cannot have more than 2 params"

    .line 191
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    throw p0

    .line 196
    :cond_b
    new-instance p2, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 197
    invoke-direct {p2, v1}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;-><init>(Ljava/util/Map;)V

    .line 199
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    .line 202
    check-cast v0, Ljava/util/HashMap;

    .line 204
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object p0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    .line 209
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    move-result-object v0

    .line 214
    check-cast p0, Ljava/util/HashMap;

    .line 215
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-object p2

    .line 220
    :catch_0
    move-exception p0

    .line 221
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 222
    const-string p2, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    .line 224
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    throw p1
    .line 229
.end method

.method public final getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method
