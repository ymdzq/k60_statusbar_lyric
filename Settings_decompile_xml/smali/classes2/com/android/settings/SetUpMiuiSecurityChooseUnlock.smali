.class public Lcom/android/settings/SetUpMiuiSecurityChooseUnlock;
.super Lcom/android/settings/MiuiSecurityChooseUnlock;
.source "SetUpMiuiSecurityChooseUnlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;,
        Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$InternalActivity;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 49
    const-class p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
