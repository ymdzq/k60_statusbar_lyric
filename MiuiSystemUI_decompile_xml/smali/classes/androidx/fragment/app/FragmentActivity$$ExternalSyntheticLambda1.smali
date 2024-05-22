.class public final synthetic Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/compat/SlicePermissionActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/FragmentActivity;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/FragmentActivity;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    .line 10
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 14
    return-void

    .line 17
    :goto_0
    check-cast p1, Landroid/content/Intent;

    .line 18
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 22
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
