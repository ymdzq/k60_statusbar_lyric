.class Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;
.super Ljava/lang/Object;
.source "PrivacyPasswordUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->verifyAccountCountDownTimer(Lmiui/security/SecurityManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$securityManager:Lmiui/security/SecurityManager;

.field final synthetic val$xiaomiAccount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/security/SecurityManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;->val$securityManager:Lmiui/security/SecurityManager;

    iput-object p2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;->val$xiaomiAccount:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;->val$securityManager:Lmiui/security/SecurityManager;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;->val$xiaomiAccount:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lmiui/security/SecurityManager;->removeAccessControlPass(Ljava/lang/String;)V

    return-void
.end method
