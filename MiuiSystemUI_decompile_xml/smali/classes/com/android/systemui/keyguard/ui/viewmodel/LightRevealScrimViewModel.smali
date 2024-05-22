.class public final Lcom/android/systemui/keyguard/ui/viewmodel/LightRevealScrimViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final lightRevealEffect:Lkotlinx/coroutines/flow/SafeFlow;

.field public final revealAmount:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->lightRevealEffect:Lkotlinx/coroutines/flow/SafeFlow;

    .line 5
    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LightRevealScrimViewModel;->lightRevealEffect:Lkotlinx/coroutines/flow/SafeFlow;

    .line 7
    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->revealAmount:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$map$1;

    .line 9
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LightRevealScrimViewModel;->revealAmount:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$map$1;

    .line 11
    return-void
    .line 13
.end method
