.class Lcom/android/settings/display/FontAdapter$FontViewHolder$4;
.super Ljava/lang/Object;
.source "FontAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/FontAdapter$FontViewHolder;->setItemTouchListener(Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FontAdapter$FontViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FontAdapter$FontViewHolder;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder$4;->this$0:Lcom/android/settings/display/FontAdapter$FontViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 391
    iget-object p1, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder$4;->this$0:Lcom/android/settings/display/FontAdapter$FontViewHolder;

    invoke-static {p1}, Lcom/android/settings/display/FontAdapter$FontViewHolder;->-$$Nest$fgetmListener(Lcom/android/settings/display/FontAdapter$FontViewHolder;)Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder$4;->this$0:Lcom/android/settings/display/FontAdapter$FontViewHolder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;->onItemTouch(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method
