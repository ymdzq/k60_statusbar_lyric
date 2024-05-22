.class public final Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;


# instance fields
.field public final description:Ljava/lang/String;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->user:Landroid/os/UserHandle;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->title:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->subtitle:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->description:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->icon:Landroid/graphics/drawable/Drawable;

    .line 15
    return-void
    .line 17
.end method
