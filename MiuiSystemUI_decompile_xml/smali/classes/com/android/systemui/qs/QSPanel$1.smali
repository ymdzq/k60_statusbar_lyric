.class public final Lcom/android/systemui/qs/QSPanel$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field public final synthetic val$tileRecord:Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$1;->val$tileRecord:Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$1;->val$tileRecord:Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 6
    return-void
    .line 9
.end method
