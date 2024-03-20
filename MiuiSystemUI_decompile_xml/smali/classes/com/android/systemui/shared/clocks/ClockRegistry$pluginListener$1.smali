.class public final Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPluginAttached(Lcom/android/systemui/plugins/PluginLifecycleManager;)Z
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->KNOWN_PLUGINS:Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/plugins/PluginLifecycleManager;->getPackage()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/List;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    .line 19
    iget-object v2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 21
    const/4 v3, 0x6

    .line 23
    const/4 v4, 0x5

    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x3

    .line 26
    const/4 v7, 0x2

    .line 27
    const/4 v8, 0x0

    .line 28
    if-nez v0, :cond_6

    .line 29
    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 31
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$2;

    .line 33
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v2, v1, p0, v0, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 37
    move-result-object p0

    .line 40
    invoke-interface {p1}, Lcom/android/systemui/plugins/PluginLifecycleManager;->getPackage()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    invoke-interface {p0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 52
    move-result-object v2

    .line 55
    invoke-interface {p1}, Lcom/android/systemui/plugins/PluginLifecycleManager;->getPackage()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 63
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 70
    check-cast p1, Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 73
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 75
    move-result p0

    .line 78
    aget p0, v0, p0

    .line 79
    if-eq p0, v7, :cond_5

    .line 81
    if-eq p0, v6, :cond_4

    .line 83
    if-eq p0, v5, :cond_3

    .line 85
    if-eq p0, v4, :cond_2

    .line 87
    if-eq p0, v3, :cond_1

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v1, p1, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    invoke-static {v1, p1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    goto :goto_0

    .line 99
    :cond_3
    invoke-static {v1, p1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    goto :goto_0

    .line 103
    :cond_4
    invoke-static {v1, p1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    goto :goto_0

    .line 107
    :cond_5
    invoke-static {v1, p1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :goto_0
    const/4 p0, 0x1

    .line 111
    return p0

    .line 112
    :cond_6
    sget-object v9, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 113
    sget-object v10, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$4;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$4;

    .line 115
    if-eqz v2, :cond_7

    .line 117
    invoke-virtual {v2, v1, v9, v10, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 119
    move-result-object v9

    .line 122
    invoke-interface {p1}, Lcom/android/systemui/plugins/PluginLifecycleManager;->getPackage()Ljava/lang/String;

    .line 123
    move-result-object v10

    .line 126
    invoke-interface {v9, v10}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2, v9}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 130
    goto :goto_1

    .line 133
    :cond_7
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 134
    move-result-object v11

    .line 137
    invoke-interface {p1}, Lcom/android/systemui/plugins/PluginLifecycleManager;->getPackage()Ljava/lang/String;

    .line 138
    move-result-object v12

    .line 141
    invoke-interface {v11, v12}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 145
    move-result-object v11

    .line 148
    invoke-virtual {v10, v11}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object v10

    .line 152
    check-cast v10, Ljava/lang/String;

    .line 153
    sget-object v11, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 155
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 157
    move-result v9

    .line 160
    aget v9, v11, v9

    .line 161
    if-eq v9, v7, :cond_c

    .line 163
    if-eq v9, v6, :cond_b

    .line 165
    if-eq v9, v5, :cond_a

    .line 167
    if-eq v9, v4, :cond_9

    .line 169
    if-eq v9, v3, :cond_8

    .line 171
    goto :goto_1

    .line 173
    :cond_8
    invoke-static {v1, v10, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    goto :goto_1

    .line 177
    :cond_9
    invoke-static {v1, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    goto :goto_1

    .line 181
    :cond_a
    invoke-static {v1, v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    goto :goto_1

    .line 185
    :cond_b
    invoke-static {v1, v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    goto :goto_1

    .line 189
    :cond_c
    invoke-static {v1, v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :goto_1
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 193
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    move-result-object v0

    .line 201
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    move-result v10

    .line 205
    if-eqz v10, :cond_16

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    move-result-object v10

    .line 211
    check-cast v10, Lcom/android/systemui/plugins/ClockMetadata;

    .line 212
    invoke-virtual {v10}, Lcom/android/systemui/plugins/ClockMetadata;->getClockId()Ljava/lang/String;

    .line 214
    move-result-object v11

    .line 217
    iget-object v12, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    new-instance v13, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 220
    invoke-direct {v13, v10, v8, p1}, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;-><init>(Lcom/android/systemui/plugins/ClockMetadata;Lcom/android/systemui/plugins/ClockProvider;Lcom/android/systemui/plugins/PluginLifecycleManager;)V

    .line 222
    new-instance v10, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$info$1;

    .line 225
    invoke-direct {v10, v9, p0, v11}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$info$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/shared/clocks/ClockRegistry;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v12, v11, v13}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-result-object v12

    .line 233
    if-nez v12, :cond_d

    .line 234
    invoke-virtual {v10}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$info$1;->invoke()Ljava/lang/Object;

    .line 236
    :cond_d
    if-nez v12, :cond_e

    .line 239
    goto :goto_3

    .line 241
    :cond_e
    move-object v13, v12

    .line 242
    :goto_3
    check-cast v13, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 243
    iget-object v10, v13, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    .line 245
    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    move-result v10

    .line 250
    if-nez v10, :cond_15

    .line 251
    sget-object v10, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 253
    sget-object v12, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$6;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$6;

    .line 255
    if-eqz v2, :cond_f

    .line 257
    invoke-virtual {v2, v1, v10, v12, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 259
    move-result-object v10

    .line 262
    invoke-interface {v10, v11}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2, v10}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 266
    goto :goto_2

    .line 269
    :cond_f
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 270
    move-result-object v13

    .line 273
    invoke-interface {v13, v11}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 277
    move-result-object v11

    .line 280
    invoke-virtual {v12, v11}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    move-result-object v11

    .line 284
    check-cast v11, Ljava/lang/String;

    .line 285
    sget-object v12, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 287
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 289
    move-result v10

    .line 292
    aget v10, v12, v10

    .line 293
    if-eq v10, v7, :cond_14

    .line 295
    if-eq v10, v6, :cond_13

    .line 297
    if-eq v10, v5, :cond_12

    .line 299
    if-eq v10, v4, :cond_11

    .line 301
    if-eq v10, v3, :cond_10

    .line 303
    goto :goto_2

    .line 305
    :cond_10
    invoke-static {v1, v11, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    goto :goto_2

    .line 309
    :cond_11
    invoke-static {v1, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    goto :goto_2

    .line 313
    :cond_12
    invoke-static {v1, v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    goto :goto_2

    .line 317
    :cond_13
    invoke-static {v1, v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    goto :goto_2

    .line 321
    :cond_14
    invoke-static {v1, v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    goto :goto_2

    .line 325
    :cond_15
    iput-object v8, v13, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->provider:Lcom/android/systemui/plugins/ClockProvider;

    .line 326
    goto :goto_2

    .line 328
    :cond_16
    iget-boolean p1, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 329
    if-eqz p1, :cond_17

    .line 331
    invoke-static {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->access$triggerOnAvailableClocksChanged(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    .line 333
    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->verifyLoadedProviders()V

    .line 336
    const/4 p0, 0x0

    .line 339
    return p0
    .line 340
.end method

.method public final onPluginDetached(Lcom/android/systemui/plugins/PluginLifecycleManager;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 14
    new-instance v2, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginDetached$1;

    .line 15
    invoke-direct {v2, p1, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginDetached$1;-><init>(Lcom/android/systemui/plugins/PluginLifecycleManager;Ljava/util/List;)V

    .line 17
    const/4 p1, 0x1

    .line 20
    invoke-static {v1, v2, p1}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Z)Z

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_d

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 40
    sget-object v3, Lcom/android/systemui/shared/clocks/ClockRegistry$onDisconnected$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onDisconnected$2;

    .line 42
    const/4 v4, 0x6

    .line 44
    const/4 v5, 0x5

    .line 45
    const/4 v6, 0x4

    .line 46
    const/4 v7, 0x3

    .line 47
    const/4 v8, 0x2

    .line 48
    iget-object v9, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 49
    iget-object v10, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    .line 51
    const/4 v11, 0x0

    .line 53
    if-eqz v9, :cond_1

    .line 54
    invoke-virtual {v9, v10, v2, v3, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 56
    move-result-object v2

    .line 59
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v9, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 63
    goto :goto_1

    .line 66
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 67
    move-result-object v12

    .line 70
    invoke-interface {v12, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 74
    move-result-object v12

    .line 77
    invoke-virtual {v3, v12}, Lcom/android/systemui/shared/clocks/ClockRegistry$onDisconnected$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 81
    check-cast v3, Ljava/lang/String;

    .line 82
    sget-object v12, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 84
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 86
    move-result v2

    .line 89
    aget v2, v12, v2

    .line 90
    if-eq v2, v8, :cond_6

    .line 92
    if-eq v2, v7, :cond_5

    .line 94
    if-eq v2, v6, :cond_4

    .line 96
    if-eq v2, v5, :cond_3

    .line 98
    if-eq v2, v4, :cond_2

    .line 100
    goto :goto_1

    .line 102
    :cond_2
    invoke-static {v10, v3, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    goto :goto_1

    .line 106
    :cond_3
    invoke-static {v10, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    goto :goto_1

    .line 110
    :cond_4
    invoke-static {v10, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    goto :goto_1

    .line 114
    :cond_5
    invoke-static {v10, v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    goto :goto_1

    .line 118
    :cond_6
    invoke-static {v10, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 125
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result v2

    .line 129
    if-eqz v2, :cond_0

    .line 130
    sget-object v2, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 132
    sget-object v3, Lcom/android/systemui/shared/clocks/ClockRegistry$onDisconnected$4;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onDisconnected$4;

    .line 134
    if-eqz v9, :cond_7

    .line 136
    invoke-virtual {v9, v10, v2, v3, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 138
    move-result-object v2

    .line 141
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v9, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 145
    goto :goto_0

    .line 148
    :cond_7
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 149
    move-result-object v9

    .line 152
    invoke-interface {v9, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 156
    move-result-object v1

    .line 159
    invoke-virtual {v3, v1}, Lcom/android/systemui/shared/clocks/ClockRegistry$onDisconnected$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v1

    .line 163
    check-cast v1, Ljava/lang/String;

    .line 164
    sget-object v3, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 166
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 168
    move-result v2

    .line 171
    aget v2, v3, v2

    .line 172
    if-eq v2, v8, :cond_c

    .line 174
    if-eq v2, v7, :cond_b

    .line 176
    if-eq v2, v6, :cond_a

    .line 178
    if-eq v2, v5, :cond_9

    .line 180
    if-eq v2, v4, :cond_8

    .line 182
    goto/16 :goto_0

    .line 184
    :cond_8
    invoke-static {v10, v1, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    goto/16 :goto_0

    .line 189
    :cond_9
    invoke-static {v10, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    goto/16 :goto_0

    .line 194
    :cond_a
    invoke-static {v10, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    goto/16 :goto_0

    .line 199
    :cond_b
    invoke-static {v10, v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    goto/16 :goto_0

    .line 204
    :cond_c
    invoke-static {v10, v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    goto/16 :goto_0

    .line 209
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 211
    move-result p1

    .line 214
    if-lez p1, :cond_e

    .line 215
    invoke-static {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->access$triggerOnAvailableClocksChanged(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    .line 217
    :cond_e
    return-void
    .line 220
.end method

.method public final onPluginLoaded(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;Lcom/android/systemui/plugins/PluginLifecycleManager;)V
    .locals 16

    .line 1
    move-object/from16 v0, p3

    .line 2
    move-object/from16 v1, p1

    .line 4
    check-cast v1, Lcom/android/systemui/plugins/ClockProviderPlugin;

    .line 6
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 8
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 10
    invoke-interface {v1}, Lcom/android/systemui/plugins/ClockProvider;->getClocks()Ljava/util/List;

    .line 13
    move-result-object v3

    .line 16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v3

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v4

    .line 24
    move-object/from16 v5, p0

    .line 25
    iget-object v6, v5, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 27
    if-eqz v4, :cond_16

    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/systemui/plugins/ClockMetadata;

    .line 35
    invoke-virtual {v4}, Lcom/android/systemui/plugins/ClockMetadata;->getClockId()Ljava/lang/String;

    .line 37
    move-result-object v7

    .line 40
    iget-object v8, v6, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v9, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 43
    invoke-direct {v9, v4, v1, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;-><init>(Lcom/android/systemui/plugins/ClockMetadata;Lcom/android/systemui/plugins/ClockProvider;Lcom/android/systemui/plugins/PluginLifecycleManager;)V

    .line 45
    new-instance v4, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;

    .line 48
    invoke-direct {v4, v2, v6, v7}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/shared/clocks/ClockRegistry;Ljava/lang/String;)V

    .line 50
    sget-object v10, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->KNOWN_PLUGINS:Ljava/util/Map;

    .line 53
    invoke-virtual {v8, v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v8

    .line 58
    if-nez v8, :cond_1

    .line 59
    invoke-virtual {v4}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->invoke()Ljava/lang/Object;

    .line 61
    :cond_1
    if-nez v8, :cond_2

    .line 64
    goto :goto_1

    .line 66
    :cond_2
    move-object v9, v8

    .line 67
    :goto_1
    check-cast v9, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 68
    iget-object v4, v9, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    .line 70
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v4

    .line 75
    const/4 v10, 0x0

    .line 76
    iget-object v11, v6, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    .line 77
    iget-object v12, v6, Lcom/android/systemui/shared/clocks/ClockRegistry;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 79
    const/4 v13, 0x2

    .line 81
    const/4 v14, 0x3

    .line 82
    const/4 v15, 0x4

    .line 83
    const/4 v8, 0x5

    .line 84
    if-nez v4, :cond_9

    .line 85
    sget-object v4, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 87
    sget-object v6, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$2;

    .line 89
    if-eqz v12, :cond_3

    .line 91
    invoke-virtual {v12, v11, v4, v6, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 93
    move-result-object v4

    .line 96
    invoke-interface {v4, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v12, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 100
    goto :goto_2

    .line 103
    :cond_3
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 104
    move-result-object v9

    .line 107
    invoke-interface {v9, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 111
    move-result-object v7

    .line 114
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v6

    .line 118
    check-cast v6, Ljava/lang/String;

    .line 119
    sget-object v7, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 121
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 123
    move-result v4

    .line 126
    aget v4, v7, v4

    .line 127
    if-eq v4, v13, :cond_8

    .line 129
    if-eq v4, v14, :cond_7

    .line 131
    if-eq v4, v15, :cond_6

    .line 133
    if-eq v4, v8, :cond_5

    .line 135
    const/4 v7, 0x6

    .line 137
    if-eq v4, v7, :cond_4

    .line 138
    goto :goto_2

    .line 140
    :cond_4
    invoke-static {v11, v6, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    goto :goto_2

    .line 144
    :cond_5
    invoke-static {v11, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    goto :goto_2

    .line 148
    :cond_6
    invoke-static {v11, v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    goto :goto_2

    .line 152
    :cond_7
    invoke-static {v11, v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    goto :goto_2

    .line 156
    :cond_8
    invoke-static {v11, v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :goto_2
    invoke-interface/range {p3 .. p3}, Lcom/android/systemui/plugins/PluginLifecycleManager;->unloadPlugin()V

    .line 160
    goto/16 :goto_0

    .line 163
    :cond_9
    iput-object v1, v9, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->provider:Lcom/android/systemui/plugins/ClockProvider;

    .line 165
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 167
    sget-object v9, Lcom/android/systemui/shared/clocks/ClockRegistry$onLoaded$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onLoaded$2;

    .line 169
    if-eqz v12, :cond_a

    .line 171
    invoke-virtual {v12, v11, v4, v9, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 173
    move-result-object v4

    .line 176
    invoke-interface {v4, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v12, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 180
    move-object v4, v10

    .line 183
    goto :goto_3

    .line 184
    :cond_a
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 185
    move-result-object v10

    .line 188
    invoke-interface {v10, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 192
    move-result-object v10

    .line 195
    invoke-virtual {v9, v10}, Lcom/android/systemui/shared/clocks/ClockRegistry$onLoaded$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    move-result-object v9

    .line 199
    check-cast v9, Ljava/lang/String;

    .line 200
    sget-object v10, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 202
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 204
    move-result v4

    .line 207
    aget v4, v10, v4

    .line 208
    if-eq v4, v13, :cond_f

    .line 210
    if-eq v4, v14, :cond_e

    .line 212
    if-eq v4, v15, :cond_d

    .line 214
    if-eq v4, v8, :cond_c

    .line 216
    const/4 v10, 0x6

    .line 218
    if-eq v4, v10, :cond_b

    .line 219
    const/4 v4, 0x0

    .line 221
    goto :goto_3

    .line 222
    :cond_b
    const/4 v4, 0x0

    .line 223
    invoke-static {v11, v9, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    goto :goto_3

    .line 227
    :cond_c
    const/4 v4, 0x0

    .line 228
    invoke-static {v11, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    goto :goto_3

    .line 232
    :cond_d
    const/4 v4, 0x0

    .line 233
    invoke-static {v11, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    goto :goto_3

    .line 237
    :cond_e
    const/4 v4, 0x0

    .line 238
    invoke-static {v11, v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    goto :goto_3

    .line 242
    :cond_f
    const/4 v4, 0x0

    .line 243
    invoke-static {v11, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    :goto_3
    invoke-virtual {v6}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    .line 247
    move-result-object v9

    .line 250
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    move-result v9

    .line 254
    if-eqz v9, :cond_0

    .line 255
    sget-object v9, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 257
    sget-object v10, Lcom/android/systemui/shared/clocks/ClockRegistry$onLoaded$4;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onLoaded$4;

    .line 259
    if-eqz v12, :cond_10

    .line 261
    invoke-virtual {v12, v11, v9, v10, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 263
    move-result-object v4

    .line 266
    invoke-interface {v4, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v12, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 270
    goto :goto_4

    .line 273
    :cond_10
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 274
    move-result-object v4

    .line 277
    invoke-interface {v4, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 281
    move-result-object v4

    .line 284
    invoke-virtual {v10, v4}, Lcom/android/systemui/shared/clocks/ClockRegistry$onLoaded$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    move-result-object v4

    .line 288
    check-cast v4, Ljava/lang/String;

    .line 289
    sget-object v7, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 291
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 293
    move-result v9

    .line 296
    aget v7, v7, v9

    .line 297
    if-eq v7, v13, :cond_15

    .line 299
    if-eq v7, v14, :cond_14

    .line 301
    if-eq v7, v15, :cond_13

    .line 303
    if-eq v7, v8, :cond_12

    .line 305
    const/4 v8, 0x6

    .line 307
    if-eq v7, v8, :cond_11

    .line 308
    goto :goto_4

    .line 310
    :cond_11
    const/4 v7, 0x0

    .line 311
    invoke-static {v11, v4, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    goto :goto_4

    .line 315
    :cond_12
    const/4 v7, 0x0

    .line 316
    invoke-static {v11, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    goto :goto_4

    .line 320
    :cond_13
    const/4 v7, 0x0

    .line 321
    invoke-static {v11, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    goto :goto_4

    .line 325
    :cond_14
    const/4 v7, 0x0

    .line 326
    invoke-static {v11, v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    goto :goto_4

    .line 330
    :cond_15
    const/4 v7, 0x0

    .line 331
    invoke-static {v11, v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    :goto_4
    invoke-virtual {v6}, Lcom/android/systemui/shared/clocks/ClockRegistry;->triggerOnCurrentClockChanged()V

    .line 335
    goto/16 :goto_0

    .line 338
    :cond_16
    iget-boolean v0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 340
    if-eqz v0, :cond_17

    .line 342
    invoke-static {v6}, Lcom/android/systemui/shared/clocks/ClockRegistry;->access$triggerOnAvailableClocksChanged(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    .line 344
    :cond_17
    invoke-virtual {v6}, Lcom/android/systemui/shared/clocks/ClockRegistry;->verifyLoadedProviders()V

    .line 347
    return-void
    .line 350
.end method

.method public final onPluginUnloaded(Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/plugins/PluginLifecycleManager;)V
    .locals 13

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/ClockProviderPlugin;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockProvider;->getClocks()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 16
    if-eqz v0, :cond_15

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/plugins/ClockMetadata;->getClockId()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    iget-object v2, v1, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 36
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_1

    .line 39
    iget-object v4, v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    .line 41
    goto :goto_1

    .line 43
    :cond_1
    move-object v4, v3

    .line 44
    :goto_1
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v4

    .line 48
    iget-object v5, v1, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    .line 49
    iget-object v6, v1, Lcom/android/systemui/shared/clocks/ClockRegistry;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 51
    const/4 v7, 0x2

    .line 53
    const/4 v8, 0x3

    .line 54
    const/4 v9, 0x4

    .line 55
    const/4 v10, 0x5

    .line 56
    const/4 v11, 0x6

    .line 57
    if-nez v4, :cond_8

    .line 58
    sget-object v1, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 60
    sget-object v2, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginUnloaded$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginUnloaded$2;

    .line 62
    if-eqz v6, :cond_2

    .line 64
    invoke-virtual {v6, v5, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 66
    move-result-object v1

    .line 69
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v6, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 77
    move-result-object v4

    .line 80
    invoke-interface {v4, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 84
    move-result-object v0

    .line 87
    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginUnloaded$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/String;

    .line 92
    sget-object v2, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 94
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 96
    move-result v1

    .line 99
    aget v1, v2, v1

    .line 100
    if-eq v1, v7, :cond_7

    .line 102
    if-eq v1, v8, :cond_6

    .line 104
    if-eq v1, v9, :cond_5

    .line 106
    if-eq v1, v10, :cond_4

    .line 108
    if-eq v1, v11, :cond_3

    .line 110
    goto :goto_0

    .line 112
    :cond_3
    invoke-static {v5, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    goto :goto_0

    .line 116
    :cond_4
    invoke-static {v5, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    goto :goto_0

    .line 120
    :cond_5
    invoke-static {v5, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    goto :goto_0

    .line 124
    :cond_6
    invoke-static {v5, v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    goto :goto_0

    .line 128
    :cond_7
    invoke-static {v5, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    goto :goto_0

    .line 132
    :cond_8
    iput-object v3, v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->provider:Lcom/android/systemui/plugins/ClockProvider;

    .line 133
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 135
    sget-object v4, Lcom/android/systemui/shared/clocks/ClockRegistry$onUnloaded$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onUnloaded$2;

    .line 137
    if-eqz v6, :cond_9

    .line 139
    invoke-virtual {v6, v5, v2, v4, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 141
    move-result-object v2

    .line 144
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 148
    goto :goto_2

    .line 151
    :cond_9
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 152
    move-result-object v12

    .line 155
    invoke-interface {v12, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 159
    move-result-object v12

    .line 162
    invoke-virtual {v4, v12}, Lcom/android/systemui/shared/clocks/ClockRegistry$onUnloaded$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-result-object v4

    .line 166
    check-cast v4, Ljava/lang/String;

    .line 167
    sget-object v12, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 169
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 171
    move-result v2

    .line 174
    aget v2, v12, v2

    .line 175
    if-eq v2, v7, :cond_e

    .line 177
    if-eq v2, v8, :cond_d

    .line 179
    if-eq v2, v9, :cond_c

    .line 181
    if-eq v2, v10, :cond_b

    .line 183
    if-eq v2, v11, :cond_a

    .line 185
    goto :goto_2

    .line 187
    :cond_a
    invoke-static {v5, v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    goto :goto_2

    .line 191
    :cond_b
    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    goto :goto_2

    .line 195
    :cond_c
    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    goto :goto_2

    .line 199
    :cond_d
    invoke-static {v5, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    goto :goto_2

    .line 203
    :cond_e
    invoke-static {v5, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :goto_2
    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    .line 207
    move-result-object v2

    .line 210
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    move-result v2

    .line 214
    if-eqz v2, :cond_0

    .line 215
    sget-object v2, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 217
    sget-object v4, Lcom/android/systemui/shared/clocks/ClockRegistry$onUnloaded$4;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onUnloaded$4;

    .line 219
    if-eqz v6, :cond_f

    .line 221
    invoke-virtual {v6, v5, v2, v4, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 223
    move-result-object v2

    .line 226
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v6, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 230
    goto :goto_3

    .line 233
    :cond_f
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 234
    move-result-object v6

    .line 237
    invoke-interface {v6, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 241
    move-result-object v0

    .line 244
    invoke-virtual {v4, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry$onUnloaded$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-result-object v0

    .line 248
    check-cast v0, Ljava/lang/String;

    .line 249
    sget-object v4, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 251
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 253
    move-result v2

    .line 256
    aget v2, v4, v2

    .line 257
    if-eq v2, v7, :cond_14

    .line 259
    if-eq v2, v8, :cond_13

    .line 261
    if-eq v2, v9, :cond_12

    .line 263
    if-eq v2, v10, :cond_11

    .line 265
    if-eq v2, v11, :cond_10

    .line 267
    goto :goto_3

    .line 269
    :cond_10
    invoke-static {v5, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    goto :goto_3

    .line 273
    :cond_11
    invoke-static {v5, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    goto :goto_3

    .line 277
    :cond_12
    invoke-static {v5, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    goto :goto_3

    .line 281
    :cond_13
    invoke-static {v5, v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    goto :goto_3

    .line 285
    :cond_14
    invoke-static {v5, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    :goto_3
    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->triggerOnCurrentClockChanged()V

    .line 289
    goto/16 :goto_0

    .line 292
    :cond_15
    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->verifyLoadedProviders()V

    .line 294
    return-void
    .line 297
.end method
