.class Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;
.super Ljava/lang/Object;
.source "MiuiAccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$checked:Z

.field final synthetic val$togglePreference:Lcom/android/settings/widget/TogglePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;Lcom/android/settings/widget/TogglePreference;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1208
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->this$1:Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;

    iput-object p2, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->val$togglePreference:Lcom/android/settings/widget/TogglePreference;

    iput-boolean p3, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->val$checked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1211
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->val$togglePreference:Lcom/android/settings/widget/TogglePreference;

    iget-boolean p2, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->val$checked:Z

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/TogglePreference;->setCheckedInternal(Z)V

    .line 1212
    iget-boolean p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->val$checked:Z

    iget-object p2, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->this$1:Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;

    invoke-static {p2}, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->-$$Nest$fgetmUserHandle(Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;)Landroid/os/UserHandle;

    move-result-object p2

    .line 1213
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 1212
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1214
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->this$1:Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;

    iget-object p2, p1, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    iget-boolean v0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->val$checked:Z

    invoke-static {p1}, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->-$$Nest$fgetmUserHandle(Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$msyncOrCancel(Lcom/android/settings/accounts/MiuiAccountSettings;ZI)V

    .line 1215
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->this$1:Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;

    iget-object p1, p1, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-virtual {p1}, Lcom/android/settings/accounts/MiuiAccountSettings;->onSyncStateUpdated()V

    .line 1216
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->this$1:Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;

    iget-object p1, p1, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    iget-boolean p0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;->val$checked:Z

    invoke-static {p1, p0}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$mreportSimOnDevice(Lcom/android/settings/accounts/MiuiAccountSettings;Z)V

    return-void
.end method
