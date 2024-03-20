.class Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$1;
.super Ljava/lang/Object;
.source "ContactsListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

.field final synthetic val$myViewHolder:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$1;->this$0:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    iput-object p2, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$1;->val$myViewHolder:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$1;->this$0:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-static {p1}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->-$$Nest$fgetmItemTouchHelper(Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$1;->val$myViewHolder:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
