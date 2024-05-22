.class public final synthetic Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field public final synthetic f$1:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 4
    iput-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;->f$1:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

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
    iget v0, p0, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 8
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;->f$1:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 10
    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 22
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 24
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 26
    invoke-virtual {v0, p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 28
    :cond_0
    return-void

    .line 31
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 32
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;->f$1:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 34
    iget-object v1, v0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 43
    check-cast v0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 52
.end method
