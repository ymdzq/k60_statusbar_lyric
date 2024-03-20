.class Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;
.super Lmiuix/appcompat/app/ProgressDialog;
.source "EncryptionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForEncryptionProgressDialog"
.end annotation


# instance fields
.field private mShow:Z

.field final synthetic this$0:Lcom/android/settings/EncryptionSettings;


# direct methods
.method static bridge synthetic -$$Nest$fputmShow(Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->mShow:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/EncryptionSettings;I)V
    .locals 1

    .line 311
    iput-object p1, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->this$0:Lcom/android/settings/EncryptionSettings;

    .line 312
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->mShow:Z

    .line 314
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 315
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 316
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 317
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 318
    new-instance p2, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$1;-><init>(Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;Lcom/android/settings/EncryptionSettings;)V

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/EncryptionSettings;ILcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;-><init>(Lcom/android/settings/EncryptionSettings;I)V

    return-void
.end method

.method private waitForDismiss()V
    .locals 4

    .line 340
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 341
    new-instance v1, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$2;-><init>(Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->mShow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->mShow:Z

    .line 333
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 335
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->waitForDismiss()V

    return-void

    :catchall_0
    move-exception v0

    .line 335
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public tryToDismiss()V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->mShow:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
