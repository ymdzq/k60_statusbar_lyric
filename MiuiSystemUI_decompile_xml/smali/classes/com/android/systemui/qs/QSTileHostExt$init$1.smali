.class public final Lcom/android/systemui/qs/QSTileHostExt$init$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/QSTileHostExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSTileHostExt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x7

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_4

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 13
    invoke-static {p0, v3, v3, v2}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 15
    return-void

    .line 18
    :pswitch_1
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v1, "package"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 39
    iget-object v1, v1, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 41
    new-instance v2, Lcom/android/systemui/qs/QSTileHostExt$addPackageReceiver$1$1;

    .line 43
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 45
    invoke-direct {v2, v3}, Lcom/android/systemui/qs/QSTileHostExt$addPackageReceiver$1$1;-><init>(Lcom/android/systemui/qs/QSTileHostExt;)V

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->bgHandler:Landroid/os/Handler;

    .line 52
    invoke-virtual {v1, v2, v0, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 54
    return-void

    .line 57
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 63
    move-result v0

    .line 66
    const/16 v2, 0x3e8

    .line 67
    if-eq v0, v2, :cond_0

    .line 69
    goto/16 :goto_3

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 73
    const-string v2, "android.service.quicksettings.action.QS_TILE"

    .line 75
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 80
    move-result v2

    .line 83
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHostExt;->packageManager:Landroid/content/pm/PackageManager;

    .line 84
    const v5, 0xc0280

    .line 86
    invoke-virtual {v4, v0, v5, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 89
    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    goto :goto_3

    .line 95
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v0

    .line 99
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v2

    .line 103
    const/4 v5, 0x2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v2

    .line 110
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 111
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 113
    if-eqz v6, :cond_2

    .line 115
    new-instance v6, Landroid/content/ComponentName;

    .line 117
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 119
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 121
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 123
    invoke-direct {v6, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 128
    move-result v6

    .line 131
    if-ne v6, v5, :cond_3

    .line 132
    move v5, v1

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    move v5, v3

    .line 136
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHostExt;->tileServices:Ljava/util/ArrayList;

    .line 137
    if-eqz v5, :cond_4

    .line 139
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 141
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 143
    :try_start_0
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 145
    move-result-object v7

    .line 148
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 149
    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_2

    .line 153
    :catch_0
    const-string v7, "package info not found: "

    .line 154
    const-string v8, "QSTileHostExt"

    .line 156
    invoke-static {v7, v5, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move v5, v3

    .line 161
    :goto_2
    if-eqz v5, :cond_2

    .line 162
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 164
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    goto :goto_0

    .line 169
    :cond_4
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 170
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    goto :goto_0

    .line 175
    :cond_5
    new-instance v0, Lcom/android/systemui/qs/QSTileHostExt$init$1;

    .line 176
    invoke-direct {v0, p0, v5}, Lcom/android/systemui/qs/QSTileHostExt$init$1;-><init>(Lcom/android/systemui/qs/QSTileHostExt;I)V

    .line 178
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->uiHandler:Landroid/os/Handler;

    .line 181
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    :goto_3
    return-void

    .line 186
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 187
    iget v5, v0, Lcom/android/systemui/qs/QSTileHostExt;->currentUser:I

    .line 189
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHostExt;->systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 191
    const-string/jumbo v6, "tile_host_edited_by_user"

    .line 193
    invoke-interface {v0, v3, v5, v6}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 196
    move-result v0

    .line 199
    if-lez v0, :cond_6

    .line 200
    goto :goto_5

    .line 202
    :cond_6
    move v1, v3

    .line 203
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$init$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEdited:Z

    .line 206
    if-eq v0, v1, :cond_7

    .line 208
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEdited:Z

    .line 210
    iput-object v4, p0, Lcom/android/systemui/qs/QSTileHostExt;->temporarySpecs:Ljava/lang/String;

    .line 212
    invoke-static {p0, v3, v3, v2}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 214
    :cond_7
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 218
.end method
