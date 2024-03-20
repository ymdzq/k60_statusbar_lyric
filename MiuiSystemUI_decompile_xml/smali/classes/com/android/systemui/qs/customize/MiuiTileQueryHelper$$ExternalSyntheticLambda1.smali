.class public final synthetic Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

.field public final synthetic f$1:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/qs/QSTileHost;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/qs/QSTileHost;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 9
    move-result-object p0

    .line 12
    iget-object v1, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    move-result-object v2

    .line 18
    new-instance v3, Landroid/content/Intent;

    .line 19
    const-string v4, "android.service.quicksettings.action.QS_TILE"

    .line 21
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v4, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 26
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 28
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 30
    move-result v4

    .line 33
    const/16 v5, 0x80

    .line 34
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 36
    move-result-object v3

    .line 39
    const v4, 0x7f13077f    # @string/miui_quick_settings_tiles_stock 'vowifi1,vowifi2,googlehome,googlepay,cell,wifi,bt,airplane,autobrightness,mute,screenshot,flashlight ...'

    .line 40
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 46
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v3

    .line 50
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v5

    .line 54
    const/4 v6, 0x1

    .line 55
    if-eqz v5, :cond_f

    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v5

    .line 61
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 62
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 64
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 66
    new-instance v8, Landroid/content/ComponentName;

    .line 68
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 70
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 72
    invoke-direct {v8, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 77
    move-result-object v9

    .line 80
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v9

    .line 84
    if-eqz v9, :cond_0

    .line 85
    goto :goto_0

    .line 87
    :cond_0
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 88
    invoke-static {v9}, Lcom/android/systemui/qs/external/CustomTile;->isServiceRestricted(Landroid/content/pm/ServiceInfo;)Z

    .line 90
    move-result v9

    .line 93
    const-string v10, "TileQueryHelper"

    .line 94
    if-eqz v9, :cond_1

    .line 96
    const-string v5, "Custom tile is restricted: "

    .line 98
    invoke-static {v5, v7, v10}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 104
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    invoke-virtual {v9, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 108
    move-result-object v9

    .line 111
    invoke-static {v8}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 112
    move-result-object v8

    .line 115
    sget-object v11, Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    const-string v11, "custom(com.google.android.gms/.nearby.sharing.SharingTileService)"

    .line 121
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v11

    .line 126
    const/4 v12, 0x0

    .line 127
    if-nez v11, :cond_3

    .line 128
    const-string v11, "custom(com.miui.securitycenter/com.miui.superpower.notification.SuperPowerTileService)"

    .line 130
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v11

    .line 135
    if-nez v11, :cond_2

    .line 136
    goto :goto_2

    .line 138
    :cond_2
    sget-boolean v11, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 139
    if-eqz v11, :cond_4

    .line 141
    goto :goto_1

    .line 143
    :cond_3
    sget-boolean v11, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 144
    if-nez v11, :cond_4

    .line 146
    :goto_1
    move v11, v6

    .line 148
    goto :goto_3

    .line 149
    :cond_4
    :goto_2
    move v11, v12

    .line 150
    :goto_3
    if-eqz v11, :cond_5

    .line 151
    goto :goto_0

    .line 153
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 154
    move-result-object v11

    .line 157
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    move-result v13

    .line 161
    if-eqz v13, :cond_7

    .line 162
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object v13

    .line 167
    check-cast v13, Lcom/android/systemui/plugins/qs/QSTile;

    .line 168
    invoke-interface {v13}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 170
    move-result-object v14

    .line 173
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v14

    .line 177
    if-eqz v14, :cond_6

    .line 178
    invoke-interface {v13}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 180
    move-result-object v11

    .line 183
    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 184
    move-result-object v11

    .line 187
    goto :goto_4

    .line 188
    :cond_7
    const/4 v11, 0x0

    .line 189
    :goto_4
    if-eqz v11, :cond_8

    .line 190
    invoke-virtual {v0, v8, v9, v11, v12}, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 192
    goto/16 :goto_0

    .line 195
    :cond_8
    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 197
    iget v13, v11, Landroid/content/pm/ServiceInfo;->icon:I

    .line 199
    if-nez v13, :cond_9

    .line 201
    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 203
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 205
    if-nez v14, :cond_9

    .line 207
    goto/16 :goto_0

    .line 209
    :cond_9
    if-eqz v13, :cond_a

    .line 211
    goto :goto_5

    .line 213
    :cond_a
    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 214
    iget v13, v11, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 216
    :goto_5
    invoke-static {v7, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 218
    move-result-object v7

    .line 221
    if-eqz v7, :cond_b

    .line 222
    :try_start_0
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 224
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_6

    .line 228
    :catch_0
    const-string v7, "Invalid icon"

    .line 229
    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_b
    const/4 v7, 0x0

    .line 234
    :goto_6
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 235
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 237
    const-string v11, "android.permission.BIND_QUICK_SETTINGS_TILE"

    .line 239
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    move-result v10

    .line 244
    if-nez v10, :cond_c

    .line 245
    goto/16 :goto_0

    .line 247
    :cond_c
    if-nez v7, :cond_d

    .line 249
    goto/16 :goto_0

    .line 251
    :cond_d
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 253
    const v10, 0x106000b    # @android:color/white

    .line 256
    invoke-virtual {v1, v10}, Landroid/content/Context;->getColor(I)I

    .line 259
    move-result v10

    .line 262
    invoke-virtual {v7, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 263
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 266
    invoke-virtual {v5, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 268
    move-result-object v5

    .line 271
    if-eqz v5, :cond_e

    .line 272
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 274
    move-result-object v5

    .line 277
    goto :goto_7

    .line 278
    :cond_e
    const-string v5, "null"

    .line 279
    :goto_7
    new-instance v10, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 281
    invoke-direct {v10}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 283
    iput v6, v10, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 286
    iput-object v5, v10, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 288
    iput-object v5, v10, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 290
    new-instance v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    .line 292
    invoke-direct {v5, v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iput-object v5, v10, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 297
    invoke-virtual {v0, v8, v9, v10, v12}, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 299
    goto/16 :goto_0

    .line 302
    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    .line 304
    iget-object v1, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 306
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 308
    new-instance v1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda0;

    .line 311
    invoke-direct {v1, v0, p0, v6}, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;Ljava/util/ArrayList;Z)V

    .line 313
    iget-object p0, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 316
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 318
    return-void
    .line 321
.end method
