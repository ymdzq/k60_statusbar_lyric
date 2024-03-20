.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$9;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->showDialogToAddFingerprint([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$9;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1064
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$9;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetisDismiss(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1065
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$9;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetdismissToken(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->returnToKeyguardPasswordSettings([B)V

    .line 1066
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$9;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fputisDismiss(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)V

    .line 1067
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$9;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fputdismissToken(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;[B)V

    :cond_0
    return-void
.end method
