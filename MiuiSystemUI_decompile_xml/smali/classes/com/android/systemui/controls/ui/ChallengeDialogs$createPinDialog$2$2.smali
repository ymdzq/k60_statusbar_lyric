.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $onCancel:Lkotlin/jvm/functions/Function0;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;->$onCancel:Lkotlin/jvm/functions/Function0;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;->$r8$classId:I

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;->$onCancel:Lkotlin/jvm/functions/Function0;

    .line 8
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 13
    return-void

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;->$onCancel:Lkotlin/jvm/functions/Function0;

    .line 17
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 19
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 22
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
