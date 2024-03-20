.class Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;
.super Ljava/lang/Object;
.source "MiuiAccountSettings.java"

# interfaces
.implements Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/MiuiAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterSyncStateClickListener"
.end annotation


# instance fields
.field private final mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/settings/accounts/MiuiAccountSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUserHandle(Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;)Landroid/os/UserHandle;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings;Landroid/os/UserHandle;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    iput-object p2, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/TogglePreference;Z)Z
    .locals 2

    .line 1194
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AccountSettings"

    const-string p1, "ignoring monkey\'s attempt to flip sync state"

    .line 1195
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1200
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    .line 1202
    sget v1, Lcom/android/settings/R$string;->data_usage_auto_sync_on_dialog_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1203
    sget v1, Lcom/android/settings/R$string;->data_usage_auto_sync_on_dialog:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 1205
    :cond_1
    sget v1, Lcom/android/settings/R$string;->data_usage_auto_sync_off_dialog_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1206
    sget v1, Lcom/android/settings/R$string;->data_usage_auto_sync_off_dialog:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1208
    :goto_0
    new-instance v1, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$1;-><init>(Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;Lcom/android/settings/widget/TogglePreference;Z)V

    const p1, 0x104000a    # @android:string/ok

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000    # @android:string/cancel

    const/4 p2, 0x0

    .line 1218
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1219
    new-instance p1, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$2;

    invoke-direct {p1, p0}, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener$2;-><init>(Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1225
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$fputmDialog(Lcom/android/settings/accounts/MiuiAccountSettings;Lmiuix/appcompat/app/AlertDialog;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method
