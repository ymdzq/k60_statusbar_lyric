.class public final Lcom/android/systemui/qs/tiles/ScreenShotTile$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ScreenShotTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 4
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->isQSFullyCollapsed()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 14
    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenShotTile$1$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/ScreenShotTile$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/ScreenShotTile$1;)V

    .line 18
    const-wide/16 v2, 0x190

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;

    .line 27
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 29
    const-wide/16 v1, 0x32

    .line 31
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    :goto_0
    return-void
    .line 36
.end method
