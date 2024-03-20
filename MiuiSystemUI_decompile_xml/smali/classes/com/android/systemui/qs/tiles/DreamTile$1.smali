.class public final Lcom/android/systemui/qs/tiles/DreamTile$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/DreamTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/DreamTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DreamTile$1;->this$0:Lcom/android/systemui/qs/tiles/DreamTile;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.DOCK_EVENT"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DreamTile$1;->this$0:Lcom/android/systemui/qs/tiles/DreamTile;

    .line 14
    const-string v0, "android.intent.extra.DOCK_STATE"

    .line 16
    const/4 v1, -0x1

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    const/4 p2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/qs/tiles/DreamTile;->mIsDocked:Z

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DreamTile$1;->this$0:Lcom/android/systemui/qs/tiles/DreamTile;

    .line 30
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 33
    return-void
    .line 36
.end method
