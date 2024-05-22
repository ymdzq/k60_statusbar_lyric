.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final alpha:Lkotlinx/coroutines/flow/StateFlow;

.field public final animateDozingTransitions:Lkotlinx/coroutines/flow/StateFlow;

.field public final clockPosition:Lkotlinx/coroutines/flow/StateFlow;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 5
    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 7
    iget-object v0, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->animateDozingTransitions:Lkotlinx/coroutines/flow/StateFlow;

    .line 11
    iget-object v0, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->bottomAreaAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 13
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->alpha:Lkotlinx/coroutines/flow/StateFlow;

    .line 15
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->clockPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->clockPosition:Lkotlinx/coroutines/flow/StateFlow;

    .line 19
    return-void
    .line 21
.end method
