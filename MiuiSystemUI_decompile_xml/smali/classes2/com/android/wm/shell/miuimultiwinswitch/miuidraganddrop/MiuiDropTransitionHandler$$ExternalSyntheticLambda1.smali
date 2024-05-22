.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$1FolmeControl;

    .line 10
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;->$r8$lambda$gEoPpFQRPrnoZ4_Iu5HL8k8ObsI(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$1FolmeControl;)Lmiuix/animation/IStateStyle;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 17
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$2FolmeControl;

    .line 19
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;->$r8$lambda$5qh2xAFG0wtiEo93ssP_wWgkNK0(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$2FolmeControl;)Lmiuix/animation/IStateStyle;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
