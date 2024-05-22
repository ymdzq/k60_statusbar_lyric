.class public final synthetic Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

.field public final synthetic f$1:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalDialog;Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda0;->f$1:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda0;->f$1:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-interface {p0, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 9
    return-void
    .line 12
.end method
