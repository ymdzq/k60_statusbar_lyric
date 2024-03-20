.class Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$3;
.super Ljava/lang/Object;
.source "PrivacyPasswordChooseAccessControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V
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

    .line 380
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$3;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 383
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$3;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->NeedToConfirm:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    return-void
.end method
