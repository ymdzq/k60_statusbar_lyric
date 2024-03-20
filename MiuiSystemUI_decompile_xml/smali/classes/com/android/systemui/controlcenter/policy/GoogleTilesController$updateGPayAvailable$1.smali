.class public final Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateGPayAvailable$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $available:Z

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controlcenter/policy/GoogleTilesController;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateGPayAvailable$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateGPayAvailable$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateGPayAvailable$1;->$available:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateGPayAvailable$1;->$r8$classId:I

    .line 2
    const-string v1, "googleController"

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_2

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateGPayAvailable$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 12
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateGPayAvailable$1;->$available:Z

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->getCarrierSupported()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    move p0, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p0, v3

    .line 26
    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->gPayAvailable:Z

    .line 27
    if-ne v4, p0, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    iput-boolean p0, v0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->gPayAvailable:Z

    .line 32
    iget-boolean p0, v0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->gPayAvailable:Z

    .line 34
    const-string v4, "GPay available changed to "

    .line 36
    invoke-static {v4, p0, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 38
    iget-object p0, v0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->hostExt:Ldagger/Lazy;

    .line 41
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Lcom/android/systemui/qs/QSTileHostExt;

    .line 47
    invoke-static {p0, v3, v2, v2}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 49
    :goto_1
    return-void

    .line 52
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateGPayAvailable$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateGPayAvailable$1;->$available:Z

    .line 55
    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->getCarrierSupported()Z

    .line 59
    move-result p0

    .line 62
    if-eqz p0, :cond_2

    .line 63
    move p0, v2

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    move p0, v3

    .line 67
    :goto_3
    iget-boolean v4, v0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->gHomeAvailable:Z

    .line 68
    if-ne v4, p0, :cond_3

    .line 70
    goto :goto_4

    .line 72
    :cond_3
    iput-boolean p0, v0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->gHomeAvailable:Z

    .line 73
    iget-boolean p0, v0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->gHomeAvailable:Z

    .line 75
    const-string v4, "GHome available changed to "

    .line 77
    invoke-static {v4, p0, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 79
    iget-object p0, v0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->hostExt:Ldagger/Lazy;

    .line 82
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 87
    check-cast p0, Lcom/android/systemui/qs/QSTileHostExt;

    .line 88
    invoke-static {p0, v3, v2, v2}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 90
    :goto_4
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 94
.end method
