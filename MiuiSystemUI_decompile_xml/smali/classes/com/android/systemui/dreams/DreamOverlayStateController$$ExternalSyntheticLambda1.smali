.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;

    .line 9
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 15
    return-void
    .line 18
.end method
