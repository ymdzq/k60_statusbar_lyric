.class public Lcom/android/keyguard/NotificationProvider;
.super Landroid/content/ContentProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "content://aod.notification/notifications"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    new-instance v0, Landroid/content/UriMatcher;

    .line 7
    const/4 v1, -0x1

    .line 9
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 10
    const/4 v1, 0x1

    .line 13
    const-string v2, "aod.notification"

    .line 14
    const-string v3, "notifications"

    .line 16
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    return-void
    .line 21
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance p0, Lmiuix/pickerwidget/date/Calendar;

    .line 5
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    return-object p1
    .line 2
.end method

.method public final onCreate()Z
    .locals 1

    .line 1
    const-string p0, "NotificationProvider"

    .line 2
    const-string v0, "NotificationProvider is onCreate"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    const/4 p0, 0x1

    .line 9
    return p0
    .line 10
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    move-result p0

    .line 5
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    move-result p0

    .line 9
    const/4 p2, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    const-string p0, "NotificationProvider"

    .line 13
    const-string p1, "not support for none OWNER user"

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-object p2

    .line 20
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .line 21
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string/jumbo p3, "uri"

    .line 26
    invoke-virtual {p0, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    const-class p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 32
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 38
    iget-boolean p3, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSupportAod:Z

    .line 40
    if-nez p3, :cond_1

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeServices:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 50
    move-object p3, p2

    .line 51
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result p4

    .line 55
    if-eqz p4, :cond_2

    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object p3

    .line 61
    check-cast p3, Lcom/android/systemui/doze/DozeService;

    .line 62
    const/16 p4, 0x200

    .line 64
    invoke-virtual {p3, p4, p0}, Lcom/android/systemui/doze/DozeService;->onSystemUIAction(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 66
    move-result-object p3

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    if-eqz p3, :cond_3

    .line 71
    const-string p0, "key_systemui_action_notification_provider"

    .line 73
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 78
    move-object p2, p0

    .line 79
    check-cast p2, Landroid/database/Cursor;

    .line 80
    :cond_3
    :goto_1
    return-object p2
    .line 82
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
