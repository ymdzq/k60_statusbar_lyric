.class public final synthetic Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;->f$2:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;->f$2:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 8
    move-result-object v2

    .line 11
    new-instance v3, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda2;

    .line 12
    invoke-direct {v3, v1, p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda2;-><init>(ILandroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    return-void
    .line 20
.end method
