.class Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$2;
.super Ljava/lang/Object;
.source "MiuiConfirmCommonPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->showFodFingerprintAuthenticationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$2;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 442
    iget-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$2;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$mreleaseFingerprintHelper(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    .line 443
    iget-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$2;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$fputmShouldDismissDialog(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;Z)V

    .line 444
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$2;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$mstartConfirmActivity(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    return-void
.end method
