.class public final synthetic Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;

.field public final synthetic f$1:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public final synthetic f$2:Lcom/android/internal/widget/LockPatternUtils;

.field public final synthetic f$3:Landroid/app/Activity;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;

    iput-object p2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$3:Landroid/app/Activity;

    iput-boolean p5, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IIJ)V
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$3:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;->f$4:Z

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->$r8$lambda$gxWfC5OO9Tnz2J2hkrUkEJFAI-A(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;ZIIJ)V

    return-void
.end method
