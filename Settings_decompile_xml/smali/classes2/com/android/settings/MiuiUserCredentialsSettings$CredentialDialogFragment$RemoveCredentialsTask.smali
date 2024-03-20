.class Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
.super Landroid/os/AsyncTask;
.source "MiuiUserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveCredentialsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/settings/MiuiUserCredentialsSettings$Credential;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/settings/MiuiUserCredentialsSettings$Credential;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private targetFragment:Landroidx/fragment/app/Fragment;

.field final synthetic this$0:Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$0:Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->context:Landroid/content/Context;

    .line 175
    iput-object p3, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private removeGrantsAndDelete(Lcom/android/settings/MiuiUserCredentialsSettings$Credential;)V
    .locals 2

    const-string v0, "CredentialDialogFragment"

    .line 194
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$0:Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :try_start_1
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 202
    iget-object p1, p1, Lcom/android/settings/MiuiUserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-interface {v1, p1}, Landroid/security/IKeyChainService;->removeKeyPair(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :goto_0
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "Removing credentials"

    .line 204
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 206
    :goto_2
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 207
    throw p1

    :catch_1
    move-exception p0

    const-string p1, "Connecting to KeyChain"

    .line 196
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 169
    check-cast p1, [Lcom/android/settings/MiuiUserCredentialsSettings$Credential;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->doInBackground([Lcom/android/settings/MiuiUserCredentialsSettings$Credential;)[Lcom/android/settings/MiuiUserCredentialsSettings$Credential;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Lcom/android/settings/MiuiUserCredentialsSettings$Credential;)[Lcom/android/settings/MiuiUserCredentialsSettings$Credential;
    .locals 4

    .line 180
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 181
    invoke-virtual {v2}, Lcom/android/settings/MiuiUserCredentialsSettings$Credential;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-direct {p0, v2}, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->removeGrantsAndDelete(Lcom/android/settings/MiuiUserCredentialsSettings$Credential;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented for wifi certificates. This should not be reachable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 169
    check-cast p1, [Lcom/android/settings/MiuiUserCredentialsSettings$Credential;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->onPostExecute([Lcom/android/settings/MiuiUserCredentialsSettings$Credential;)V

    return-void
.end method

.method protected varargs onPostExecute([Lcom/android/settings/MiuiUserCredentialsSettings$Credential;)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/UserCredentialsSettings;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object p0, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/android/settings/UserCredentialsSettings;

    .line 214
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 215
    iget-object v2, v2, Lcom/android/settings/MiuiUserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/UserCredentialsSettings;->announceRemoval(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->refreshItems()V

    :cond_1
    return-void
.end method
