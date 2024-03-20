.class public final Landroidx/fragment/app/FragmentController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity$HostCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final noteStateNotSaved()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 2
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    .line 6
    return-void
    .line 9
.end method
