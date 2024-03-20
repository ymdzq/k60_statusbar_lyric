.class Lcom/android/settings/PasswordUnlockStateController$1;
.super Ljava/lang/Object;
.source "PasswordUnlockStateController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PasswordUnlockStateController;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PasswordUnlockStateController;


# direct methods
.method constructor <init>(Lcom/android/settings/PasswordUnlockStateController;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/PasswordUnlockStateController$1;->this$0:Lcom/android/settings/PasswordUnlockStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/android/settings/PasswordUnlockStateController$1;->this$0:Lcom/android/settings/PasswordUnlockStateController;

    invoke-static {p1}, Lcom/android/settings/PasswordUnlockStateController;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/PasswordUnlockStateController;)Lcom/android/settings/FingerprintHelper;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/FingerprintHelper;->removeAllFingerprint(Lcom/android/settings/FingerprintRemoveCallback;)V

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/settings/PasswordUnlockStateController$1;->this$0:Lcom/android/settings/PasswordUnlockStateController;

    invoke-static {p0}, Lcom/android/settings/PasswordUnlockStateController;->-$$Nest$mcreateNewPassword(Lcom/android/settings/PasswordUnlockStateController;)V

    return-void
.end method
