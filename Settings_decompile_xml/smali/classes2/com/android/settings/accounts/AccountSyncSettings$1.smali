.class Lcom/android/settings/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 124
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 125
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountSyncSettings;->-$$Nest$fgetmAccount(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v3, Lcom/android/settings/accounts/AccountSyncSettings$1$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iget-object v5, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 126
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method
