.class public interface abstract Lcom/android/systemui/qs/QSHost;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;


# direct methods
.method public static getDefaultSpecs(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const v1, 0x7f130a01    # @string/quick_settings_tiles_default 'internet,bt,flashlight,dnd,alarm,airplane,controls,wallet,rotation,battery,cast,screenrecord,mictogg ...'

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    const-string v1, ","

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 27
    if-eqz p0, :cond_0

    .line 29
    const-string p0, "dbg:mem"

    .line 31
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-object v0
    .line 36
.end method


# virtual methods
.method public abstract addTile(ILjava/lang/String;)V
.end method

.method public abstract addTile(Landroid/content/ComponentName;)V
.end method

.method public abstract addTile(Landroid/content/ComponentName;Z)V
.end method

.method public abstract addTile(Ljava/lang/String;)V
.end method

.method public abstract changeTilesByUser(Ljava/util/List;Ljava/util/List;)V
.end method

.method public abstract createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHostExt()Lcom/android/systemui/qs/QSTileHostExt;
.end method

.method public abstract getSpecs()Ljava/util/List;
.end method

.method public abstract getUserContext()Landroid/content/Context;
.end method

.method public abstract getUserId()I
.end method

.method public abstract removeTileByUser(Landroid/content/ComponentName;)V
.end method

.method public abstract removeTiles(Ljava/util/Collection;)V
.end method
