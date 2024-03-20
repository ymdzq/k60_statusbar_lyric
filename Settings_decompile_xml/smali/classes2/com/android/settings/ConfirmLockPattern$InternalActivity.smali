.class public Lcom/android/settings/ConfirmLockPattern$InternalActivity;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    return-void
.end method

.method public static getExtraFragmentName()Ljava/lang/String;
    .locals 1

    .line 116
    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
