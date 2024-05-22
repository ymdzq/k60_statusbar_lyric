.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 5
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 2
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    invoke-static {v0, v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->$r8$lambda$IzuKuDWYdYF11cU1OF8-Qs9xLWM(Lcom/android/keyguard/KeyguardSecurityContainer;II)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method
