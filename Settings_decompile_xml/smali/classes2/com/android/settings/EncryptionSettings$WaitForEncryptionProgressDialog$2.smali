.class Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$2;
.super Ljava/lang/Object;
.source "EncryptionSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->waitForDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$2;->this$1:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog$2;->this$1:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->tryToDismiss()V

    return-void
.end method
