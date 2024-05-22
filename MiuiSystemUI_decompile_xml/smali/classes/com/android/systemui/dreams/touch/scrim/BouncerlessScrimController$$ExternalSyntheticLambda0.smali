.class public final synthetic Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;->mCallbacks:Ljava/util/HashSet;

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 22
    check-cast p0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 24
    iget-object v0, v0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;->mCallbacks:Ljava/util/HashSet;

    .line 26
    new-instance v1, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;

    .line 28
    invoke-direct {v1, p0}, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
