.class public final synthetic Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/dreams/touch/scrim/ScrimManager;

.field public final synthetic f$1:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/touch/scrim/ScrimManager;Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/scrim/ScrimManager;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/scrim/ScrimManager;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mCallbacks:Ljava/util/HashSet;

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/scrim/ScrimManager;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mCallbacks:Ljava/util/HashSet;

    .line 22
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 24
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method
