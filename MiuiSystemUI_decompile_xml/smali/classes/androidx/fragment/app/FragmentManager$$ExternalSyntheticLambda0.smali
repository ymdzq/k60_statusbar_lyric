.class public final synthetic Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentManager;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentManager;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    check-cast p1, Landroidx/core/app/MultiWindowModeChangedInfo;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-boolean p1, p1, Landroidx/core/app/MultiWindowModeChangedInfo;->mIsInMultiWindowMode:Z

    .line 19
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->dispatchMultiWindowModeChanged(ZZ)V

    .line 21
    :cond_0
    return-void

    .line 24
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result p1

    .line 36
    const/16 v0, 0x50

    .line 37
    if-ne p1, v0, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->dispatchLowMemory(Z)V

    .line 41
    :cond_1
    return-void

    .line 44
    :pswitch_2
    check-cast p1, Landroid/content/res/Configuration;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/FragmentManager;->dispatchConfigurationChanged(ZLandroid/content/res/Configuration;)V

    .line 53
    :cond_2
    return-void

    .line 56
    :goto_0
    check-cast p1, Landroidx/core/app/PictureInPictureModeChangedInfo;

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    .line 59
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    iget-boolean p1, p1, Landroidx/core/app/PictureInPictureModeChangedInfo;->mIsInPictureInPictureMode:Z

    .line 65
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->dispatchPictureInPictureModeChanged(ZZ)V

    .line 67
    :cond_3
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 72
.end method
