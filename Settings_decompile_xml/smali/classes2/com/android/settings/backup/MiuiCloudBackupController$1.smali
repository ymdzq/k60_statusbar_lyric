.class Lcom/android/settings/backup/MiuiCloudBackupController$1;
.super Ljava/lang/Object;
.source "MiuiCloudBackupController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/backup/MiuiCloudBackupController;->showLoginAccountWarn(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/MiuiCloudBackupController;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/MiuiCloudBackupController;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/android/settings/backup/MiuiCloudBackupController$1;->this$0:Lcom/android/settings/backup/MiuiCloudBackupController;

    iput-object p2, p0, Lcom/android/settings/backup/MiuiCloudBackupController$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/android/settings/backup/MiuiCloudBackupController$1;->this$0:Lcom/android/settings/backup/MiuiCloudBackupController;

    iget-object p0, p0, Lcom/android/settings/backup/MiuiCloudBackupController$1;->val$intent:Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/android/settings/backup/MiuiCloudBackupController;->-$$Nest$mloginAccount(Lcom/android/settings/backup/MiuiCloudBackupController;Landroid/content/Intent;)V

    return-void
.end method
