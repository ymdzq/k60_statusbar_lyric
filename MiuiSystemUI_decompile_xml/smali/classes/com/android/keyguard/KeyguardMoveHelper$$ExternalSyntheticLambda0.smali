.class public final synthetic Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardMoveHelper;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardMoveHelper;Ljava/util/List;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    iput p3, p0, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    iput p4, p0, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;->f$3:F

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 4
    iget v2, p0, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;->f$2:F

    .line 6
    iget p0, p0, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;->f$3:F

    .line 8
    check-cast p1, Lcom/android/keyguard/widget/MobileView;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-boolean v3, p1, Lcom/android/keyguard/widget/MobileView;->needTranslation:Z

    .line 15
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x2

    .line 19
    iget-object v7, p1, Lcom/android/keyguard/widget/MobileView;->view:Landroid/view/View;

    .line 20
    if-eqz v3, :cond_0

    .line 22
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 24
    new-array v8, v6, [F

    .line 26
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    .line 28
    move-result v9

    .line 31
    aput v9, v8, v5

    .line 32
    aput v2, v8, v4

    .line 34
    invoke-static {v7, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 36
    move-result-object v2

    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    iget-boolean p1, p1, Lcom/android/keyguard/widget/MobileView;->needAlpha:Z

    .line 43
    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardMoveHelper;->isSignatureNeedHide(Landroid/view/View;)Z

    .line 47
    move-result p1

    .line 50
    const-string v0, "alpha"

    .line 51
    if-eqz p1, :cond_1

    .line 53
    new-array p0, v6, [F

    .line 55
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    .line 57
    move-result p1

    .line 60
    aput p1, p0, v5

    .line 61
    const/4 p1, 0x0

    .line 63
    aput p1, p0, v4

    .line 64
    invoke-static {v7, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 66
    move-result-object p0

    .line 69
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    new-array p1, v6, [F

    .line 74
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    .line 76
    move-result v2

    .line 79
    aput v2, p1, v5

    .line 80
    const/high16 v2, 0x3f800000    # 1.0f

    .line 82
    sub-float/2addr v2, p0

    .line 84
    aput v2, p1, v4

    .line 85
    invoke-static {v7, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 87
    move-result-object p0

    .line 90
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    :goto_0
    return-void
    .line 94
.end method
