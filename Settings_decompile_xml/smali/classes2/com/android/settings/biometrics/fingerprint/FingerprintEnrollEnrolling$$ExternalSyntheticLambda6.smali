.class public final synthetic Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

.field public final synthetic f$1:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda6;->f$1:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda6;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda6;->f$1:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda6;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->$r8$lambda$WR3_PU7I0S4hIYzIE9vCKWX93f4(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
