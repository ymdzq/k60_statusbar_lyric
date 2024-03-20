.class Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$1;
.super Ljava/lang/Object;
.source "EncryptionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;-><init>(Lcom/android/settings/EncryptionSettings;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

.field final synthetic val$this$0:Lcom/android/settings/EncryptionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;Lcom/android/settings/EncryptionSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$1;->this$1:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    iput-object p2, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$1;->val$this$0:Lcom/android/settings/EncryptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$1;->this$1:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->-$$Nest$fputmShow(Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;Z)V

    .line 323
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
