.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$12;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->showFactoryResetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$12;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 902
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_0

    .line 903
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.android.settings"

    const-string v0, "com.android.settings.SubSettings"

    .line 904
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, ":android:show_fragment"

    const-string v0, "com.android.settings.MiuiMasterClear"

    .line 905
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$12;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 908
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "miui.intent.action.PRIVATE_SPACE_SETTING"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 909
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$12;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
