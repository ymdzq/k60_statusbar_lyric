.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $packagesToStartTime:Ljava/util/Map;

.field public final synthetic $profileIds:Ljava/util/Set;

.field public final synthetic $refreshUiControls:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Ljava/util/Map;Ljava/util/Set;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$packagesToStartTime:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$profileIds:Ljava/util/Set;

    .line 6
    iput-boolean p4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$refreshUiControls:Z

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v6, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 4
    iget-object v7, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$packagesToStartTime:Ljava/util/Map;

    .line 6
    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$profileIds:Ljava/util/Set;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$refreshUiControls:Z

    .line 10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 41
    invoke-virtual {v2}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->updateUiControl()V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 47
    move-result-object v0

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v0

    .line 59
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v3

    .line 63
    const/4 v8, 0x1

    .line 64
    const/4 v9, 0x0

    .line 65
    iget-object v10, v6, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    .line 66
    if-eqz v3, :cond_5

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 73
    move-object v4, v3

    .line 74
    check-cast v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 75
    iget v5, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v5

    .line 82
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v5

    .line 86
    if-eqz v5, :cond_4

    .line 87
    iget-boolean v5, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControlInitialized:Z

    .line 89
    if-nez v5, :cond_2

    .line 91
    invoke-virtual {v4}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->updateUiControl()V

    .line 93
    :cond_2
    iget-object v5, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 96
    sget-object v11, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 98
    if-eq v5, v11, :cond_4

    .line 100
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object v4

    .line 105
    check-cast v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    .line 106
    if-eqz v4, :cond_3

    .line 108
    iget-boolean v4, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->stopped:Z

    .line 110
    if-ne v4, v8, :cond_3

    .line 112
    move v4, v8

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v4, v9

    .line 116
    :goto_2
    if-nez v4, :cond_4

    .line 117
    goto :goto_3

    .line 119
    :cond_4
    move v8, v9

    .line 120
    :goto_3
    if-eqz v8, :cond_1

    .line 121
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {v10}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 127
    move-result-object v0

    .line 130
    new-instance v11, Ljava/util/ArrayList;

    .line 131
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object v0

    .line 139
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v1

    .line 143
    if-eqz v1, :cond_7

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v1

    .line 149
    move-object v3, v1

    .line 150
    check-cast v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 151
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 153
    move-result v3

    .line 156
    xor-int/2addr v3, v8

    .line 157
    if-eqz v3, :cond_6

    .line 158
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    goto :goto_4

    .line 163
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object v12

    .line 167
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v0

    .line 171
    if-eqz v0, :cond_9

    .line 172
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object v0

    .line 177
    check-cast v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 178
    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    .line 180
    iget-object v2, v6, Lcom/android/systemui/qs/FgsManagerControllerImpl;->packageManager:Landroid/content/pm/PackageManager;

    .line 182
    iget v3, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 184
    invoke-virtual {v2, v1, v9, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 186
    move-result-object v1

    .line 189
    new-instance v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    .line 190
    iget v14, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 192
    iget-object v15, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    .line 194
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    move-result-object v5

    .line 199
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 200
    check-cast v5, Ljava/lang/Number;

    .line 203
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 205
    move-result-wide v16

    .line 208
    iget-boolean v5, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControlInitialized:Z

    .line 209
    if-nez v5, :cond_8

    .line 211
    invoke-virtual {v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->updateUiControl()V

    .line 213
    :cond_8
    iget-object v5, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 216
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 218
    move-result-object v13

    .line 221
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 222
    move-result-object v1

    .line 225
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 226
    move-result-object v3

    .line 229
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 230
    move-result-object v1

    .line 233
    move-object v2, v13

    .line 234
    move-object v13, v4

    .line 235
    move-object/from16 v18, v5

    .line 236
    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;-><init>(ILjava/lang/String;JLcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;)V

    .line 238
    iput-object v2, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->appLabel:Ljava/lang/CharSequence;

    .line 241
    iput-object v1, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    .line 243
    invoke-virtual {v10, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v1, 0x0

    .line 248
    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    .line 249
    iget v3, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 251
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-result-object v0

    .line 256
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 257
    check-cast v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    .line 260
    iget-wide v4, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    .line 262
    move-object v0, v6

    .line 264
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->logEvent(ZLjava/lang/String;IJ)V

    .line 265
    goto :goto_5

    .line 268
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    move-result-object v0

    .line 272
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    move-result v1

    .line 276
    if-eqz v1, :cond_a

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    move-result-object v1

    .line 282
    check-cast v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 283
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    move-result-object v2

    .line 288
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 289
    check-cast v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    .line 292
    iget v12, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->userId:I

    .line 294
    iget-object v13, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->packageName:Ljava/lang/String;

    .line 296
    iget-wide v14, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    .line 298
    iget-object v3, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 300
    new-instance v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    .line 302
    move-object v11, v4

    .line 304
    move-object/from16 v16, v3

    .line 305
    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;-><init>(ILjava/lang/String;JLcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;)V

    .line 307
    iput-boolean v8, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->stopped:Z

    .line 310
    iget-object v3, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->appLabel:Ljava/lang/CharSequence;

    .line 312
    iput-object v3, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->appLabel:Ljava/lang/CharSequence;

    .line 314
    iget-object v2, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    .line 316
    iput-object v2, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-virtual {v10, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    goto :goto_6

    .line 323
    :cond_a
    new-instance v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;

    .line 324
    invoke-direct {v0, v9, v6}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;-><init>(ILjava/lang/Object;)V

    .line 326
    iget-object v1, v6, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 329
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 331
    return-void
    .line 334
.end method
