.class public final Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# instance fields
.field public final mCustomTileBuilderProvider:Ljavax/inject/Provider;

.field public final mQsHostLazy:Ldagger/Lazy;

.field public final mTileMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ljavax/inject/Provider;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mQsHostLazy:Ldagger/Lazy;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCustomTileBuilderProvider:Ljavax/inject/Provider;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mTileMap:Ljava/util/Map;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mTileMap:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    const-string v1, "dbg:mem"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 18
    if-eqz v1, :cond_1

    .line 20
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Ljavax/inject/Provider;

    .line 26
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "custom("

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCustomTileBuilderProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/systemui/qs/external/CustomTile$Builder;

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mQsHostLazy:Ldagger/Lazy;

    .line 51
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    check-cast p0, Lcom/android/systemui/qs/QSHost;

    .line 57
    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    .line 59
    move-result-object p0

    .line 62
    sget-object v1, Lcom/android/systemui/qs/external/CustomTile;->sCustomTileRef:Ljava/lang/ref/WeakReference;

    .line 63
    iput-object p1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mSpec:Ljava/lang/String;

    .line 65
    iput-object p0, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUserContext:Landroid/content/Context;

    .line 67
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile$Builder;->build()Lcom/android/systemui/qs/external/CustomTile;

    .line 69
    move-result-object p0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string p0, "No stock tile spec: "

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    const-string p1, "QSFactory"

    .line 80
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 p0, 0x0

    .line 85
    :goto_0
    if-eqz p0, :cond_3

    .line 86
    const/16 p1, 0xc

    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    const/16 p1, 0xb

    .line 95
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 97
    :cond_3
    return-object p0
    .line 100
.end method

.method public final createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 0

    .line 1
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    .line 2
    move-result-object p0

    .line 5
    new-instance p2, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 6
    invoke-direct {p2, p1, p0, p3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 8
    return-object p2
    .line 11
.end method
