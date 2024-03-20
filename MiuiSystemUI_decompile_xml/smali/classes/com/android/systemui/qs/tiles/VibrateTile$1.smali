.class public final Lcom/android/systemui/qs/tiles/VibrateTile$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/VibrateTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/VibrateTile;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VibrateTile$1;->this$0:Lcom/android/systemui/qs/tiles/VibrateTile;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VibrateTile$1;->this$0:Lcom/android/systemui/qs/tiles/VibrateTile;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 5
    return-void
    .line 8
.end method
