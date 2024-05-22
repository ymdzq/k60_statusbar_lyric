.class public final Lcom/android/systemui/qs/tiles/NightModeTile$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/NightModeTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/NightModeTile;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/NightModeTile;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NightModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/NightModeTile;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 4
    const-string v0, "night mode changed."

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/NightModeTile;

    .line 11
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method
