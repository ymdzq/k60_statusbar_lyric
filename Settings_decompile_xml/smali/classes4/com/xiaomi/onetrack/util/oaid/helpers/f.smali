.class public Lcom/xiaomi/onetrack/util/oaid/helpers/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 41
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 44
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "value"

    .line 45
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 47
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "code"

    .line 49
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 51
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    :cond_3
    const-string v0, "expired"

    .line 53
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 55
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    :cond_4
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "content://com.meizu.flyme.openidsdk/"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, ""

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 p1, 0x1

    :try_start_0
    new-array v5, p1, [Ljava/lang/String;

    const-string p1, "oaid"

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    .line 21
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/f;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method
