.class public final synthetic Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 2
    check-cast p1, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget p0, p0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 9
    iget-object p1, p1, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 11
    invoke-static {p1, p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->-$$Nest$mupdateTransitionState(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;F)V

    .line 13
    return-void
    .line 16
.end method
