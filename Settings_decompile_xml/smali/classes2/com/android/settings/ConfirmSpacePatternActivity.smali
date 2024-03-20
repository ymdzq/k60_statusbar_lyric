.class public Lcom/android/settings/ConfirmSpacePatternActivity;
.super Lcom/android/settings/ConfirmLockPattern$InternalActivity;
.source "ConfirmSpacePatternActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmSpacePatternActivity$ConfirmSpaceLockPatternFragment;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$InternalActivity;-><init>()V

    return-void
.end method

.method public static getExtraFragmentName()Ljava/lang/String;
    .locals 1

    .line 41
    const-class v0, Lcom/android/settings/ConfirmSpacePatternActivity$ConfirmSpaceLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 24
    const-class p0, Lcom/android/settings/ConfirmSpacePatternActivity$ConfirmSpaceLockPatternFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 30
    const-class p0, Lcom/android/settings/ConfirmSpacePatternActivity$ConfirmSpaceLockPatternFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/android/settings/BaseConfirmLockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    iput-object p0, p0, Lcom/android/settings/ConfirmSpacePatternActivity;->mContext:Landroid/content/Context;

    return-void
.end method
