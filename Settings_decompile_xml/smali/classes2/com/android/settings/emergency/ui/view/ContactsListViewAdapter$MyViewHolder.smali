.class Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactsListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;->this$0:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    .line 195
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
