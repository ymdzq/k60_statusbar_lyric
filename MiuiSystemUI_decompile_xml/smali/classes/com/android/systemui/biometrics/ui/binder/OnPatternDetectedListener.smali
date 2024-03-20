.class public final Lcom/android/systemui/biometrics/ui/binder/OnPatternDetectedListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# instance fields
.field public final onDetected:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/OnPatternDetectedListener;->onDetected:Lkotlin/jvm/functions/Function1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPatternCleared()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/OnPatternDetectedListener;->onDetected:Lkotlin/jvm/functions/Function1;

    .line 2
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
    .line 7
.end method

.method public final onPatternStart()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
