.class public final synthetic Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;->f$2:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;->f$2:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    invoke-static {v0, v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->$r8$lambda$CGeIsfYb_poCdigTgq1K6BZ4Ack(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V

    return-void
.end method
