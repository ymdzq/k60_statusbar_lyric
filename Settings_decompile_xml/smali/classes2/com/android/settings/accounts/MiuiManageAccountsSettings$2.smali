.class Lcom/android/settings/accounts/MiuiManageAccountsSettings$2;
.super Ljava/lang/Object;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->-$$Nest$mturnOnSyncs(Lcom/android/settings/accounts/MiuiManageAccountsSettings;Z)V

    return-void
.end method
