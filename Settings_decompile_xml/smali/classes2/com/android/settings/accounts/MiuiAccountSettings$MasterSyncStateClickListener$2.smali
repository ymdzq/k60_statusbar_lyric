.class Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$2;
.super Ljava/lang/Object;
.source "MiuiAccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->onBeforeCheckedChanged(Lcom/android/settings/widget/TogglePreference;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;)V
    .locals 0

    .line 1219
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$2;->this$1:Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1222
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$2;->this$1:Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-static {p0}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$mupdateSyncPreference(Lcom/android/settings/accounts/MiuiAccountSettings;)V

    return-void
.end method
