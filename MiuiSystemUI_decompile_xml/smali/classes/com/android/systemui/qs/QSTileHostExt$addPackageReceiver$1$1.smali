.class public final Lcom/android/systemui/qs/QSTileHostExt$addPackageReceiver$1$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSTileHostExt;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHostExt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt$addPackageReceiver$1$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string p1, "QSTileHostExt"

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 8
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHostExt$addPackageReceiver$1$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 19
    iget-object v3, v2, Lcom/android/systemui/qs/QSTileHostExt;->packageManager:Landroid/content/pm/PackageManager;

    .line 21
    iget-object v2, v2, Lcom/android/systemui/qs/QSTileHostExt;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 23
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 25
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 27
    move-result v2

    .line 30
    const/4 v4, 0x0

    .line 31
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    .line 32
    const-string v6, "android.service.quicksettings.action.QS_TILE"

    .line 34
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :try_start_1
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 42
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 46
    move-result v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    const-string v7, "package info not found: "

    .line 53
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 64
    invoke-static {p1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    move v6, v4

    .line 68
    :goto_0
    if-eqz v6, :cond_1

    .line 69
    const v6, 0xc0280

    .line 71
    goto :goto_1

    .line 74
    :cond_1
    const v6, 0xc0080

    .line 75
    :goto_1
    invoke-virtual {v3, v5, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 78
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 81
    goto :goto_2

    .line 82
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v5, "service info not found: "

    .line 85
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v5, " "

    .line 94
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 105
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 p1, 0x0

    .line 109
    :goto_2
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 110
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    move-result v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    const-string v0, "android.intent.extra.REPLACING"

    .line 118
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 120
    move-result p2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHostExt$addPackageReceiver$1$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 124
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHostExt;->tileServices:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object v0

    .line 131
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    move-result v2

    .line 135
    if-eqz v2, :cond_6

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    move-result-object v2

    .line 141
    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 142
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 144
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 146
    move-result v3

    .line 149
    if-eqz v3, :cond_2

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 152
    if-eqz p2, :cond_4

    .line 155
    if-eqz p1, :cond_4

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 159
    move-result-object v3

    .line 162
    move v5, v4

    .line 163
    :cond_3
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v6

    .line 167
    if-eqz v6, :cond_5

    .line 168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object v6

    .line 173
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 174
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 176
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 178
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 180
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 182
    move-result v6

    .line 185
    if-eqz v6, :cond_3

    .line 186
    const/4 v5, 0x1

    .line 188
    goto :goto_4

    .line 189
    :cond_4
    move v5, v4

    .line 190
    :cond_5
    if-nez v5, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHostExt$addPackageReceiver$1$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 193
    iget-object v3, v3, Lcom/android/systemui/qs/QSTileHostExt;->host:Ldagger/Lazy;

    .line 195
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 197
    move-result-object v3

    .line 200
    check-cast v3, Lcom/android/systemui/qs/QSTileHost;

    .line 201
    new-instance v5, Landroid/content/ComponentName;

    .line 203
    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 205
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 207
    invoke-direct {v5, v6, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/QSTileHost;->removeTileByUser(Landroid/content/ComponentName;)V

    .line 212
    goto :goto_3

    .line 215
    :cond_6
    if-nez p1, :cond_7

    .line 216
    return-void

    .line 218
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 219
    move-result-object p1

    .line 222
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    move-result p2

    .line 226
    if-eqz p2, :cond_8

    .line 227
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    move-result-object p2

    .line 232
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHostExt$addPackageReceiver$1$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 235
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHostExt;->tileServices:Ljava/util/ArrayList;

    .line 237
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 239
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    goto :goto_5

    .line 244
    :cond_8
    return-void
    .line 245
.end method
