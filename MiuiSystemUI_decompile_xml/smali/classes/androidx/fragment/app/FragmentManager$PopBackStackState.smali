.class public final Landroidx/fragment/app/FragmentManager$PopBackStackState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# instance fields
.field public final mFlags:I

.field public final mId:I

.field public final synthetic this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    .line 7
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mFlags:I

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v1, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    .line 8
    if-gez v1, :cond_0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 24
    const/4 v3, 0x0

    .line 26
    iget v4, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    .line 27
    iget v5, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mFlags:I

    .line 29
    move-object v1, p1

    .line 31
    move-object v2, p2

    .line 32
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    .line 33
    move-result p0

    .line 36
    return p0
    .line 37
.end method
