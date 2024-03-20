.class public Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "KeyguardPasswordSlidingGuideAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;
    }
.end annotation


# instance fields
.field private lottieList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/KeyguardPasswordSlidingGuideBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/KeyguardPasswordSlidingGuideBean;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;->lottieList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;->lottieList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 33
    instance-of v0, p1, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;

    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;->lottieList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;

    invoke-virtual {p1, p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;->bind(Lcom/android/settings/KeyguardPasswordSlidingGuideBean;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 27
    iget-object p2, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->guide_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    new-instance p2, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;-><init>(Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;Landroid/view/View;)V

    return-object p2
.end method
