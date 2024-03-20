.class public final synthetic Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 8
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckChargeFirstVideoIsCompletion:Z

    .line 11
    iget-boolean p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckChargeStartDouble:Z

    .line 13
    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->realStartVideo()V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "MIUIStrongToast"

    .line 21
    const-string p1, "FLAG_UPDATE_CHARGE_DEFAULT next not play"

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    return-void

    .line 28
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 29
    invoke-static {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$lambda$Pp1fL5zYAKsVONBi443CCETjaFg(Lcom/android/systemui/toast/MIUIStrongToast;)V

    .line 31
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
