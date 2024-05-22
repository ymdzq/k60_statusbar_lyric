.class public final synthetic Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

.field public final synthetic f$1:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalDialog;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/DialogInterface$OnClickListener;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-interface {p0, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/DialogInterface$OnClickListener;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-interface {p0, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 27
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method
