.class public final Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;->this$0:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;->this$0:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;

    .line 9
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->voWifiAvailable:[Z

    .line 11
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v3}, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->isVoWifiAvailable(I)Z

    .line 14
    move-result v0

    .line 17
    aput-boolean v0, v2, v3

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;->this$0:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->voWifiAvailable:[Z

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->isVoWifiAvailable(I)Z

    .line 24
    move-result p0

    .line 27
    aput-boolean p0, v0, v1

    .line 28
    return-void

    .line 30
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;->this$0:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->hostExt:Ldagger/Lazy;

    .line 33
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/qs/QSTileHostExt;

    .line 39
    const/4 v0, 0x2

    .line 41
    invoke-static {p0, v1, v1, v0}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 42
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 46
.end method
