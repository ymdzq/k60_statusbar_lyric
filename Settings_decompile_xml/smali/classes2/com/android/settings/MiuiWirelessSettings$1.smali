.class Lcom/android/settings/MiuiWirelessSettings$1;
.super Ljava/lang/Object;
.source "MiuiWirelessSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiWirelessSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiWirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiWirelessSettings;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/settings/MiuiWirelessSettings$1;->this$0:Lcom/android/settings/MiuiWirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings$1;->this$0:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->-$$Nest$fgetmRecyclerView(Lcom/android/settings/MiuiWirelessSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/android/settings/MiuiWirelessSettings$1;->this$0:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiWirelessSettings;->-$$Nest$fgetmRecyclerView(Lcom/android/settings/MiuiWirelessSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
