.class public final Lcom/google/gson/internal/ConstructorConstructor$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$type:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_0

    .line 10
    :pswitch_0
    check-cast p0, Ljava/lang/reflect/Type;

    .line 12
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 14
    const-string v2, "Invalid EnumMap type: "

    .line 16
    if-eqz v0, :cond_1

    .line 18
    move-object v0, p0

    .line 20
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 21
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 23
    move-result-object v0

    .line 26
    aget-object v0, v0, v1

    .line 27
    instance-of v1, v0, Ljava/lang/Class;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    new-instance p0, Ljava/util/EnumMap;

    .line 33
    check-cast v0, Ljava/lang/Class;

    .line 35
    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 37
    return-object p0

    .line 40
    :cond_0
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v0

    .line 62
    :cond_1
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 81
    throw v0

    .line 84
    :pswitch_1
    check-cast p0, Ljava/lang/reflect/Type;

    .line 85
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 87
    const-string v2, "Invalid EnumSet type: "

    .line 89
    if-eqz v0, :cond_3

    .line 91
    move-object v0, p0

    .line 93
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 94
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 96
    move-result-object v0

    .line 99
    aget-object v0, v0, v1

    .line 100
    instance-of v1, v0, Ljava/lang/Class;

    .line 102
    if-eqz v1, :cond_2

    .line 104
    check-cast v0, Ljava/lang/Class;

    .line 106
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 108
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_2
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 123
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 130
    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 131
    throw v0

    .line 134
    :cond_3
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 152
    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 153
    throw v0

    .line 156
    :goto_0
    const-string v0, "\' with no args"

    .line 157
    const-string v2, "Failed to invoke constructor \'"

    .line 159
    :try_start_0
    move-object v3, p0

    .line 161
    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 162
    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-object p0

    .line 170
    :catch_0
    move-exception p0

    .line 171
    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    .line 174
    const-string v1, "Unexpected IllegalAccessException occurred (Gson 2.10). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    .line 176
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    throw v0

    .line 181
    :catch_1
    move-exception v1

    .line 182
    new-instance v3, Ljava/lang/RuntimeException;

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 190
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 192
    move-result-object p0

    .line 195
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object p0

    .line 205
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 206
    move-result-object v0

    .line 209
    invoke-direct {v3, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    throw v3

    .line 213
    :catch_2
    move-exception v1

    .line 214
    new-instance v3, Ljava/lang/RuntimeException;

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 217
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 222
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 227
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object p0

    .line 237
    invoke-direct {v3, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    throw v3

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 242
.end method
