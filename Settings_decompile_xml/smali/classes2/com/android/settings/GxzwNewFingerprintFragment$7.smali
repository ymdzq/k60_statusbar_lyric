.class Lcom/android/settings/GxzwNewFingerprintFragment$7;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;->showGxzwUserNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GxzwNewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$7;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 714
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$7;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmCurrentShowingDialog(Lcom/android/settings/GxzwNewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$7;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmCurrentShowingDialog(Lcom/android/settings/GxzwNewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 715
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$7;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmCurrentShowingDialog(Lcom/android/settings/GxzwNewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method
