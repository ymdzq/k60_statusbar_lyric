.class Lcom/android/settings/TetherDialogActivity$4;
.super Ljava/lang/Object;
.source "TetherDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherDialogActivity;->showPrivacyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherDialogActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/settings/TetherDialogActivity$4;->this$0:Lcom/android/settings/TetherDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/android/settings/TetherDialogActivity$4;->this$0:Lcom/android/settings/TetherDialogActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/TetherDialogActivity;->-$$Nest$mstartTethering(Lcom/android/settings/TetherDialogActivity;I)V

    .line 167
    iget-object p1, p0, Lcom/android/settings/TetherDialogActivity$4;->this$0:Lcom/android/settings/TetherDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/TetherDialogActivity$4;->this$0:Lcom/android/settings/TetherDialogActivity;

    invoke-static {p2}, Lcom/android/settings/TetherDialogActivity;->-$$Nest$fgethostDialog(Lcom/android/settings/TetherDialogActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p2

    const-string/jumbo v0, "tethering_prompt_state"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    iget-object p0, p0, Lcom/android/settings/TetherDialogActivity$4;->this$0:Lcom/android/settings/TetherDialogActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
