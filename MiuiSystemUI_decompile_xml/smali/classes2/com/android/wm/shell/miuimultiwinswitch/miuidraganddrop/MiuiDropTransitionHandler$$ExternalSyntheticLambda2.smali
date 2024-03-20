.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$1;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 14
    check-cast p0, Lmiuix/animation/IStateStyle;

    .line 16
    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$1;->$r8$lambda$b7tRa8YadmEGufSrJ6rgCG32ahk(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$1;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;Lmiuix/animation/IStateStyle;)V

    .line 18
    return-void

    .line 21
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 22
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;

    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 28
    check-cast p0, [Lmiuix/animation/IStateStyle;

    .line 30
    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;->$r8$lambda$6vZEBrKsDxzuM2u4KiSiEsHlemw(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;[Lmiuix/animation/IStateStyle;)V

    .line 32
    return-void

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 36
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$2;

    .line 38
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;

    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 42
    check-cast p0, Lmiuix/animation/IStateStyle;

    .line 44
    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$2;->$r8$lambda$gYt30NYQoVAWEL5DSAxS4MJmD_g(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$2;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;Lmiuix/animation/IStateStyle;)V

    .line 46
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 50
.end method
