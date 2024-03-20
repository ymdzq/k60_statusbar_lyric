.class Lcom/android/settings/MiuiSecuritySettings$3;
.super Ljava/lang/Object;
.source "MiuiSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecuritySettings;->handleSecurityLockToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecuritySettings;

.field final synthetic val$fingerprintHelper:Lcom/android/settings/FingerprintHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecuritySettings;Lcom/android/settings/FingerprintHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 410
    iput-object p1, p0, Lcom/android/settings/MiuiSecuritySettings$3;->this$0:Lcom/android/settings/MiuiSecuritySettings;

    iput-object p2, p0, Lcom/android/settings/MiuiSecuritySettings$3;->val$fingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/android/settings/MiuiSecuritySettings$3;->val$fingerprintHelper:Lcom/android/settings/FingerprintHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/FingerprintHelper;->removeAllFingerprint(Lcom/android/settings/FingerprintRemoveCallback;)V

    .line 417
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings$3;->this$0:Lcom/android/settings/MiuiSecuritySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiSecuritySettings;->-$$Nest$mcreateNewPassword(Lcom/android/settings/MiuiSecuritySettings;)V

    return-void
.end method
