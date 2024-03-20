.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final synthetic $lastAction:Landroid/service/controls/actions/ControlAction;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;->$lastAction:Landroid/service/controls/actions/ControlAction;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;->$r8$classId:I

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    instance-of p2, p1, Landroid/app/Dialog;

    .line 8
    if-eqz p2, :cond_0

    .line 10
    move-object p2, p1

    .line 12
    check-cast p2, Landroid/app/Dialog;

    .line 13
    const v0, 0x7f0a024e    # @id/controls_pin_input

    .line 15
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    .line 18
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 24
    check-cast p2, Landroid/widget/EditText;

    .line 25
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 27
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 34
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 35
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;->$lastAction:Landroid/service/controls/actions/ControlAction;

    .line 37
    invoke-static {p0, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$addChallengeValue(Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 46
    :cond_0
    return-void

    .line 49
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;->$lastAction:Landroid/service/controls/actions/ControlAction;

    .line 52
    const-string/jumbo v0, "true"

    .line 54
    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$addChallengeValue(Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 64
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
