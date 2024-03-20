.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;
.super Landroid/os/AsyncTask;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->saveChosenPasswordnAndFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

.field final synthetic val$isNeedAddFace:Z

.field final synthetic val$isShowDialogToAddFingerprint:Z

.field final synthetic val$mChallenge:Z

.field final synthetic val$pin:Ljava/lang/String;

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public static synthetic $r8$lambda$0GbKYfD_F1AW8bIc7jtCd_HLHc0(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;ZIIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->lambda$doInBackground$4(Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;ZIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Keij04Lki2kIAVhcPADbd6rd0sc(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->lambda$doInBackground$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gxWfC5OO9Tnz2J2hkrUkEJFAI-A(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;ZIIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->lambda$doInBackground$2(Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;ZIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$t-1TxCCS1qDjGke-JL7QeYdqRro(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;[BZLcom/android/internal/widget/LockPatternUtils;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->lambda$doInBackground$1([BZLcom/android/internal/widget/LockPatternUtils;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$uo60PneQHLc2PBG3f50VSeSP9C0(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;[BZLcom/android/internal/widget/LockPatternUtils;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->lambda$doInBackground$3([BZLcom/android/internal/widget/LockPatternUtils;J)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;ZZZLcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$isShowDialogToAddFingerprint:Z

    iput-boolean p4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$isNeedAddFace:Z

    iput-boolean p5, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$mChallenge:Z

    iput-object p6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$doInBackground$0(Z)V
    .locals 1

    .line 969
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onPasswordSaved([BZ)V

    return-void
.end method

.method private synthetic lambda$doInBackground$1([BZLcom/android/internal/widget/LockPatternUtils;J)V
    .locals 0

    .line 979
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onPasswordSaved([BZ)V

    .line 980
    invoke-static {p3, p4, p5}, Lcom/android/settings/compat/LockPatternUtilsCompat;->removeGatekeeperPasswordHandle(Lcom/android/internal/widget/LockPatternUtils;J)V

    return-void
.end method

.method private synthetic lambda$doInBackground$2(Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;ZIIJ)V
    .locals 7

    .line 976
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide p5

    .line 977
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmUserIdToSetPassword(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v5

    move-object v0, p2

    move-wide v1, p5

    move-wide v3, p7

    invoke-static/range {v0 .. v5}, Lcom/android/settings/compat/LockPatternUtilsCompat;->verifyGatekeeperPasswordHandle(Lcom/android/internal/widget/LockPatternUtils;JJI)[B

    move-result-object v2

    .line 978
    new-instance p1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda3;

    move-object v0, p1

    move-object v1, p0

    move v3, p4

    move-object v4, p2

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;[BZLcom/android/internal/widget/LockPatternUtils;J)V

    invoke-virtual {p3, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$doInBackground$3([BZLcom/android/internal/widget/LockPatternUtils;J)V
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onPasswordSaved([BZ)V

    .line 989
    invoke-static {p3, p4, p5}, Lcom/android/settings/compat/LockPatternUtilsCompat;->removeGatekeeperPasswordHandle(Lcom/android/internal/widget/LockPatternUtils;J)V

    return-void
.end method

.method private synthetic lambda$doInBackground$4(Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;ZIIJ)V
    .locals 7

    .line 985
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide p5

    .line 986
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmUserIdToSetPassword(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v5

    move-object v0, p2

    move-wide v1, p5

    move-wide v3, p7

    invoke-static/range {v0 .. v5}, Lcom/android/settings/compat/LockPatternUtilsCompat;->verifyGatekeeperPasswordHandle(Lcom/android/internal/widget/LockPatternUtils;JJI)[B

    move-result-object v2

    .line 987
    new-instance p1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda4;

    move-object v0, p1

    move-object v1, p0

    move v3, p4

    move-object v4, p2

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;[BZLcom/android/internal/widget/LockPatternUtils;J)V

    invoke-virtual {p3, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 956
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->doInBackground([Ljava/lang/Void;)[B

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 11

    .line 960
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 p1, 0x0

    if-nez v4, :cond_0

    return-object p1

    .line 966
    :cond_0
    :try_start_0
    new-instance v5, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v5, v4}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmUserPassword(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmRequestedQuality(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v9

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmUserIdToSetPassword(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v10

    invoke-static/range {v5 .. v10}, Lcom/android/settings/compat/LockPatternUtilsCompat;->saveLockPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZLjava/lang/String;II)V

    .line 967
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$isShowDialogToAddFingerprint:Z

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$isNeedAddFace:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$mChallenge:Z

    if-nez v1, :cond_2

    .line 968
    new-instance v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;Z)V

    invoke-virtual {v4, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object p1

    .line 973
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmUserIdToSetPassword(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 974
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$isNeedAddFace:Z

    if-nez v0, :cond_3

    .line 975
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object v6

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmUserIdToSetPassword(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v7

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$isShowDialogToAddFingerprint:Z

    new-instance v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;Z)V

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/FingerprintHelper;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_1

    .line 984
    :cond_3
    invoke-static {v4}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object v6

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->val$isShowDialogToAddFingerprint:Z

    new-instance v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;Z)V

    invoke-virtual {v6, v7}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->generateFaceEnrollChallenge(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "ChooseLockPassword"

    const-string v1, "critical: no token returned for known good pattern"

    .line 994
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 956
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$7;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 0

    .line 0
    return-void
.end method
