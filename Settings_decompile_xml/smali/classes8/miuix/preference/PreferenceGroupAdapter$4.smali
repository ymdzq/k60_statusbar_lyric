.class Lmiuix/preference/PreferenceGroupAdapter$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceGroupAdapter;->requestHighlight(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/PreferenceGroupAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;I)V
    .locals 0

    .line 475
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->val$position:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 478
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 480
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->val$position:I

    invoke-static {p2, v0}, Lmiuix/preference/PreferenceGroupAdapter;->access$302(Lmiuix/preference/PreferenceGroupAdapter;I)I

    .line 481
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$300(Lmiuix/preference/PreferenceGroupAdapter;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 482
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method
