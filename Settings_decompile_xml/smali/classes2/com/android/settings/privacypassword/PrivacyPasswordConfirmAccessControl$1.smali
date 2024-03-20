.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$1;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;
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

    .line 132
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmPrivacyPasswordLockPatternView(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    return-void
.end method
