.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 5
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 2
    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    invoke-static {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->$r8$lambda$KVaOirI361tVNgWszq7Qb4jQl8Y(Lcom/android/keyguard/KeyguardSecurityContainer;I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method
