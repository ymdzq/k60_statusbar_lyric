.class Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$1;
.super Ljava/lang/Object;
.source "PrivacyPasswordChooseAccessControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    return-void
.end method
