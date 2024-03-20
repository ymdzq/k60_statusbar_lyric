.class public final Lcom/android/systemui/qs/tiles/ScreenShotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final HTTPS_AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "app://gallery.i.mi.com"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->HTTPS_AUTHORITY_URI:Landroid/net/Uri;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 10

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->HTTPS_AUTHORITY_URI:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "album"

    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    move-result-object v0

    .line 13
    const-string v1, "local_path"

    .line 14
    const-string v2, "dcim/screenshots"

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 22
    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/Intent;

    .line 26
    const-string v2, "android.intent.action.VIEW"

    .line 28
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 30
    const/4 v0, 0x0

    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    move-result-object p0

    .line 39
    const/high16 v3, 0xc0000

    .line 40
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 42
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 46
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-lez p0, :cond_0

    .line 50
    const/4 p0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    :cond_0
    move p0, v0

    .line 54
    :goto_0
    if-eqz p0, :cond_1

    .line 55
    return-object v1

    .line 57
    :cond_1
    new-instance p0, Ljava/io/File;

    .line 58
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 62
    move-result-object v1

    .line 65
    const-string v3, "Screenshots"

    .line 66
    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 71
    move-result v1

    .line 74
    const/4 v3, 0x0

    .line 75
    if-eqz v1, :cond_4

    .line 76
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 78
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenShotTile$2;

    .line 84
    invoke-direct {v1}, Lcom/android/systemui/qs/tiles/ScreenShotTile$2;-><init>()V

    .line 86
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 89
    move-result-object p0

    .line 92
    if-nez p0, :cond_2

    .line 93
    goto :goto_2

    .line 95
    :cond_2
    array-length v1, p0

    .line 96
    const-wide/16 v4, 0x0

    .line 97
    move-object v6, v3

    .line 99
    :goto_1
    if-ge v0, v1, :cond_5

    .line 100
    aget-object v7, p0, v0

    .line 102
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 104
    move-result-wide v8

    .line 107
    cmp-long v8, v8, v4

    .line 108
    if-lez v8, :cond_3

    .line 110
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 112
    move-result-wide v4

    .line 115
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 119
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 120
    goto :goto_1

    .line 122
    :cond_4
    move-object v6, v3

    .line 123
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    move-result p0

    .line 127
    if-eqz p0, :cond_6

    .line 128
    goto :goto_2

    .line 130
    :cond_6
    new-instance v3, Landroid/content/Intent;

    .line 131
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance p0, Ljava/io/File;

    .line 136
    invoke-direct {p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 141
    move-result-object p0

    .line 144
    const-string v0, "image/*"

    .line 145
    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/high16 p0, 0x10000000

    .line 150
    invoke-virtual {v3, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    :goto_2
    return-object v3
    .line 155
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309ee    # @string/quick_settings_screenshot_label 'Screenshot'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "disallow_screencapture"

    .line 6
    invoke-interface {p1, v0}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    sget-boolean p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInControlCenter:Z

    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 17
    if-nez p1, :cond_2

    .line 19
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->getBarState()I

    .line 21
    move-result p1

    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->getBarState()I

    .line 28
    move-result p1

    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne p1, v1, :cond_2

    .line 33
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 35
    const-string v0, "android.intent.action.CAPTURE_SCREENSHOT"

    .line 37
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 46
    return-void

    .line 49
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->collapsePanels()V

    .line 50
    new-instance p1, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;

    .line 53
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenShotTile;)V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 58
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public final handleDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    return-void
    .line 5
.end method

.method public final handleSetListening(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 5
    const/4 p2, 0x1

    .line 7
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 8
    const p2, 0x7f08116d    # @drawable/ic_qs_screenshot 'res/drawable/ic_qs_screenshot.xml'

    .line 10
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 13
    move-result-object p2

    .line 16
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 17
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 19
    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p2

    .line 24
    const v0, 0x7f1309ee    # @string/quick_settings_screenshot_label 'Screenshot'

    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 31
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 40
    const-class p0, Landroid/widget/Switch;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 48
    return-void
    .line 50
.end method

.method public final handleUserSwitch(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
