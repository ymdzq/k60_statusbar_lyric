.class public final synthetic Lmiuix/preference/PreferenceFragment$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$1$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lmiuix/preference/PreferenceFragment$1$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$1$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$1$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-static {v0, p0}, Lmiuix/preference/PreferenceFragment$1;->$r8$lambda$HIOuncMLOefxbYB3ZsDDKO8blnc(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
