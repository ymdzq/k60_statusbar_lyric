.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$4;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->showGxzwUserNotice([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$4;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 413
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$4;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmCurrentShowingDialog(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$4;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmCurrentShowingDialog(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 414
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$4;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmCurrentShowingDialog(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method
