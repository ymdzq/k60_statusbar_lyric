.class public final Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->applicationContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 13
    return-void
    .line 15
.end method
