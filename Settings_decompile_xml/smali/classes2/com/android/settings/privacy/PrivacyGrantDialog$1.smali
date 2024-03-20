.class Lcom/android/settings/privacy/PrivacyGrantDialog$1;
.super Ljava/lang/Object;
.source "PrivacyGrantDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacy/PrivacyGrantDialog;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacy/PrivacyGrantDialog;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/privacy/PrivacyGrantDialog;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$1;->this$0:Lcom/android/settings/privacy/PrivacyGrantDialog;

    iput-object p2, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$1;->this$0:Lcom/android/settings/privacy/PrivacyGrantDialog;

    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$1;->val$packageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/settings/privacy/PrivacyGrantDialog;->-$$Nest$mhandlePosButtonClick(Lcom/android/settings/privacy/PrivacyGrantDialog;Ljava/lang/String;)V

    return-void
.end method
