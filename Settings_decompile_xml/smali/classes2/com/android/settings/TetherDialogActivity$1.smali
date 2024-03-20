.class Lcom/android/settings/TetherDialogActivity$1;
.super Ljava/lang/Object;
.source "TetherDialogActivity.java"

# interfaces
.implements Lcom/android/settings/TetherDialogActivity$IntentSpan$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherDialogActivity;->setLicenseHighlight(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherDialogActivity;

.field final synthetic val$agreementLicenseUrl:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherDialogActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/android/settings/TetherDialogActivity$1;->this$0:Lcom/android/settings/TetherDialogActivity;

    iput-object p2, p0, Lcom/android/settings/TetherDialogActivity$1;->val$agreementLicenseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/TetherDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/android/settings/TetherDialogActivity$1;->val$agreementLicenseUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 120
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x14000000

    .line 121
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    iget-object p1, p0, Lcom/android/settings/TetherDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    iget-object p0, p0, Lcom/android/settings/TetherDialogActivity$1;->this$0:Lcom/android/settings/TetherDialogActivity;

    invoke-static {p0}, Lcom/android/settings/TetherDialogActivity;->-$$Nest$fgethostDialog(Lcom/android/settings/TetherDialogActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
