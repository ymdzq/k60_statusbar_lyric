.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const-string v1, "Callback must not be null. b/128895449"

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    return-void

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 30
    check-cast p0, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mComplications:Ljava/util/Collection;

    .line 52
    check-cast v0, Ljava/util/HashSet;

    .line 54
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 56
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {p0}, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;->onComplicationsChanged()V

    .line 63
    :goto_0
    return-void

    .line 66
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 67
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 69
    check-cast p0, Ljava/util/function/Consumer;

    .line 71
    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v0

    .line 78
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 88
    check-cast v1, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    .line 89
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 91
    goto :goto_2

    .line 94
    :cond_2
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 96
.end method
